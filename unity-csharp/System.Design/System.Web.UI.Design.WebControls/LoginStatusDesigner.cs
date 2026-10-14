using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class LoginStatusDesigner : CompositeControlDesigner
{
	public LoginStatusDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
