using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class UserControlControlBuilder : ControlBuilder
{
	public override bool NeedsTagInnerText()
	{
		return false;
	}

	[MonoTODO("Not implemented, does nothing")]
	public override void SetTagInnerText(string text)
	{
	}

	public override object BuildObject()
	{
		return base.BuildObject();
	}
}
