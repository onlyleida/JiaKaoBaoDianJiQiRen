using System.Security.Permissions;

namespace System.Web.Util;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class WorkItem
{
	[MonoTODO("Not implemented, not currently supported by Mono")]
	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public static void Post(WorkItemCallback callback)
	{
		throw new PlatformNotSupportedException("Not supported on mono");
	}
}
