using System.ComponentModel;
using System.Security.Permissions;

namespace System.Drawing.Design;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
public class ToolboxComponentsCreatedEventArgs : EventArgs
{
	private readonly IComponent[] comps;

	public IComponent[] Components => (IComponent[])comps.Clone();

	public ToolboxComponentsCreatedEventArgs(IComponent[] components)
	{
		comps = components;
	}
}
