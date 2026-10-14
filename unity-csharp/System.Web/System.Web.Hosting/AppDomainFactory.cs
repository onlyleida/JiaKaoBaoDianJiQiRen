using System.Security.Permissions;

namespace System.Web.Hosting;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class AppDomainFactory : IAppDomainFactory
{
	[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.Minimal)]
	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public AppDomainFactory()
	{
	}

	[MonoTODO("Not implemented")]
	public object Create(string module, string typeName, string appId, string appPath, string strUrlOfAppOrigin, int iZone)
	{
		throw new NotImplementedException();
	}
}
