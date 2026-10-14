using System.ComponentModel;
using System.Security.Permissions;
using System.Security.Principal;
using System.Threading;

namespace System.Web.Security;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class DefaultAuthenticationModule : IHttpModule
{
	private static readonly object authenticateEvent = new object();

	private static IPrincipal generic_principal = new GenericPrincipal(new GenericIdentity("", ""), new string[0]);

	private EventHandlerList events = new EventHandlerList();

	public event DefaultAuthenticationEventHandler Authenticate
	{
		add
		{
			events.AddHandler(authenticateEvent, value);
		}
		remove
		{
			events.RemoveHandler(authenticateEvent, value);
		}
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public DefaultAuthenticationModule()
	{
	}

	public void Dispose()
	{
	}

	public void Init(HttpApplication app)
	{
		app.DefaultAuthentication += OnDefaultAuthentication;
	}

	private void OnDefaultAuthentication(object sender, EventArgs args)
	{
		HttpContext context = ((HttpApplication)sender).Context;
		DefaultAuthenticationEventHandler defaultAuthenticationEventHandler = events[authenticateEvent] as DefaultAuthenticationEventHandler;
		if (context.User == null)
		{
			defaultAuthenticationEventHandler?.Invoke(this, new DefaultAuthenticationEventArgs(context));
		}
		if (context.User == null)
		{
			context.User = generic_principal;
		}
		Thread.CurrentPrincipal = context.User;
	}
}
