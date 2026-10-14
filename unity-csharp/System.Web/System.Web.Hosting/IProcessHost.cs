using System.Runtime.InteropServices;

namespace System.Web.Hosting;

[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
[Guid("0ccd465e-3114-4ca3-ad50-cea561307e93")]
public interface IProcessHost
{
	void EnumerateAppDomains([MarshalAs(UnmanagedType.Interface)] out IAppDomainInfoEnum appDomainInfoEnum);

	void Shutdown();

	void ShutdownApplication([In][MarshalAs(UnmanagedType.LPWStr)] string appId);

	void StartApplication([In][MarshalAs(UnmanagedType.LPWStr)] string appId, [In][MarshalAs(UnmanagedType.LPWStr)] string appPath, [MarshalAs(UnmanagedType.Interface)] out object runtimeInterface);
}
