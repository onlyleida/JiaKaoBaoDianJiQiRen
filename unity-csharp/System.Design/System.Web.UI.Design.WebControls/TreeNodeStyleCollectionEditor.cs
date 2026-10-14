using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class TreeNodeStyleCollectionEditor : StyleCollectionEditor
{
	public TreeNodeStyleCollectionEditor(Type type)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
