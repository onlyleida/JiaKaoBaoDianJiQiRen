using System.ComponentModel.Design;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class WizardStepCollectionEditor : CollectionEditor
{
	public WizardStepCollectionEditor(Type type)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
