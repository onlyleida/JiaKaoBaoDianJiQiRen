using System.ComponentModel.Design;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class SubMenuStyleCollectionEditor : CollectionEditor
{
	public SubMenuStyleCollectionEditor(Type type)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
