using System.Security.Permissions;

namespace System.Web.Security;

[MonoTODO("that's only a stub")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class FileAuthorizationModule : IHttpModule
{
	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public FileAuthorizationModule()
	{
	}

	public void Dispose()
	{
	}

	[MonoTODO("Not implemented")]
	public void Init(HttpApplication app)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public static bool CheckFileAccessForUser(string virtualPath, IntPtr token, string verb)
	{
		throw new NotImplementedException();
	}
}
