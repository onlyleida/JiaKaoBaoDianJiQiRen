using System.ComponentModel;
using System.Security.Principal;
using System.Threading;
using System.Web.Configuration;

namespace System.Web.Security;

public sealed class RoleManagerModule : IHttpModule
{
	private static readonly object getRolesEvent = new object();

	private RoleManagerSection _config;

	private EventHandlerList events = new EventHandlerList();

	public event RoleManagerEventHandler GetRoles
	{
		add
		{
			events.AddHandler(getRolesEvent, value);
		}
		remove
		{
			events.RemoveHandler(getRolesEvent, value);
		}
	}

	public void Dispose()
	{
	}

	private void ClearCookie(HttpApplication app, string cookieName)
	{
		HttpCookie httpCookie = new HttpCookie(_config.CookieName, "");
		httpCookie.Path = _config.CookiePath;
		httpCookie.Expires = DateTime.MinValue;
		httpCookie.Domain = _config.Domain;
		httpCookie.Secure = _config.CookieRequireSSL;
		app.Response.SetCookie(httpCookie);
	}

	private void OnPostAuthenticateRequest(object sender, EventArgs args)
	{
		HttpApplication httpApplication = (HttpApplication)sender;
		if (_config == null || !_config.Enabled)
		{
			return;
		}
		if (events[getRolesEvent] is RoleManagerEventHandler roleManagerEventHandler)
		{
			RoleManagerEventArgs e = new RoleManagerEventArgs(httpApplication.Context);
			roleManagerEventHandler(this, e);
			if (e.RolesPopulated)
			{
				return;
			}
		}
		HttpCookie httpCookie = httpApplication.Request.Cookies[_config.CookieName];
		IIdentity identity = httpApplication.Context.User.Identity;
		RolePrincipal rolePrincipal;
		if (httpApplication.Request.IsAuthenticated)
		{
			if (httpCookie != null)
			{
				if (!_config.CacheRolesInCookie)
				{
					httpCookie = null;
				}
				else if (_config.CookieRequireSSL && !httpApplication.Request.IsSecureConnection)
				{
					httpCookie = null;
					ClearCookie(httpApplication, _config.CookieName);
				}
			}
			rolePrincipal = ((httpCookie != null && !string.IsNullOrEmpty(httpCookie.Value)) ? new RolePrincipal(identity, httpCookie.Value) : new RolePrincipal(identity));
		}
		else
		{
			if (httpCookie != null)
			{
				ClearCookie(httpApplication, _config.CookieName);
			}
			rolePrincipal = new RolePrincipal(identity);
		}
		httpApplication.Context.User = rolePrincipal;
		Thread.CurrentPrincipal = rolePrincipal;
	}

	private void OnEndRequest(object sender, EventArgs args)
	{
		HttpApplication httpApplication = (HttpApplication)sender;
		if (_config == null || !_config.Enabled || !_config.CacheRolesInCookie || !httpApplication.Request.IsAuthenticated || (_config.CookieRequireSSL && !httpApplication.Request.IsSecureConnection) || !(httpApplication.Context.User is RolePrincipal { CachedListChanged: not false } rolePrincipal))
		{
			return;
		}
		string text = rolePrincipal.ToEncryptedTicket();
		if (text == null || text.Length > 4096)
		{
			ClearCookie(httpApplication, _config.CookieName);
			return;
		}
		HttpCookie httpCookie = new HttpCookie(_config.CookieName, text);
		httpCookie.HttpOnly = true;
		if (!string.IsNullOrEmpty(_config.Domain))
		{
			httpCookie.Domain = _config.Domain;
		}
		if (_config.CookieRequireSSL)
		{
			httpCookie.Secure = true;
		}
		if (_config.CookiePath.Length > 1)
		{
			httpCookie.Path = _config.CookiePath;
		}
		httpApplication.Response.SetCookie(httpCookie);
	}

	public void Init(HttpApplication app)
	{
		_config = (RoleManagerSection)WebConfigurationManager.GetSection("system.web/roleManager");
		app.PostAuthenticateRequest += OnPostAuthenticateRequest;
		app.EndRequest += OnEndRequest;
	}
}
