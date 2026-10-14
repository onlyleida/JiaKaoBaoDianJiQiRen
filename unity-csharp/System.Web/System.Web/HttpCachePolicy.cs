using System.Collections;
using System.Collections.Specialized;
using System.IO;
using System.Security.Permissions;
using System.Text;
using System.Web.UI;
using System.Web.Util;
using Unity;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpCachePolicy
{
	private HttpCacheVaryByContentEncodings vary_by_content_encodings = new HttpCacheVaryByContentEncodings();

	private HttpCacheVaryByHeaders vary_by_headers = new HttpCacheVaryByHeaders();

	private HttpCacheVaryByParams vary_by_params = new HttpCacheVaryByParams();

	private ArrayList validation_callbacks;

	private StringBuilder cache_extension;

	internal HttpCacheability Cacheability;

	private string etag;

	private bool etag_from_file_dependencies;

	private bool last_modified_from_file_dependencies;

	internal bool have_expire_date;

	internal DateTime expire_date;

	internal bool have_last_modified;

	internal DateTime last_modified;

	private HttpCacheRevalidation revalidation;

	private string vary_by_custom;

	private bool HaveMaxAge;

	private TimeSpan MaxAge;

	private bool HaveProxyMaxAge;

	private TimeSpan ProxyMaxAge;

	private ArrayList fields;

	private bool sliding_expiration;

	private int duration;

	private bool allow_response_in_browser_history;

	private bool allow_server_caching = true;

	private bool set_no_store;

	private bool set_no_transform;

	private bool valid_until_expires;

	private bool omit_vary_star;

	public HttpCacheVaryByContentEncodings VaryByContentEncodings => vary_by_content_encodings;

	public HttpCacheVaryByHeaders VaryByHeaders => vary_by_headers;

	public HttpCacheVaryByParams VaryByParams => vary_by_params;

	internal bool AllowServerCaching => allow_server_caching;

	internal int Duration
	{
		get
		{
			return duration;
		}
		set
		{
			duration = value;
		}
	}

	internal bool Sliding => sliding_expiration;

	internal DateTime Expires => expire_date;

	internal ArrayList ValidationCallbacks => validation_callbacks;

	internal bool OmitVaryStar => omit_vary_star;

	internal bool ValidUntilExpires => valid_until_expires;

	public DateTime UtcTimestampCreated
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	internal HttpCachePolicy()
	{
	}

	internal int ExpireMinutes()
	{
		if (!have_expire_date)
		{
			return 0;
		}
		return (expire_date - DateTime.Now).Minutes;
	}

	public void AddValidationCallback(HttpCacheValidateHandler handler, object data)
	{
		if (handler == null)
		{
			throw new ArgumentNullException("handler");
		}
		if (validation_callbacks == null)
		{
			validation_callbacks = new ArrayList();
		}
		validation_callbacks.Add(new Pair(handler, data));
	}

	public void AppendCacheExtension(string extension)
	{
		if (extension == null)
		{
			throw new ArgumentNullException("extension");
		}
		if (cache_extension == null)
		{
			cache_extension = new StringBuilder(extension);
		}
		else
		{
			cache_extension.Append(", " + extension);
		}
	}

	public void SetCacheability(HttpCacheability cacheability)
	{
		if (cacheability < HttpCacheability.NoCache || cacheability > HttpCacheability.ServerAndPrivate)
		{
			throw new ArgumentOutOfRangeException("cacheability");
		}
		if (Cacheability <= (HttpCacheability)0 || cacheability <= Cacheability)
		{
			Cacheability = cacheability;
		}
	}

	public void SetCacheability(HttpCacheability cacheability, string field)
	{
		if (field == null)
		{
			throw new ArgumentNullException("field");
		}
		if (cacheability != HttpCacheability.NoCache && cacheability != HttpCacheability.Private)
		{
			throw new ArgumentException("Must be NoCache or Private", "cacheability");
		}
		if (fields == null)
		{
			fields = new ArrayList();
		}
		fields.Add(new Pair(cacheability, field));
	}

	public void SetETag(string etag)
	{
		if (etag == null)
		{
			throw new ArgumentNullException("etag");
		}
		if (this.etag != null)
		{
			throw new InvalidOperationException("The ETag header has already been set");
		}
		if (etag_from_file_dependencies)
		{
			throw new InvalidOperationException("SetEtagFromFileDependencies has already been called");
		}
		this.etag = etag;
	}

	public void SetETagFromFileDependencies()
	{
		if (etag != null)
		{
			throw new InvalidOperationException("The ETag header has already been set");
		}
		etag_from_file_dependencies = true;
	}

	public void SetExpires(DateTime date)
	{
		if (!have_expire_date || !(date > expire_date))
		{
			have_expire_date = true;
			expire_date = date;
		}
	}

	public void SetLastModified(DateTime date)
	{
		if (date > DateTime.Now)
		{
			throw new ArgumentOutOfRangeException("date");
		}
		if (!have_last_modified || !(date < last_modified))
		{
			have_last_modified = true;
			last_modified = date;
		}
	}

	public void SetLastModifiedFromFileDependencies()
	{
		last_modified_from_file_dependencies = true;
	}

	public void SetMaxAge(TimeSpan delta)
	{
		if (delta < TimeSpan.Zero)
		{
			throw new ArgumentOutOfRangeException("delta");
		}
		if (!HaveMaxAge || !(MaxAge < delta))
		{
			MaxAge = delta;
			HaveMaxAge = true;
		}
	}

	public void SetNoServerCaching()
	{
		allow_server_caching = false;
	}

	public void SetNoStore()
	{
		set_no_store = true;
	}

	public void SetNoTransforms()
	{
		set_no_transform = true;
	}

	public void SetProxyMaxAge(TimeSpan delta)
	{
		if (delta < TimeSpan.Zero)
		{
			throw new ArgumentOutOfRangeException("delta");
		}
		if (!HaveProxyMaxAge || !(ProxyMaxAge < delta))
		{
			ProxyMaxAge = delta;
			HaveProxyMaxAge = true;
		}
	}

	public void SetRevalidation(HttpCacheRevalidation revalidation)
	{
		if (revalidation < HttpCacheRevalidation.AllCaches || revalidation > HttpCacheRevalidation.None)
		{
			throw new ArgumentOutOfRangeException("revalidation");
		}
		if (this.revalidation > revalidation)
		{
			this.revalidation = revalidation;
		}
	}

	public void SetSlidingExpiration(bool slide)
	{
		sliding_expiration = slide;
	}

	public void SetValidUntilExpires(bool validUntilExpires)
	{
		valid_until_expires = validUntilExpires;
	}

	public void SetVaryByCustom(string custom)
	{
		if (custom == null)
		{
			throw new ArgumentNullException("custom");
		}
		if (vary_by_custom != null)
		{
			throw new InvalidOperationException("VaryByCustom has already been set.");
		}
		vary_by_custom = custom;
	}

	internal string GetVaryByCustom()
	{
		return vary_by_custom;
	}

	public void SetAllowResponseInBrowserHistory(bool allow)
	{
		if (Cacheability == HttpCacheability.NoCache || Cacheability == HttpCacheability.Server)
		{
			allow_response_in_browser_history = allow;
		}
	}

	internal void SetHeaders(HttpResponse response, NameValueCollection headers)
	{
		bool flag = false;
		string text = null;
		switch (Cacheability)
		{
		case HttpCacheability.Public:
			text = "public";
			break;
		case HttpCacheability.NoCache:
		case HttpCacheability.Server:
			flag = true;
			text = "no-cache";
			break;
		default:
			text = "private";
			break;
		}
		if (flag)
		{
			response.CacheControl = text;
			if (!allow_response_in_browser_history)
			{
				headers.Add("Expires", "-1");
				headers.Add("Pragma", "no-cache");
			}
		}
		else
		{
			if (HaveMaxAge)
			{
				text = text + ", max-age=" + (long)MaxAge.TotalSeconds;
			}
			if (have_expire_date)
			{
				string value = TimeUtil.ToUtcTimeString(expire_date);
				headers.Add("Expires", value);
			}
		}
		if (set_no_store)
		{
			text += ", no-store";
		}
		if (set_no_transform)
		{
			text += ", no-transform";
		}
		if (cache_extension != null && cache_extension.Length > 0)
		{
			if (!string.IsNullOrEmpty(text))
			{
				text += ", ";
			}
			text += cache_extension.ToString();
		}
		headers.Add("Cache-Control", text);
		if (last_modified_from_file_dependencies || etag_from_file_dependencies)
		{
			HeadersFromFileDependencies(response);
		}
		if (etag != null)
		{
			headers.Add("ETag", etag);
		}
		if (have_last_modified)
		{
			headers.Add("Last-Modified", TimeUtil.ToUtcTimeString(last_modified));
		}
		if (!vary_by_params.IgnoreParams)
		{
			string responseHeaderValue = vary_by_params.GetResponseHeaderValue();
			if (responseHeaderValue != null)
			{
				headers.Add("Vary", responseHeaderValue);
			}
		}
	}

	private void HeadersFromFileDependencies(HttpResponse response)
	{
		string[] fileDependencies = response.FileDependencies;
		if (fileDependencies == null || fileDependencies.Length == 0)
		{
			return;
		}
		bool flag = etag != null && etag_from_file_dependencies;
		if (!flag && !last_modified_from_file_dependencies)
		{
			return;
		}
		DateTime dateTime = DateTime.MinValue;
		StringBuilder stringBuilder = new StringBuilder();
		string[] array = fileDependencies;
		foreach (string path in array)
		{
			if (File.Exists(path))
			{
				DateTime lastWriteTime;
				try
				{
					lastWriteTime = File.GetLastWriteTime(path);
				}
				catch
				{
					continue;
				}
				if (last_modified_from_file_dependencies && lastWriteTime > dateTime)
				{
					dateTime = lastWriteTime;
				}
				if (flag)
				{
					stringBuilder.AppendFormat("{0}", lastWriteTime.Ticks.ToString("x"));
				}
			}
		}
		if (last_modified_from_file_dependencies && dateTime > DateTime.MinValue)
		{
			last_modified = dateTime;
			have_last_modified = true;
		}
		if (flag && stringBuilder.Length > 0)
		{
			etag = stringBuilder.ToString();
		}
	}

	public void SetOmitVaryStar(bool omit)
	{
		omit_vary_star = omit;
	}

	public HttpCacheability GetCacheability()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public string GetCacheExtensions()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public string GetETag()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public bool GetETagFromFileDependencies()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public DateTime GetExpires()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool GetIgnoreRangeRequests()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool GetLastModifiedFromFileDependencies()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public TimeSpan GetMaxAge()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool GetNoServerCaching()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool GetNoStore()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool GetNoTransforms()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public int GetOmitVaryStar()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public TimeSpan GetProxyMaxAge()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public HttpCacheRevalidation GetRevalidation()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public DateTime GetUtcLastModified()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool HasSlidingExpiration()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool IsModified()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool IsValidUntilExpires()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
