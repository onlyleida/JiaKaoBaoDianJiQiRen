using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SupportsPreviewControl(true)]
[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class ValidationSummaryDesigner : PreviewControlDesigner
{
	public ValidationSummaryDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
