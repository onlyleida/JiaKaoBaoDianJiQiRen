using System.Runtime.InteropServices;

namespace System.Web.Management;

[ComImport]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
[Guid("C84F668A-CC3F-11D7-B79E-505054503030")]
public interface IRegiisUtility
{
	void ProtectedConfigAction(long actionToPerform, [In][MarshalAs(UnmanagedType.LPWStr)] string firstArgument, [In][MarshalAs(UnmanagedType.LPWStr)] string secondArgument, [In][MarshalAs(UnmanagedType.LPWStr)] string providerName, [In][MarshalAs(UnmanagedType.LPWStr)] string appPath, [In][MarshalAs(UnmanagedType.LPWStr)] string site, [In][MarshalAs(UnmanagedType.LPWStr)] string cspOrLocation, int keySize, out IntPtr exception);

	void RegisterAsnetMmcAssembly(int doReg, [In][MarshalAs(UnmanagedType.LPWStr)] string assemblyName, [In][MarshalAs(UnmanagedType.LPWStr)] string binaryDirectory, out IntPtr exception);

	void RegisterSystemWebAssembly(int doReg, out IntPtr exception);

	void RemoveBrowserCaps(out IntPtr exception);
}
