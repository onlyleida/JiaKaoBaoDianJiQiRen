using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class PasswordRecoveryDesigner : ControlDesigner
{
	public bool RenderOuterTable
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public PasswordRecoveryDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
