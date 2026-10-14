using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class ContentPlaceHolderDesigner : ControlDesigner
{
	public ContentPlaceHolderDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
