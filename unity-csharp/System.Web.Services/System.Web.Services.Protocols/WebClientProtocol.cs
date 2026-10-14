using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Net.Cache;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Text;
using System.Threading;
using System.Web.Services.Diagnostics;

namespace System.Web.Services.Protocols;

[ComVisible(true)]
public abstract class WebClientProtocol : Component
{
	private static AsyncCallback getRequestStreamAsyncCallback;

	private static AsyncCallback getResponseAsyncCallback;

	private static volatile AsyncCallback readResponseAsyncCallback;

	private static ClientTypeCache cache;

	private static RequestCachePolicy bypassCache;

	private ICredentials credentials;

	private bool preAuthenticate;

	private Uri uri;

	private int timeout;

	private string connectionGroupName;

	private Encoding requestEncoding;

	private WebRequest pendingSyncRequest;

	private object nullToken = new object();

	private Hashtable asyncInvokes = Hashtable.Synchronized(new Hashtable());

	private static object s_InternalSyncObject;

	internal static object InternalSyncObject
	{
		get
		{
			if (s_InternalSyncObject == null)
			{
				object value = new object();
				Interlocked.CompareExchange(ref s_InternalSyncObject, value, null);
			}
			return s_InternalSyncObject;
		}
	}

	internal static RequestCachePolicy BypassCache
	{
		get
		{
			if (bypassCache == null)
			{
				bypassCache = new RequestCachePolicy(RequestCacheLevel.BypassCache);
			}
			return bypassCache;
		}
	}

	public ICredentials Credentials
	{
		get
		{
			return credentials;
		}
		set
		{
			credentials = value;
		}
	}

	public bool UseDefaultCredentials
	{
		get
		{
			if (credentials != CredentialCache.DefaultCredentials)
			{
				return false;
			}
			return true;
		}
		set
		{
			credentials = (value ? CredentialCache.DefaultCredentials : null);
		}
	}

	[DefaultValue("")]
	public string ConnectionGroupName
	{
		get
		{
			if (connectionGroupName != null)
			{
				return connectionGroupName;
			}
			return string.Empty;
		}
		set
		{
			connectionGroupName = value;
		}
	}

	internal WebRequest PendingSyncRequest
	{
		get
		{
			return pendingSyncRequest;
		}
		set
		{
			pendingSyncRequest = value;
		}
	}

	[WebServicesDescription("ClientProtocolPreAuthenticate")]
	[DefaultValue(false)]
	public bool PreAuthenticate
	{
		get
		{
			return preAuthenticate;
		}
		set
		{
			preAuthenticate = value;
		}
	}

	[WebServicesDescription("ClientProtocolUrl")]
	[SettingsBindable(true)]
	[DefaultValue("")]
	public string Url
	{
		get
		{
			if (!(uri == null))
			{
				return uri.ToString();
			}
			return string.Empty;
		}
		set
		{
			uri = new Uri(value);
		}
	}

	internal Hashtable AsyncInvokes => asyncInvokes;

	internal object NullToken => nullToken;

	internal Uri Uri
	{
		get
		{
			return uri;
		}
		set
		{
			uri = value;
		}
	}

	[DefaultValue(null)]
	[SettingsBindable(true)]
	[WebServicesDescription("ClientProtocolEncoding")]
	public Encoding RequestEncoding
	{
		get
		{
			return requestEncoding;
		}
		set
		{
			requestEncoding = value;
		}
	}

	[WebServicesDescription("ClientProtocolTimeout")]
	[DefaultValue(100000)]
	[SettingsBindable(true)]
	public int Timeout
	{
		get
		{
			return timeout;
		}
		set
		{
			timeout = ((value < -1) ? (-1) : value);
		}
	}

	static WebClientProtocol()
	{
		cache = new ClientTypeCache();
	}

	protected WebClientProtocol()
	{
		timeout = 100000;
	}

	internal WebClientProtocol(WebClientProtocol protocol)
	{
		credentials = protocol.credentials;
		uri = protocol.uri;
		timeout = protocol.timeout;
		connectionGroupName = protocol.connectionGroupName;
		requestEncoding = protocol.requestEncoding;
	}

	public virtual void Abort()
	{
		PendingSyncRequest?.Abort();
	}

