using System.Runtime.InteropServices;

namespace System.Web.Hosting;

[Guid("940D8ADD-9E40-4475-9A67-2CDCDF57995C")]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
public interface IApplicationPreloadUtil
{
	void GetApplicationPreloadInfo([In][MarshalAs(UnmanagedType.LPWStr)] string context, [MarshalAs(UnmanagedType.Bool)] out bool enabled, [MarshalAs(UnmanagedType.BStr)] out string startupObjType, [MarshalAs(UnmanagedType.SafeArray)] out string[] parametersForStartupObj);

	void ReportApplicationPreloadFailure([In][MarshalAs(UnmanagedType.LPWStr)] string context, [In][MarshalAs(UnmanagedType.U4)] int errorCode, [In][MarshalAs(UnmanagedType.LPWStr)] string errorMessage);
}
