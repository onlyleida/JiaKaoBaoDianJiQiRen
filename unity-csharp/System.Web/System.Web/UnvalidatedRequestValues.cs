using System.Collections.Specialized;

namespace System.Web;

public sealed class UnvalidatedRequestValues
{
	public HttpCookieCollection Cookies { get; internal set; }

	public HttpFileCollection Files { get; internal set; }

	public NameValueCollection Form { get; internal set; }

	public NameValueCollection Headers { get; internal set; }

	public string Path { get; internal set; }

	public string PathInfo { get; internal set; }

	public NameValueCollection QueryString { get; internal set; }

	public string RawUrl { get; internal set; }

	public Uri Url { get; internal set; }

	public string this[string field]
	{
		get
		{
			if (Form != null && Form[field] != null)
			{
				return Form[field];
			}
			if (Cookies != null && Cookies[field] != null)
			{
				return Cookies[field].Value;
			}
			if (QueryString != null && QueryString[field] != null)
			{
				return QueryString[field];
			}
			return null;
		}
	}
}
