using Unity;

namespace System.Web.Hosting;

public abstract class ProcessProtocolHandler : MarshalByRefObject
{
	protected ProcessProtocolHandler()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract void StartListenerChannel(IListenerChannelCallback listenerChannelCallback, IAdphManager AdphManager);

	public abstract void StopListenerChannel(int listenerChannelId, bool immediate);

	public abstract void StopProtocol(bool immediate);
}
