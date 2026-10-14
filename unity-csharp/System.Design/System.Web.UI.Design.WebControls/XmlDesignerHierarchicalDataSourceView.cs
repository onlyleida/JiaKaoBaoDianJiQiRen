using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class XmlDesignerHierarchicalDataSourceView : DesignerHierarchicalDataSourceView
{
	public XmlDesignerHierarchicalDataSourceView(XmlDataSourceDesigner owner, string viewPath)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
