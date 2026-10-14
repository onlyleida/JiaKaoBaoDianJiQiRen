using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class CreateUserWizardDesigner : WizardDesigner
{
	public CreateUserWizardDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void AddDesignerRegions(DesignerRegionCollection regions)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void ConvertToCustomNavigationTemplate()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
