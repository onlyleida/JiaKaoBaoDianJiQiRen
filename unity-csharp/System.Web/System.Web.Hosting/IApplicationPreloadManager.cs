using System.Runtime.InteropServices;

namespace System.Web.Hosting;

[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
[Guid("AE54F424-71BC-4da5-AA2F-8C0CD53496FC")]
public interface IApplicationPreloadManager
{
	void SetApplicationPreloadState([In][MarshalAs(UnmanagedType.LPWStr)] string context, [In][MarshalAs(UnmanagedType.LPWStr)] string appId, [In][MarshalAs(UnmanagedType.Bool)] bool enabled);

	void SetApplicationPreloadUtil([In][MarshalAs(UnmanagedType.Interface)] IApplicationPreloadUtil preloadUtil);
}
