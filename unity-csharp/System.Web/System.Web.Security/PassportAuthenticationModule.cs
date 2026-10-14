using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.Security;

[Obsolete("This type is obsolete. The Passport authentication product is no longer supported and has been superseded by Live ID.")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class PassportAuthenticationModule : IHttpModule
{
	private static readonly object authenticateEvent = new object();

	private EventHandlerList events = new EventHandlerList();

	public event PassportAuthenticationEventHandler Authenticate
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
	public PassportAuthenticationModule()
	{
	}

	public void Dispose()
	{
		events.Dispose();
	}

	[MonoTODO("Will we ever implement this? :-)")]
	public void Init(HttpApplication app)
	{
		throw new NotImplementedException();
	}
}
