using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SupportsPreviewControl(true)]
[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class SubstitutionDesigner : ControlDesigner
{
	public SubstitutionDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
