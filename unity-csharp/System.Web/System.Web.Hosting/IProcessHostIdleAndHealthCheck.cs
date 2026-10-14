using System.Runtime.InteropServices;

namespace System.Web.Hosting;

[Guid("9d98b251-453e-44f6-9cec-8b5aed970129")]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
public interface IProcessHostIdleAndHealthCheck
{
	[return: MarshalAs(UnmanagedType.Bool)]
	bool IsIdle();

	void Ping(IProcessPingCallback callback);
}
