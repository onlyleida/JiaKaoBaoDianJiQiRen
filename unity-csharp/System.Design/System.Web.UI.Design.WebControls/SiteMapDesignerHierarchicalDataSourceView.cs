using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class SiteMapDesignerHierarchicalDataSourceView : DesignerHierarchicalDataSourceView
{
	public SiteMapDesignerHierarchicalDataSourceView(SiteMapDataSourceDesigner owner, string viewPath)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