	internal IAsyncResult BeginSend(Uri requestUri, WebClientAsyncResult asyncResult, bool callWriteAsyncRequest)
	{
		if (readResponseAsyncCallback == null)
		{
			lock (InternalSyncObject)
			{
				if (readResponseAsyncCallback == null)
				{
					getRequestStreamAsyncCallback = GetRequestStreamAsyncCallback;
					getResponseAsyncCallback = GetResponseAsyncCallback;
					readResponseAsyncCallback = ReadResponseAsyncCallback;
				}
			}
		}
		WebRequest webRequest = (asyncResult.Request = GetWebRequest(requestUri));
		InitializeAsyncRequest(webRequest, asyncResult.InternalAsyncState);
		if (callWriteAsyncRequest)
		{
			webRequest.BeginGetRequestStream(getRequestStreamAsyncCallback, asyncResult);
		}
		else
		{
			webRequest.BeginGetResponse(getResponseAsyncCallback, asyncResult);
		}
		if (!asyncResult.IsCompleted)
		{
			asyncResult.CombineCompletedSynchronously(innerCompletedSynchronously: false);
		}
		return asyncResult;
	}

	private static void ProcessAsyncException(WebClientAsyncResult client, Exception e, string method)
	{
		if (Tracing.On)
		{
			Tracing.ExceptionCatch(TraceEventType.Error, typeof(WebClientProtocol), method, e);
		}
		if (e is WebException { Response: not null } ex)
		{
			client.Response = ex.Response;
			return;
		}
		if (client.IsCompleted)
		{
			throw new InvalidOperationException(Res.GetString("ThereWasAnErrorDuringAsyncProcessing"), e);
		}
		client.Complete(e);
	}

	private static void GetRequestStreamAsyncCallback(IAsyncResult asyncResult)
	{
		WebClientAsyncResult webClientAsyncResult = (WebClientAsyncResult)asyncResult.AsyncState;
		webClientAsyncResult.CombineCompletedSynchronously(asyncResult.CompletedSynchronously);
		bool flag = true;
		try
		{
			Stream stream = webClientAsyncResult.Request.EndGetRequestStream(asyncResult);
			flag = false;
			try
			{
				webClientAsyncResult.ClientProtocol.AsyncBufferedSerialize(webClientAsyncResult.Request, stream, webClientAsyncResult.InternalAsyncState);
			}
			finally
			{
				stream.Close();
			}
			webClientAsyncResult.Request.BeginGetResponse(getResponseAsyncCallback, webClientAsyncResult);
		}
		catch (Exception ex)
		{
			if (ex is ThreadAbortException || ex is StackOverflowException || ex is OutOfMemoryException)
			{
				throw;
			}
			ProcessAsyncException(webClientAsyncResult, ex, "GetRequestStreamAsyncCallback");
			if (flag && ex is WebException { Response: not null })
			{
				webClientAsyncResult.Complete(ex);
			}
		}
	}

	private static void GetResponseAsyncCallback(IAsyncResult asyncResult)
	{
		WebClientAsyncResult webClientAsyncResult = (WebClientAsyncResult)asyncResult.AsyncState;
		webClientAsyncResult.CombineCompletedSynchronously(asyncResult.CompletedSynchronously);
		try
		{
			webClientAsyncResult.Response = webClientAsyncResult.ClientProtocol.GetWebResponse(webClientAsyncResult.Request, asyncResult);
		}
		catch (Exception ex)
		{
			if (ex is ThreadAbortException || ex is StackOverflowException || ex is OutOfMemoryException)
			{
				throw;
			}
			ProcessAsyncException(webClientAsyncResult, ex, "GetResponseAsyncCallback");
			if (webClientAsyncResult.Response == null)
			{
				return;
			}
		}
		ReadAsyncResponse(webClientAsyncResult);
	}

	private static void ReadAsyncResponse(WebClientAsyncResult client)
	{
		if (client.Response.ContentLength == 0L)
		{
			client.Complete();
			return;
		}
		try
		{
			client.ResponseStream = client.Response.GetResponseStream();
			ReadAsyncResponseStream(client);
		}
		catch (Exception ex)
		{
			if (ex is ThreadAbortException || ex is StackOverflowException || ex is OutOfMemoryException)
			{
				throw;
			}
			ProcessAsyncException(client, ex, "ReadAsyncResponse");
		}
	}

	private static void ReadAsyncResponseStream(WebClientAsyncResult client)
	{
		IAsyncResult asyncResult;
		do
		{
			byte[] array = client.Buffer;
			long contentLength = client.Response.ContentLength;
			if (array == null)
			{
				array = (client.Buffer = new byte[(contentLength == -1) ? 1024 : contentLength]);
			}
			else if (contentLength != -1 && contentLength > array.Length)
			{
				array = (client.Buffer = new byte[contentLength]);
			}
			asyncResult = client.ResponseStream.BeginRead(array, 0, array.Length, readResponseAsyncCallback, client);
		}
		while (asyncResult.CompletedSynchronously && !ProcessAsyncResponseStreamResult(client, asyncResult));
	}

