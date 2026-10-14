using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class ObjectDesignerDataSourceView : DesignerDataSourceView
{
	public ObjectDesignerDataSourceView(ObjectDataSourceDesigner owner, string viewName)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
