using Unity;

namespace System.Web.Hosting;

public sealed class ProcessHost : MarshalByRefObject, IAdphManager, IApplicationPreloadManager, IPphManager, IProcessHost, IProcessHostIdleAndHealthCheck
{
	internal ProcessHost()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void EnumerateAppDomains(out IAppDomainInfoEnum appDomainInfoEnum)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool IsIdle()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public void Ping(IProcessPingCallback callback)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void SetApplicationPreloadState(string context, string appId, bool enabled)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void SetApplicationPreloadUtil(IApplicationPreloadUtil applicationPreloadUtil)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Shutdown()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void ShutdownApplication(string appId)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void StartAppDomainProtocolListenerChannel(string appId, string protocolId, IListenerChannelCallback listenerChannelCallback)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void StartApplication(string appId, string appPath, out object runtimeInterface)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void StartProcessProtocolListenerChannel(string protocolId, IListenerChannelCallback listenerChannelCallback)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void StopAppDomainProtocol(string appId, string protocolId, bool immediate)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void StopAppDomainProtocolListenerChannel(string appId, string protocolId, int listenerChannelId, bool immediate)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void StopProcessProtocol(string protocolId, bool immediate)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void StopProcessProtocolListenerChannel(string protocolId, int listenerChannelId, bool immediate)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
