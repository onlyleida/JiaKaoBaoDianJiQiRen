using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HtmlEmptyTagControlBuilder : ControlBuilder
{
	public override bool HasBody()
	{
		return false;
	}
}
