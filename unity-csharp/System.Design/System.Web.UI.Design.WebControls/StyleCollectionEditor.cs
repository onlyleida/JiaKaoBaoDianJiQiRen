using System.ComponentModel.Design;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class StyleCollectionEditor : CollectionEditor
{
	public StyleCollectionEditor(Type type)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
