using System.Security.Permissions;
using Unity;

namespace System.Web.Configuration;

[PermissionSet(SecurityAction.InheritanceDemand, Unrestricted = true)]
[PermissionSet(SecurityAction.LinkDemand, Unrestricted = true)]
public class BrowserCapabilitiesCodeGenerator
{
	public BrowserCapabilitiesCodeGenerator()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	public virtual void Create()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected void ProcessBrowserFiles(bool useVirtualPath, string virtualDir)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	public bool Uninstall()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
