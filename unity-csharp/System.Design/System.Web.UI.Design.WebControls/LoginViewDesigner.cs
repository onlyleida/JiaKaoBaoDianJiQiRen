using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class LoginViewDesigner : ControlDesigner
{
	public LoginViewDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
