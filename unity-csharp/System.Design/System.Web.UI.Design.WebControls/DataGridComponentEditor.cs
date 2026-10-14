using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class DataGridComponentEditor : BaseDataListComponentEditor
{
	public DataGridComponentEditor()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public DataGridComponentEditor(int initialPage)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
