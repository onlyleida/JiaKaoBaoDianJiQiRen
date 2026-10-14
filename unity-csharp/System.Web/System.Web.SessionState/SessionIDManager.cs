using System.Web.Configuration;
using System.Web.Util;

namespace System.Web.SessionState;

public class SessionIDManager : ISessionIDManager
{
	private SessionStateSection config;

	public static int SessionIDMaxLength => 80;

	public virtual string CreateSessionID(HttpContext context)
	{
		return SessionId.Create();
	}

	public virtual string Decode(string id)
	{
		return HttpUtility.UrlDecode(id);
	}

	public virtual string Encode(string id)
	{
		return HttpUtility.UrlEncode(id);
	}

	public string GetSessionID(HttpContext context)
	{
		string text = null;
		if (SessionStateModule.IsCookieLess(context, config))
		{
			string text2 = context.Request.Headers["AspFilterSessionId"];
			if (text2 != null)
			{
				text = Decode(text2);
			}
		}
		else
		{
			HttpCookie httpCookie = context.Request.Cookies[config.CookieName];
			if (httpCookie != null)
			{
				text = Decode(httpCookie.Value);
			}
		}
		if (text != null && text.Length > SessionIDMaxLength)
		{
			throw new HttpException("The length of the session-identifier value retrieved from the HTTP request exceeds the SessionIDMaxLength value.");
		}
		if (!Validate(text))
		{
			throw new HttpException("Invalid session ID");
		}
		return text;
	}

	public void Initialize()
	{
		config = WebConfigurationManager.GetSection("system.web/sessionState") as SessionStateSection;
	}

	public bool InitializeRequest(HttpContext context, bool suppressAutoDetectRedirect, out bool supportSessionIDReissue)
	{
		if (config.CookieLess)
		{
			supportSessionIDReissue = true;
			return false;
		}
		supportSessionIDReissue = false;
		return false;
	}

	public void RemoveSessionID(HttpContext context)
	{
		context.Response.Cookies.Remove(config.CookieName);
	}

	public void SaveSessionID(HttpContext context, string id, out bool redirected, out bool cookieAdded)
	{
		if (!Validate(id))
		{
			throw new HttpException("Invalid session ID");
		}
		HttpRequest request = context.Request;
		if (!SessionStateModule.IsCookieLess(context, config))
		{
			HttpCookie httpCookie = new HttpCookie(config.CookieName, id);
			httpCookie.Path = request.ApplicationPath;
			context.Response.AppendCookie(httpCookie);
			cookieAdded = true;
			redirected = false;
		}
		else
		{
			request.SetHeader("AspFilterSessionId", id);
			cookieAdded = false;
			redirected = true;
			UriBuilder uriBuilder = new UriBuilder(request.Url);
			uriBuilder.Path = UrlUtils.InsertSessionId(id, request.FilePath);
			context.Response.Redirect(uriBuilder.Uri.PathAndQuery, endResponse: false);
		}
	}

	public virtual bool Validate(string id)
	{
		return true;
	}
}
