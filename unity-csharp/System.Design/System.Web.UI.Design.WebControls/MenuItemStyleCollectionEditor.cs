using System.ComponentModel.Design;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class MenuItemStyleCollectionEditor : CollectionEditor
{
	public MenuItemStyleCollectionEditor(Type type)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
