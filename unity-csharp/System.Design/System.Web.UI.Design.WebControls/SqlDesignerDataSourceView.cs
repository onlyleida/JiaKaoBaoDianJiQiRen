using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class SqlDesignerDataSourceView : DesignerDataSourceView
{
	public SqlDesignerDataSourceView(SqlDataSourceDesigner owner, string viewName)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
