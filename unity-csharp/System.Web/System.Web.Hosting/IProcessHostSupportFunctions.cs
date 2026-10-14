using System.Runtime.InteropServices;
using System.Security;
using System.Security.Permissions;

namespace System.Web.Hosting;

[ComImport]
[Guid("35f9c4c1-3800-4d17-99bc-018a62243687")]
[SuppressUnmanagedCodeSecurity]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
public interface IProcessHostSupportFunctions
{
	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	void GetApplicationProperties([In][MarshalAs(UnmanagedType.LPWStr)] string appId, out string virtualPath, out string physicalPath, out string siteName, out string siteId);

	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	void MapPath([In][MarshalAs(UnmanagedType.LPWStr)] string appId, [In][MarshalAs(UnmanagedType.LPWStr)] string virtualPath, out string physicalPath);

	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[return: MarshalAs(UnmanagedType.SysInt)]
	IntPtr GetConfigToken([In][MarshalAs(UnmanagedType.LPWStr)] string appId);

	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string GetAppHostConfigFilename();

	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string GetRootWebConfigFilename();

	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[SecurityPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[return: MarshalAs(UnmanagedType.SysInt)]
	IntPtr GetNativeConfigurationSystem();
}
