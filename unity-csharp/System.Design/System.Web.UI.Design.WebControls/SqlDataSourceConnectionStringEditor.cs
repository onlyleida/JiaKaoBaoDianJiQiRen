using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class SqlDataSourceConnectionStringEditor : ConnectionStringEditor
{
	public SqlDataSourceConnectionStringEditor()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
