using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.Security;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class WindowsAuthenticationModule : IHttpModule
{
	private static readonly object authenticateEvent = new object();

	private EventHandlerList events = new EventHandlerList();

	public event WindowsAuthenticationEventHandler Authenticate
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
	public WindowsAuthenticationModule()
	{
	}

	public void Dispose()
	{
		events.Dispose();
	}

	[MonoTODO("Not implemented")]
	public void Init(HttpApplication app)
	{
		throw new NotImplementedException();
	}
}
