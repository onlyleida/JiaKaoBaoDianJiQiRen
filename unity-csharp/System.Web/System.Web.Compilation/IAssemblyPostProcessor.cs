using System.Security.Permissions;

namespace System.Web.Compilation;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.High)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.High)]
public interface IAssemblyPostProcessor : IDisposable
{
	void PostProcessAssembly(string path);
}
