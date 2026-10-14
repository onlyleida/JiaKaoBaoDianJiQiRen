using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class SiteMapPathDesigner : ControlDesigner
{
	public SiteMapPathDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
