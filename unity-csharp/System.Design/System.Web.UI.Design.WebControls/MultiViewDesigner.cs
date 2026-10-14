using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class MultiViewDesigner : ContainerControlDesigner
{
	protected override bool NoWrap
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public MultiViewDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
