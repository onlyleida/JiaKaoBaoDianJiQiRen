using System.ComponentModel.Design;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class EmbeddedMailObjectCollectionEditor : CollectionEditor
{
	public EmbeddedMailObjectCollectionEditor(Type type)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
