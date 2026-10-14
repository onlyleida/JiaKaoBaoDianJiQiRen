using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls.WebParts;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class ToolZoneDesigner : WebZoneDesigner
{
	protected bool ViewInBrowseMode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public ToolZoneDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
