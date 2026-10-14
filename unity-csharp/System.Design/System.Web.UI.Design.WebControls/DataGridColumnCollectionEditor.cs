using System.Drawing.Design;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class DataGridColumnCollectionEditor : UITypeEditor
{
	public DataGridColumnCollectionEditor()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
