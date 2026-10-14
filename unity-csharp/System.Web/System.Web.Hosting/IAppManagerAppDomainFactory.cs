using System.Runtime.InteropServices;

namespace System.Web.Hosting;

[ComImport]
[Guid("02998279-7175-4D59-AA5A-FB8E44D4CA9D")]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
public interface IAppManagerAppDomainFactory
{
	[return: MarshalAs(UnmanagedType.Interface)]
	object Create([In][MarshalAs(UnmanagedType.BStr)] string appId, [In][MarshalAs(UnmanagedType.BStr)] string appPath);

	void Stop();
}
