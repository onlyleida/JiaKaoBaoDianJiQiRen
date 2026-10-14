using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls.WebParts;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class CatalogZoneDesigner : ToolZoneDesigner
{
	public CatalogZoneDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
