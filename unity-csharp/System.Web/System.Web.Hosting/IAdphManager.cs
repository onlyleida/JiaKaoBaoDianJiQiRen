using System.Runtime.InteropServices;

namespace System.Web.Hosting;

public interface IAdphManager
{
	void StartAppDomainProtocolListenerChannel([In][MarshalAs(UnmanagedType.LPWStr)] string appId, [In][MarshalAs(UnmanagedType.LPWStr)] string protocolId, IListenerChannelCallback listenerChannelCallback);

	void StopAppDomainProtocol([In][MarshalAs(UnmanagedType.LPWStr)] string appId, [In][MarshalAs(UnmanagedType.LPWStr)] string protocolId, bool immediate);

	void StopAppDomainProtocolListenerChannel([In][MarshalAs(UnmanagedType.LPWStr)] string appId, [In][MarshalAs(UnmanagedType.LPWStr)] string protocolId, int listenerChannelId, bool immediate);
}