	private static bool ProcessAsyncResponseStreamResult(WebClientAsyncResult client, IAsyncResult asyncResult)
	{
		int num = client.ResponseStream.EndRead(asyncResult);
		long contentLength = client.Response.ContentLength;
		bool flag;
		if (contentLength > 0 && num == contentLength)
		{
			client.ResponseBufferedStream = new MemoryStream(client.Buffer);
			flag = true;
		}
		else if (num > 0)
		{
			if (client.ResponseBufferedStream == null)
			{
				int capacity = (int)((contentLength == -1) ? client.Buffer.Length : contentLength);
				client.ResponseBufferedStream = new MemoryStream(capacity);
			}
			client.ResponseBufferedStream.Write(client.Buffer, 0, num);
			flag = false;
		}
		else
		{
			flag = true;
		}
		if (flag)
		{
			client.Complete();
		}
		return flag;
	}

	private static void ReadResponseAsyncCallback(IAsyncResult asyncResult)
	{
		WebClientAsyncResult webClientAsyncResult = (WebClientAsyncResult)asyncResult.AsyncState;
		webClientAsyncResult.CombineCompletedSynchronously(asyncResult.CompletedSynchronously);
		if (asyncResult.CompletedSynchronously)
		{
			return;
		}
		try
		{
			if (!ProcessAsyncResponseStreamResult(webClientAsyncResult, asyncResult))
			{
				ReadAsyncResponseStream(webClientAsyncResult);
			}
		}
		catch (Exception ex)
		{
			if (ex is ThreadAbortException || ex is StackOverflowException || ex is OutOfMemoryException)
			{
				throw;
			}
			ProcessAsyncException(webClientAsyncResult, ex, "ReadResponseAsyncCallback");
		}
	}

	internal void NotifyClientCallOut(WebRequest request)
	{
	}

	protected virtual WebRequest GetWebRequest(Uri uri)
	{
		if (uri == null)
		{
			throw new InvalidOperationException(Res.GetString("WebMissingPath"));
		}
		WebRequest webRequest = (PendingSyncRequest = WebRequest.Create(uri));
		webRequest.Timeout = timeout;
		webRequest.ConnectionGroupName = connectionGroupName;
		webRequest.Credentials = Credentials;
		webRequest.PreAuthenticate = PreAuthenticate;
		webRequest.CachePolicy = BypassCache;
		return webRequest;
	}

	protected virtual WebResponse GetWebResponse(WebRequest request)
	{
		TraceMethod caller = (Tracing.On ? new TraceMethod(this, "GetWebResponse") : null);
		WebResponse webResponse = null;
		try
		{
			if (Tracing.On)
			{
				Tracing.Enter("WebRequest.GetResponse", caller, new TraceMethod(request, "GetResponse"));
			}
			webResponse = request.GetResponse();
			if (Tracing.On)
			{
				Tracing.Exit("WebRequest.GetResponse", caller);
			}
		}
		catch (WebException ex)
		{
			if (ex.Response == null)
			{
				throw ex;
			}
			if (Tracing.On)
			{
				Tracing.ExceptionCatch(TraceEventType.Error, this, "GetWebResponse", ex);
			}
			webResponse = ex.Response;
		}
		return webResponse;
	}

	protected virtual WebResponse GetWebResponse(WebRequest request, IAsyncResult result)
	{
		return request.EndGetResponse(result);
	}

	[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
	internal virtual void InitializeAsyncRequest(WebRequest request, object internalAsyncState)
	{
	}

	[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
	internal virtual void AsyncBufferedSerialize(WebRequest request, Stream requestStream, object internalAsyncState)
	{
		throw new NotSupportedException(Res.GetString("ProtocolDoesNotAsyncSerialize"));
	}

	internal WebResponse EndSend(IAsyncResult asyncResult, ref object internalAsyncState, ref Stream responseStream)
	{
		if (asyncResult == null)
		{
			throw new ArgumentNullException(Res.GetString("WebNullAsyncResultInEnd"));
		}
		WebClientAsyncResult webClientAsyncResult = (WebClientAsyncResult)asyncResult;
		if (webClientAsyncResult.EndSendCalled)
		{
			throw new InvalidOperationException(Res.GetString("CanTCallTheEndMethodOfAnAsyncCallMoreThan"));
		}
		webClientAsyncResult.EndSendCalled = true;
		WebResponse result = webClientAsyncResult.WaitForResponse();
		internalAsyncState = webClientAsyncResult.InternalAsyncState;
		responseStream = webClientAsyncResult.ResponseBufferedStream;
		return result;
	}

	protected static object GetFromCache(Type type)
	{
		return cache[type];
	}

	protected static void AddToCache(Type type, object value)
	{
		cache.Add(type, value);
	}
}
