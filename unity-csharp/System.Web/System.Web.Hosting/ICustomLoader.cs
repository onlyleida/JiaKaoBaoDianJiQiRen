using System.Runtime.InteropServices;
using System.Runtime.Remoting;

namespace System.Web.Hosting;

[ComImport]
[Guid("50A3CE65-2F9F-44E9-9094-32C6C928F966")]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
internal interface ICustomLoader
{
	[return: MarshalAs(UnmanagedType.Interface)]
	IObjectHandle LoadApplication([In][MarshalAs(UnmanagedType.LPWStr)] string appId, [In][MarshalAs(UnmanagedType.LPWStr)] string appConfigPath, [In][MarshalAs(UnmanagedType.Interface)] IProcessHostSupportFunctions supportFunctions, [In] IntPtr pLoadAppData, [In] int loadAppDataSize);
}
