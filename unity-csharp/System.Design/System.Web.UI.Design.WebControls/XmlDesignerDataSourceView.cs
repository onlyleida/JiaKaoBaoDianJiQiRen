using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class XmlDesignerDataSourceView : DesignerDataSourceView
{
	public XmlDesignerDataSourceView(XmlDataSourceDesigner owner, string viewName)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
