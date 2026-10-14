using System.Collections;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlHeadBuilder : ControlBuilder
{
	public override bool AllowWhitespaceLiterals()
	{
		return false;
	}

	public override Type GetChildControlType(string tagName, IDictionary attribs)
	{
		if (string.Compare(tagName, "title", StringComparison.OrdinalIgnoreCase) == 0)
		{
			return typeof(HtmlTitle);
		}
		if (string.Compare(tagName, "link", StringComparison.OrdinalIgnoreCase) == 0)
		{
			return typeof(HtmlLink);
		}
		if (string.Compare(tagName, "meta", StringComparison.OrdinalIgnoreCase) == 0)
		{
			return typeof(HtmlMeta);
		}
		return null;
	}
}
