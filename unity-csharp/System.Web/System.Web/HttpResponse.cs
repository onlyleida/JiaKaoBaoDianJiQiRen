using System.Collections;
using System.Collections.Specialized;
using System.IO;
using System.Runtime.CompilerServices;
using System.Security.Permissions;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Caching;
using System.Web.Configuration;
using System.Web.Hosting;
using System.Web.Routing;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.Util;
using Unity;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpResponse
{
	internal HttpWorkerRequest WorkerRequest;

	internal HttpResponseStream output_stream;

	internal bool buffer = true;

	private ArrayList fileDependencies;

	private HttpContext context;

	private TextWriter writer;

	private HttpCachePolicy cache_policy;

	private Encoding encoding;

	private HttpCookieCollection cookies;

	private int status_code = 200;

	private string status_description = "OK";

	private string content_type = "text/html";

	private string charset;

	private bool charset_set;

	private CachedRawResponse cached_response;

	private string user_cache_control = "private";

	private string redirect_location;

	private string version_header;

	private bool version_header_checked;

	private long content_length = -1L;

	private HttpHeaderCollection headers;

	private bool headers_sent;

	private NameValueCollection cached_headers;

	private string transfer_encoding;

	internal bool use_chunked;

	private bool closed;

	private bool completed;

	internal bool suppress_content;

	private string app_path_mod;

	private bool is_request_being_redirected;

	private Encoding headerEncoding;

	private const int bufLen = 65535;

	internal string VersionHeader
	{
		get
		{
			if (!version_header_checked && version_header == null)
			{
				version_header_checked = true;
				HttpRuntimeSection section = HttpRuntime.Section;
				if (section != null && section.EnableVersionHeader)
				{
					version_header = Environment.Version.ToString(3);
				}
			}
			return version_header;
		}
	}

	internal HttpContext Context
	{
		get
		{
			return context;
		}
		set
		{
			context = value;
		}
	}

	internal string[] FileDependencies
	{
		get
		{
			if (fileDependencies == null || fileDependencies.Count == 0)
			{
				return new string[0];
			}
			return (string[])fileDependencies.ToArray(typeof(string));
		}
	}

	private ArrayList FileDependenciesArray
	{
		get
		{
			if (fileDependencies == null)
			{
				fileDependencies = new ArrayList();
			}
			return fileDependencies;
		}
	}

	public bool Buffer
	{
		get
		{
			return buffer;
		}
		set
		{
			buffer = value;
		}
	}

	public bool BufferOutput
	{
		get
		{
			return buffer;
		}
		set
		{
			buffer = value;
		}
	}

	public Encoding ContentEncoding
	{
		get
		{
			if (encoding == null)
			{
				if (context != null)
				{
					string parameter = HttpRequest.GetParameter(context.Request.ContentType, "; charset=");
					if (parameter != null)
					{
						try
						{
							encoding = Encoding.GetEncoding(parameter);
						}
						catch
						{
						}
					}
				}
				if (encoding == null)
				{
					encoding = WebEncoding.ResponseEncoding;
				}
			}
			return encoding;
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentException("ContentEncoding can not be null");
			}
			encoding = value;
			if (writer is HttpWriter httpWriter)
			{
				httpWriter.SetEncoding(encoding);
			}
		}
	}

	public string ContentType
	{
		get
		{
			return content_type;
		}
		set
		{
			content_type = value;
		}
	}

	public string Charset
	{
		get
		{
			if (charset == null)
			{
				charset = ContentEncoding.WebName;
			}
			return charset;
		}
		set
		{
			charset_set = true;
			charset = value;
		}
	}

	public HttpCookieCollection Cookies
	{
		get
		{
			if (cookies == null)
			{
				cookies = new HttpCookieCollection(auto_fill: true, read_only: false);
			}
			return cookies;
		}
	}

	public int Expires
	{
		get
		{
			if (cache_policy == null)
			{
				return 0;
			}
			return cache_policy.ExpireMinutes();
		}
		set
		{
			Cache.SetExpires(DateTime.Now + new TimeSpan(0, value, 0));
		}
	}

	public DateTime ExpiresAbsolute
	{
		get
		{
			return Cache.Expires;
		}
		set
		{
			Cache.SetExpires(value);
		}
	}

	public Stream Filter
	{
		get
		{
			if (WorkerRequest == null)
			{
				return null;
			}
			return output_stream.Filter;
		}
		set
		{
			output_stream.Filter = value;
		}
	}

	public Encoding HeaderEncoding
	{
		get
		{
			if (headerEncoding == null)
			{
				if (!(WebConfigurationManager.SafeGetSection("system.web/globalization", typeof(GlobalizationSection)) is GlobalizationSection globalizationSection))
				{
					headerEncoding = Encoding.UTF8;
				}
				else
				{
					headerEncoding = globalizationSection.ResponseHeaderEncoding;
					if (headerEncoding == Encoding.Unicode)
					{
						throw new HttpException("HeaderEncoding must not be Unicode");
					}
				}
			}
			return headerEncoding;
		}
		set
		{
			if (headers_sent)
			{
				throw new HttpException("headers have already been sent");
			}
			if (value == null)
			{
				throw new ArgumentNullException("HeaderEncoding");
			}
			if (value == Encoding.Unicode)
			{
				throw new HttpException("HeaderEncoding must not be Unicode");
			}
			headerEncoding = value;
		}
	}

	public NameValueCollection Headers
	{
		get
		{
			if (headers == null)
			{
				headers = new HttpHeaderCollection();
			}
			return headers;
		}
	}

	public bool IsClientConnected
	{
		get
		{
			if (WorkerRequest == null)
			{
				return true;
			}
			return WorkerRequest.IsClientConnected();
		}
	}

	public bool IsRequestBeingRedirected => is_request_being_redirected;

	public TextWriter Output
	{
		get
		{
			return writer;
		}
		set
		{
			writer = value;
		}
	}

	public Stream OutputStream => output_stream;

	public string RedirectLocation
	{
		get
		{
			return redirect_location;
		}
		set
		{
			redirect_location = value;
		}
	}

	public string Status
	{
		get
		{
			return status_code + " " + StatusDescription;
		}
		set
		{
			int num = value.IndexOf(' ');
			if (num == -1)
			{
				throw new HttpException("Invalid format for the Status property");
			}
			if (!int.TryParse(value.Substring(0, num), out status_code))
			{
				throw new HttpException("Invalid format for the Status property");
			}
			status_description = value.Substring(num + 1);
		}
	}

	public int SubStatusCode { get; set; }

	public bool SuppressFormsAuthenticationRedirect { get; set; }

	public bool TrySkipIisCustomErrors { get; set; }

	public int StatusCode
	{
		get
		{
			return status_code;
		}
		set
		{
			if (headers_sent)
			{
				throw new HttpException("headers have already been sent");
			}
			status_code = value;
			status_description = null;
		}
	}

	public string StatusDescription
	{
		get
		{
			if (status_description == null)
			{
				status_description = HttpWorkerRequest.GetStatusDescription(status_code);
			}
			return status_description;
		}
		set
		{
			if (headers_sent)
			{
				throw new HttpException("headers have already been sent");
			}
			status_description = value;
		}
	}

	public bool SuppressContent
	{
		get
		{
			return suppress_content;
		}
		set
		{
			suppress_content = value;
		}
	}

	internal bool HeadersSent => headers_sent;

	internal bool IsCached
	{
		get
		{
			return cached_response != null;
		}
		set
		{
			if (value)
			{
				cached_response = new CachedRawResponse(cache_policy);
			}
			else
			{
				cached_response = null;
			}
		}
	}

	public HttpCachePolicy Cache
	{
		get
		{
			if (cache_policy == null)
			{
				cache_policy = new HttpCachePolicy();
			}
			return cache_policy;
		}
	}

	public string CacheControl
	{
		get
		{
			if (user_cache_control == null)
			{
				return "private";
			}
			return user_cache_control;
		}
		set
		{
			if (value == null || value == "")
			{
				Cache.SetCacheability(HttpCacheability.NoCache);
				user_cache_control = null;
				return;
			}
			if (string.Compare(value, "public", ignoreCase: true, Helpers.InvariantCulture) == 0)
			{
				Cache.SetCacheability(HttpCacheability.Public);
				user_cache_control = "public";
				return;
			}
			if (string.Compare(value, "private", ignoreCase: true, Helpers.InvariantCulture) == 0)
			{
				Cache.SetCacheability(HttpCacheability.Private);
				user_cache_control = "private";
				return;
			}
			if (string.Compare(value, "no-cache", ignoreCase: true, Helpers.InvariantCulture) == 0)
			{
				Cache.SetCacheability(HttpCacheability.NoCache);
				user_cache_control = "no-cache";
				return;
			}
			throw new ArgumentException("CacheControl property only allows `public', `private' or no-cache, for different uses, use Response.AppendHeader");
		}
	}

	public CancellationToken ClientDisconnectedToken
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public bool HeadersWritten
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public bool SupportsAsyncFlush
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public bool SuppressDefaultCacheControlHeader
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	internal HttpResponse()
	{
		output_stream = new HttpResponseStream(this);
		writer = new HttpWriter(this);
	}

	public HttpResponse(TextWriter writer)
		: this()
	{
		this.writer = writer;
	}

	internal HttpResponse(HttpWorkerRequest worker_request, HttpContext context)
		: this()
	{
		WorkerRequest = worker_request;
		this.context = context;
		if (worker_request != null && worker_request.GetHttpVersion() == "HTTP/1.1")
		{
			string serverVariable = worker_request.GetServerVariable("GATEWAY_INTERFACE");
			use_chunked = string.IsNullOrEmpty(serverVariable) || !serverVariable.StartsWith("cgi", StringComparison.OrdinalIgnoreCase);
		}
		else
		{
			use_chunked = false;
		}
		writer = new HttpWriter(this);
	}

	internal TextWriter SetTextWriter(TextWriter writer)
	{
		TextWriter result = this.writer;
		this.writer = writer;
		return result;
	}

	[MonoTODO("Not implemented")]
	public void AddCacheDependency(params CacheDependency[] dependencies)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public void AddCacheItemDependencies(string[] cacheKeys)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Currently does nothing")]
	public void AddCacheItemDependencies(ArrayList cacheKeys)
	{
	}

	[MonoTODO("Currently does nothing")]
	public void AddCacheItemDependency(string cacheKey)
	{
	}

	public void AddFileDependencies(ArrayList filenames)
	{
		if (filenames != null && filenames.Count != 0)
		{
			FileDependenciesArray.AddRange(filenames);
		}
	}

	public void AddFileDependencies(string[] filenames)
	{
		if (filenames != null && filenames.Length != 0)
		{
			FileDependenciesArray.AddRange(filenames);
		}
	}

	public void AddFileDependency(string filename)
	{
		if (filename != null && !(filename == string.Empty))
		{
			FileDependenciesArray.Add(filename);
		}
	}

	public void AddHeader(string name, string value)
	{
		AppendHeader(name, value);
	}

	public void AppendCookie(HttpCookie cookie)
	{
		Cookies.Add(cookie);
	}

	public void AppendHeader(string name, string value)
	{
		if (headers_sent)
		{
			throw new HttpException("Headers have been already sent");
		}
		if (string.Compare(name, "content-length", StringComparison.OrdinalIgnoreCase) == 0)
		{
			content_length = (long)ulong.Parse(value);
			use_chunked = false;
		}
		else if (string.Compare(name, "content-type", StringComparison.OrdinalIgnoreCase) == 0)
		{
			ContentType = value;
		}
		else if (string.Compare(name, "transfer-encoding", StringComparison.OrdinalIgnoreCase) == 0)
		{
			transfer_encoding = value;
			use_chunked = false;
		}
		else if (string.Compare(name, "cache-control", StringComparison.OrdinalIgnoreCase) == 0)
		{
			user_cache_control = value;
		}
		else
		{
			Headers.Add(name, value);
		}
	}

	[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.Medium)]
	public void AppendToLog(string param)
	{
		Console.Write("System.Web: ");
		Console.WriteLine(param);
	}

	public string ApplyAppPathModifier(string virtualPath)
	{
		if (virtualPath == null || context == null)
		{
			return null;
		}
		if (virtualPath.Length == 0)
		{
			return context.Request.RootVirtualDir;
		}
		if (UrlUtils.IsRelativeUrl(virtualPath))
		{
			virtualPath = UrlUtils.Combine(context.Request.RootVirtualDir, virtualPath);
		}
		else if (UrlUtils.IsRooted(virtualPath))
		{
			virtualPath = UrlUtils.Canonic(virtualPath);
		}
		SessionStateSection config = WebConfigurationManager.GetWebApplicationSection("system.web/sessionState") as SessionStateSection;
		if (!SessionStateModule.IsCookieLess(context, config))
		{
			return virtualPath;
		}
		if (app_path_mod != null && virtualPath.IndexOf(app_path_mod) < 0)
		{
			if (UrlUtils.HasSessionId(virtualPath))
			{
				virtualPath = UrlUtils.RemoveSessionId(VirtualPathUtility.GetDirectory(virtualPath), virtualPath);
			}
			return UrlUtils.InsertSessionId(app_path_mod, virtualPath);
		}
		return virtualPath;
	}

	public void BinaryWrite(byte[] buffer)
	{
		output_stream.Write(buffer, 0, buffer.Length);
	}

	internal void BinaryWrite(byte[] buffer, int start, int len)
	{
		output_stream.Write(buffer, start, len);
	}

	public void Clear()
	{
		ClearContent();
	}

	public void ClearContent()
	{
		output_stream.Clear();
		content_length = -1L;
	}

	public void ClearHeaders()
	{
		if (headers_sent)
		{
			throw new HttpException("headers have been already sent");
		}
		content_length = -1L;
		content_type = "text/html";
		transfer_encoding = null;
		user_cache_control = "private";
		if (cache_policy != null)
		{
			cache_policy.Cacheability = HttpCacheability.Private;
		}
		if (headers != null)
		{
			headers.Clear();
		}
	}

	public void Close()
	{
		if (!closed)
		{
			if (WorkerRequest != null)
			{
				WorkerRequest.CloseConnection();
			}
			closed = true;
		}
	}

	public void DisableKernelCache()
	{
	}

	public void End()
	{
		if (context != null)
		{
			if (context.TimeoutPossible)
			{
				Thread.CurrentThread.Abort(FlagEnd.Value);
			}
			else
			{
				context.ApplicationInstance?.CompleteRequest();
			}
		}
	}

	private void AddHeadersNoCache(NameValueCollection write_headers, bool final_flush)
	{
		if (use_chunked)
		{
			write_headers.Add("Transfer-Encoding", "chunked");
		}
		else if (transfer_encoding != null)
		{
			write_headers.Add("Transfer-Encoding", transfer_encoding);
		}
		if (redirect_location != null)
		{
			write_headers.Add("Location", redirect_location);
		}
		string versionHeader = VersionHeader;
		if (versionHeader != null)
		{
			write_headers.Add("X-AspNet-Version", versionHeader);
		}
		if (content_length >= 0)
		{
			write_headers.Add(HttpWorkerRequest.GetKnownResponseHeaderName(11), content_length.ToString(Helpers.InvariantCulture));
		}
		else if (BufferOutput)
		{
			if (final_flush)
			{
				content_length = output_stream.total;
				write_headers.Add(HttpWorkerRequest.GetKnownResponseHeaderName(11), content_length.ToString(Helpers.InvariantCulture));
			}
			else if (use_chunked)
			{
				write_headers.Add(HttpWorkerRequest.GetKnownResponseHeaderName(1), "close");
			}
		}
		else if (use_chunked)
		{
			write_headers.Add(HttpWorkerRequest.GetKnownResponseHeaderName(1), "close");
		}
		if (cache_policy != null)
		{
			cache_policy.SetHeaders(this, headers);
		}
		else
		{
			write_headers.Add("Cache-Control", CacheControl);
		}
		if (content_type != null)
		{
			string text = content_type;
			if ((charset_set || text == "text/plain" || text == "text/html") && text.IndexOf("charset=") == -1 && !string.IsNullOrEmpty(charset))
			{
				text = text + "; charset=" + charset;
			}
			write_headers.Add("Content-Type", text);
		}
		if (cookies != null && cookies.Count != 0)
		{
			int count = cookies.Count;
			for (int i = 0; i < count; i++)
			{
				write_headers.Add("Set-Cookie", cookies.Get(i).GetCookieHeaderValue());
			}
		}
	}

	internal void WriteHeaders(bool final_flush)
	{
		if (headers_sent)
		{
			return;
		}
		if (context != null)
		{
			context.ApplicationInstance?.TriggerPreSendRequestHeaders();
		}
		headers_sent = true;
		if (cached_response != null)
		{
			cached_response.SetHeaders(headers);
		}
		NameValueCollection nameValueCollection;
		if (cached_headers != null)
		{
			nameValueCollection = cached_headers;
		}
		else
		{
			nameValueCollection = Headers;
			AddHeadersNoCache(nameValueCollection, final_flush);
		}
		if (WorkerRequest != null)
		{
			WorkerRequest.SendStatus(status_code, StatusDescription);
		}
		if (WorkerRequest == null)
		{
			return;
		}
		for (int i = 0; i < nameValueCollection.Count; i++)
		{
			string key = nameValueCollection.GetKey(i);
			int knownResponseHeaderIndex = HttpWorkerRequest.GetKnownResponseHeaderIndex(key);
			string[] values = nameValueCollection.GetValues(i);
			if (values == null)
			{
				continue;
			}
			string[] array = values;
			foreach (string value in array)
			{
				if (knownResponseHeaderIndex > -1)
				{
					WorkerRequest.SendKnownResponseHeader(knownResponseHeaderIndex, value);
				}
				else
				{
					WorkerRequest.SendUnknownResponseHeader(key, value);
				}
			}
		}
	}

	internal void DoFilter(bool close)
	{
		if (output_stream.HaveFilter && context != null && context.Error == null)
		{
			output_stream.ApplyFilter(close);
		}
	}

	internal void Flush(bool final_flush)
	{
		if (completed)
		{
			throw new HttpException("Server cannot flush a completed response");
		}
		DoFilter(final_flush);
		if (!headers_sent && (final_flush || status_code != 200))
		{
			use_chunked = false;
		}
		bool flag = context != null && context.Request.HttpMethod == "HEAD";
		if (suppress_content | flag)
		{
			if (!headers_sent)
			{
				WriteHeaders(final_flush: true);
			}
			output_stream.Clear();
			if (WorkerRequest != null)
			{
				output_stream.Flush(WorkerRequest, final_flush: true);
			}
			completed = true;
			return;
		}
		completed = final_flush;
		if (!headers_sent)
		{
			WriteHeaders(final_flush);
		}
		if (context != null)
		{
			context.ApplicationInstance?.TriggerPreSendRequestContent();
		}
		if (IsCached)
		{
			cached_response.SetData(output_stream.GetData());
		}
		if (WorkerRequest != null)
		{
			output_stream.Flush(WorkerRequest, final_flush);
		}
	}

	public void Flush()
	{
		Flush(final_flush: false);
	}

	public void Pics(string value)
	{
		AppendHeader("PICS-Label", value);
	}

	private void Redirect(string url, bool endResponse, int code)
	{
		if (url == null)
		{
			throw new ArgumentNullException("url");
		}
		if (headers_sent)
		{
			throw new HttpException("Headers have already been sent");
		}
		if (url.IndexOf('\n') != -1)
		{
			throw new ArgumentException("Redirect URI cannot contain newline characters.", "url");
		}
		is_request_being_redirected = true;
		ClearHeaders();
		ClearContent();
		StatusCode = code;
		url = ApplyAppPathModifier(url);
		if ((!StrUtils.StartsWith(url, "http:", ignore_case: true) && !StrUtils.StartsWith(url, "https:", ignore_case: true) && !StrUtils.StartsWith(url, "file:", ignore_case: true) && !StrUtils.StartsWith(url, "ftp:", ignore_case: true)) || 1 == 0)
		{
			HttpRuntimeSection section = HttpRuntime.Section;
			if (section != null && section.UseFullyQualifiedRedirectUrl)
			{
				UriBuilder uriBuilder = new UriBuilder(context.Request.Url);
				int num = url.IndexOf('?');
				if (num == -1)
				{
					uriBuilder.Path = url;
					uriBuilder.Query = null;
				}
				else
				{
					uriBuilder.Path = url.Substring(0, num);
					uriBuilder.Query = url.Substring(num + 1);
				}
				uriBuilder.Fragment = null;
				uriBuilder.Password = null;
				uriBuilder.UserName = null;
				url = uriBuilder.Uri.ToString();
			}
		}
		redirect_location = url;
		Write("<html><head><title>Object moved</title></head><body>\r\n");
		Write("<h2>Object moved to <a href=\"" + url + "\">here</a></h2>\r\n");
		Write("</body><html>\r\n");
		if (endResponse)
		{
			End();
		}
		is_request_being_redirected = false;
	}

	public void Redirect(string url)
	{
		Redirect(url, endResponse: true);
	}

	public void Redirect(string url, bool endResponse)
	{
		Redirect(url, endResponse, 302);
	}

	public void RedirectPermanent(string url)
	{
		RedirectPermanent(url, endResponse: true);
	}

	public void RedirectPermanent(string url, bool endResponse)
	{
		Redirect(url, endResponse, 301);
	}

	public void RedirectToRoute(object routeValues)
	{
		RedirectToRoute("RedirectToRoute", null, new RouteValueDictionary(routeValues), 302, endResponse: true);
	}

	public void RedirectToRoute(RouteValueDictionary routeValues)
	{
		RedirectToRoute("RedirectToRoute", null, routeValues, 302, endResponse: true);
	}

	public void RedirectToRoute(string routeName)
	{
		RedirectToRoute("RedirectToRoute", routeName, null, 302, endResponse: true);
	}

	public void RedirectToRoute(string routeName, object routeValues)
	{
		RedirectToRoute("RedirectToRoute", routeName, new RouteValueDictionary(routeValues), 302, endResponse: true);
	}

	public void RedirectToRoute(string routeName, RouteValueDictionary routeValues)
	{
		RedirectToRoute("RedirectToRoute", routeName, routeValues, 302, endResponse: true);
	}

	public void RedirectToRoutePermanent(object routeValues)
	{
		RedirectToRoute("RedirectToRoutePermanent", null, new RouteValueDictionary(routeValues), 301, endResponse: false);
	}

	public void RedirectToRoutePermanent(RouteValueDictionary routeValues)
	{
		RedirectToRoute("RedirectToRoutePermanent", null, routeValues, 301, endResponse: false);
	}

	public void RedirectToRoutePermanent(string routeName)
	{
		RedirectToRoute("RedirectToRoutePermanent", routeName, null, 301, endResponse: false);
	}

	public void RedirectToRoutePermanent(string routeName, object routeValues)
	{
		RedirectToRoute("RedirectToRoutePermanent", routeName, new RouteValueDictionary(routeValues), 301, endResponse: false);
	}

	public void RedirectToRoutePermanent(string routeName, RouteValueDictionary routeValues)
	{
		RedirectToRoute("RedirectToRoutePermanent", routeName, routeValues, 301, endResponse: false);
	}

	private void RedirectToRoute(string callerName, string routeName, RouteValueDictionary routeValues, int redirectCode, bool endResponse)
	{
		HttpRequest httpRequest = (context ?? HttpContext.Current)?.Request;
		if (httpRequest == null)
		{
			throw new NullReferenceException();
		}
		string text = RouteTable.Routes.GetVirtualPath(httpRequest.RequestContext, routeName, routeValues)?.VirtualPath;
		if (string.IsNullOrEmpty(text))
		{
			throw new InvalidOperationException("No matching route found for RedirectToRoute");
		}
		Redirect(text, endResponse: true, redirectCode);
	}

	public static void RemoveOutputCacheItem(string path, string providerName)
	{
		if (path == null)
		{
			throw new ArgumentNullException("path");
		}
		if (path.Length > 0 && path[0] != '/')
		{
			throw new ArgumentException("Invalid path for HttpResponse.RemoveOutputCacheItem: '" + path + "'. An absolute virtual path is expected");
		}
		OutputCache.RemoveFromProvider(path, providerName);
	}

	public static void RemoveOutputCacheItem(string path)
	{
		if (path == null)
		{
			throw new ArgumentNullException("path");
		}
		if (path.Length != 0)
		{
			if (path[0] != '/')
			{
				throw new ArgumentException("'" + path + "' is not an absolute virtual path.");
			}
			RemoveOutputCacheItem(path, OutputCache.DefaultProviderName);
		}
	}

	public void SetCookie(HttpCookie cookie)
	{
		AppendCookie(cookie);
	}

	public void Write(char ch)
	{
		(Output ?? throw new NullReferenceException(".NET 4.0 emulation. A null value was found where an object was required.")).Write(ch);
	}

	public void Write(object obj)
	{
		TextWriter output = Output;
		if (output == null)
		{
			throw new NullReferenceException(".NET 4.0 emulation. A null value was found where an object was required.");
		}
		if (obj != null)
		{
			output.Write(obj.ToString());
		}
	}

	public void Write(string s)
	{
		(Output ?? throw new NullReferenceException(".NET 4.0 emulation. A null value was found where an object was required.")).Write(s);
	}

	public void Write(char[] buffer, int index, int count)
	{
		(Output ?? throw new NullReferenceException(".NET 4.0 emulation. A null value was found where an object was required.")).Write(buffer, index, count);
	}

	private bool IsFileSystemDirSeparator(char ch)
	{
		if (ch != '\\')
		{
			return ch == '/';
		}
		return true;
	}

	private string GetNormalizedFileName(string fn)
	{
		if (string.IsNullOrEmpty(fn))
		{
			return fn;
		}
		int length = fn.Length;
		if (length >= 3 && fn[1] == ':' && IsFileSystemDirSeparator(fn[2]))
		{
			return Path.GetFullPath(fn);
		}
		bool flag = IsFileSystemDirSeparator(fn[0]);
		if (((length >= 2) & flag) && IsFileSystemDirSeparator(fn[1]))
		{
			return Path.GetFullPath(fn);
		}
		if (!flag)
		{
			HttpRequest httpRequest = (context ?? HttpContext.Current)?.Request;
			if (httpRequest != null)
			{
				return httpRequest.MapPath(fn);
			}
		}
		return fn;
	}

	internal void WriteFile(FileStream fs, long offset, long size)
	{
		byte[] array = new byte[32768];
		if (offset != 0L)
		{
			fs.Position = offset;
		}
		long num = size;
		int num2;
		while (num > 0 && (num2 = fs.Read(array, 0, (int)Math.Min(num, 32768L))) != 0)
		{
			num -= num2;
			output_stream.Write(array, 0, num2);
		}
	}

	public void WriteFile(string filename)
	{
		WriteFile(filename, readIntoMemory: false);
	}

	public void WriteFile(string filename, bool readIntoMemory)
	{
		if (filename == null)
		{
			throw new ArgumentNullException("filename");
		}
		string normalizedFileName = GetNormalizedFileName(filename);
		if (readIntoMemory)
		{
			using FileStream fileStream = File.OpenRead(normalizedFileName);
			WriteFile(fileStream, 0L, fileStream.Length);
		}
		else
		{
			FileInfo fileInfo = new FileInfo(normalizedFileName);
			output_stream.WriteFile(normalizedFileName, 0L, fileInfo.Length);
		}
		if (!buffer)
		{
			output_stream.ApplyFilter(close: false);
			Flush();
		}
	}

	public void WriteFile(IntPtr fileHandle, long offset, long size)
	{
		if (offset < 0)
		{
			throw new ArgumentNullException("offset can not be negative");
		}
		if (size < 0)
		{
			throw new ArgumentNullException("size can not be negative");
		}
		if (size != 0L)
		{
			using (FileStream fs = new FileStream(fileHandle, FileAccess.Read))
			{
				WriteFile(fs, offset, size);
			}
			if (!buffer)
			{
				output_stream.ApplyFilter(close: false);
				Flush();
			}
		}
	}

	public void WriteFile(string filename, long offset, long size)
	{
		if (filename == null)
		{
			throw new ArgumentNullException("filename");
		}
		if (offset < 0)
		{
			throw new ArgumentNullException("offset can not be negative");
		}
		if (size < 0)
		{
			throw new ArgumentNullException("size can not be negative");
		}
		if (size != 0L)
		{
			FileStream fs = File.OpenRead(filename);
			WriteFile(fs, offset, size);
			if (!buffer)
			{
				output_stream.ApplyFilter(close: false);
				Flush();
			}
		}
	}

	public void WriteSubstitution(HttpResponseSubstitutionCallback callback)
	{
		if (callback == null)
		{
			throw new NullReferenceException();
		}
		object target = callback.Target;
		if (target != null && target.GetType() == typeof(Control))
		{
			throw new ArgumentException("callback");
		}
		string s = callback(context);
		if (!IsCached)
		{
			Write(s);
			return;
		}
		Cache.Cacheability = HttpCacheability.Server;
		Flush();
		if (WorkerRequest == null)
		{
			Write(s);
		}
		else
		{
			byte[] bytes = WebEncoding.ResponseEncoding.GetBytes(s);
			WorkerRequest.SendResponseFromMemory(bytes, bytes.Length);
		}
		cached_response.SetData(callback);
	}

	public void TransmitFile(string filename)
	{
		if (filename == null)
		{
			throw new ArgumentNullException("filename");
		}
		TransmitFile(filename, final_flush: false);
	}

	internal void TransmitFile(string filename, bool final_flush)
	{
		FileInfo fileInfo = new FileInfo(filename);
		using (fileInfo.OpenRead())
		{
		}
		output_stream.WriteFile(filename, 0L, fileInfo.Length);
		output_stream.ApplyFilter(final_flush);
		Flush(final_flush);
	}

	public void TransmitFile(string filename, long offset, long length)
	{
		output_stream.WriteFile(filename, offset, length);
		output_stream.ApplyFilter(close: false);
		Flush(final_flush: false);
	}

	internal void TransmitFile(VirtualFile vf)
	{
		TransmitFile(vf, final_flush: false);
	}

	internal void TransmitFile(VirtualFile vf, bool final_flush)
	{
		if (vf == null)
		{
			throw new ArgumentNullException("vf");
		}
		if (vf is DefaultVirtualFile)
		{
			TransmitFile(HostingEnvironment.MapPath(vf.VirtualPath), final_flush);
			return;
		}
		byte[] array = new byte[65535];
		using Stream stream = vf.Open();
		int count;
		while ((count = stream.Read(array, 0, 65535)) > 0)
		{
			output_stream.Write(array, 0, count);
			output_stream.ApplyFilter(final_flush);
			Flush(final_flush: false);
		}
		if (final_flush)
		{
			Flush(final_flush: true);
		}
	}

	internal void SetAppPathModifier(string app_modifier)
	{
		app_path_mod = app_modifier;
	}

	internal void SetCachedHeaders(NameValueCollection headers)
	{
		cached_headers = headers;
	}

	internal CachedRawResponse GetCachedResponse()
	{
		if (cached_response != null)
		{
			cached_response.StatusCode = StatusCode;
			cached_response.StatusDescription = StatusDescription;
		}
		return cached_response;
	}

	internal int GetOutputByteCount()
	{
		return output_stream.GetTotalLength();
	}

	internal void ReleaseResources()
	{
		if (output_stream != null)
		{
			output_stream.ReleaseResources(close_filter: true);
		}
		if (!completed)
		{
			Close();
			completed = true;
		}
	}

	public ISubscriptionToken AddOnSendingHeaders(Action<HttpContext> callback)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public IAsyncResult BeginFlush(AsyncCallback callback, object state)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void DisableUserCache()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void EndFlush(IAsyncResult asyncResult)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public Task FlushAsync()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void PushPromise(string path)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void PushPromise(string path, string method, NameValueCollection headers)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
