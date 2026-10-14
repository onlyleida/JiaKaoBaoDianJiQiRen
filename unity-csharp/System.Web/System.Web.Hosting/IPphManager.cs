using System.Runtime.InteropServices;

namespace System.Web.Hosting;

[Guid("1cc9099d-0a8d-41cb-87d6-845e4f8c4e91")]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
public interface IPphManager
{
	void StartProcessProtocolListenerChannel([In][MarshalAs(UnmanagedType.LPWStr)] string protocolId, IListenerChannelCallback listenerChannelCallback);

	void StopProcessProtocol([In][MarshalAs(UnmanagedType.LPWStr)] string protocolId, bool immediate);

	void StopProcessProtocolListenerChannel([In][MarshalAs(UnmanagedType.LPWStr)] string protocolId, int listenerChannelId, bool immediate);
}
