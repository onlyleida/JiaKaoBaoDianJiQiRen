using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls.WebParts;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class WebPartZoneDesigner : WebPartZoneBaseDesigner
{
	public WebPartZoneDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
