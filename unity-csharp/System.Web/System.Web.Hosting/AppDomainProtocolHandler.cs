using System.Security.Permissions;

namespace System.Web.Hosting;

public abstract class AppDomainProtocolHandler : MarshalByRefObject, IRegisteredObject
{
	protected AppDomainProtocolHandler()
	{
		HostingEnvironment.RegisterObject(this);
	}

	[SecurityPermission(SecurityAction.LinkDemand, Flags = SecurityPermissionFlag.Infrastructure)]
	public override object InitializeLifetimeService()
	{
		return null;
	}

	public abstract void StartListenerChannel(IListenerChannelCallback listenerChannelCallback);

	public abstract void StopListenerChannel(int listenerChannelId, bool immediate);

	public abstract void StopProtocol(bool immediate);

	public virtual void Stop(bool immediate)
	{
		StopProtocol(immediate: true);
		HostingEnvironment.UnregisterObject(this);
	}
}
