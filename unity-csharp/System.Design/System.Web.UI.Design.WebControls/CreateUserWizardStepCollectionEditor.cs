using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class CreateUserWizardStepCollectionEditor : WizardStepCollectionEditor
{
	public CreateUserWizardStepCollectionEditor(Type type)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
