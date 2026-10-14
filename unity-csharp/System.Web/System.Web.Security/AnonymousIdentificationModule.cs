using System.ComponentModel;
using System.Text;
using System.Web.Configuration;

namespace System.Web.Security;

public sealed class AnonymousIdentificationModule : IHttpModule
{
	private static readonly object creatingEvent = new object();

	private HttpApplication app;

	private EventHandlerList events = new EventHandlerList();

	private static AnonymousIdentificationSection Config = (AnonymousIdentificationSection)WebConfigurationManager.GetSection("system.web/anonymousIdentification");

	public static bool Enabled
	{
		get
		{
			if (Config == null)
			{
				return false;
			}
			return Config.Enabled;
		}
	}

	public event AnonymousIdentificationEventHandler Creating
	{
		add
		{
			events.AddHandler(creatingEvent, value);
		}
		remove
		{
			events.RemoveHandler(creatingEvent, value);
		}
	}

	public static void ClearAnonymousIdentifier()
	{
		if (Config == null || !Config.Enabled)
		{
			throw new NotSupportedException();
		}
	}

	public void Dispose()
	{
		app.PostAuthenticateRequest -= OnEnter;
		app = null;
	}

	public void Init(HttpApplication app)
	{
		this.app = app;
		app.PostAuthenticateRequest += OnEnter;
	}

	[MonoTODO("cookieless userid")]
	private void OnEnter(object source, EventArgs eventArgs)
	{
		if (!Enabled)
		{
			return;
		}
		string text = null;
		HttpCookie httpCookie = app.Request.Cookies[Config.CookieName];
		if (httpCookie != null && (httpCookie.Expires == DateTime.MinValue || httpCookie.Expires > DateTime.Now))
		{
			try
			{
				text = Encoding.Unicode.GetString(Convert.FromBase64String(httpCookie.Value));
			}
			catch
			{
			}
		}
		if (text == null)
		{
			if (events[creatingEvent] is AnonymousIdentificationEventHandler anonymousIdentificationEventHandler)
			{
				AnonymousIdentificationEventArgs e = new AnonymousIdentificationEventArgs(HttpContext.Current);
				anonymousIdentificationEventHandler(this, e);
				text = e.AnonymousID;
			}
			if (text == null)
			{
				text = Guid.NewGuid().ToString();
			}
			HttpCookie httpCookie2 = new HttpCookie(Config.CookieName);
			httpCookie2.Path = app.Request.ApplicationPath;
			httpCookie2.Expires = DateTime.Now + Config.CookieTimeout;
			httpCookie2.Value = Convert.ToBase64String(Encoding.Unicode.GetBytes(text));
			app.Response.AppendCookie(httpCookie2);
		}
		app.Request.AnonymousID = text;
	}
}
