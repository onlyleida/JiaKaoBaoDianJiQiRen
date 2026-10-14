using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class ChangePasswordDesigner : ControlDesigner
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

	public ChangePasswordDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
