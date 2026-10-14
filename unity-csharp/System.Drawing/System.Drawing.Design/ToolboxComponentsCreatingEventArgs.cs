using System.ComponentModel.Design;
using System.Security.Permissions;

namespace System.Drawing.Design;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
public class ToolboxComponentsCreatingEventArgs : EventArgs
{
	private readonly IDesignerHost host;

	public IDesignerHost DesignerHost => host;

	public ToolboxComponentsCreatingEventArgs(IDesignerHost host)
	{
		this.host = host;
	}
}
