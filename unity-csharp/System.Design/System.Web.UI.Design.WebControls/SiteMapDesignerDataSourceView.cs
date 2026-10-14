using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class SiteMapDesignerDataSourceView : DesignerDataSourceView
{
	public SiteMapDesignerDataSourceView(SiteMapDataSourceDesigner owner, string viewName)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
