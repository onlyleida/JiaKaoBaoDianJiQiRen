using System.Collections;
using System.Security.Permissions;
using System.Web.UI.WebControls;
using System.Web.Util;

namespace System.Web.UI.HtmlControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlSelectBuilder : ControlBuilder
{
	public override bool AllowWhitespaceLiterals()
	{
		return false;
	}

	public override Type GetChildControlType(string tagName, IDictionary attribs)
	{
		if (string.Compare(tagName, "option", ignoreCase: true, Helpers.InvariantCulture) != 0)
		{
			return null;
		}
		if (attribs["selected"] is string { Length: >0 } text && string.Compare(text, "selected", ignoreCase: true, Helpers.InvariantCulture) == 0)
		{
			attribs["selected"] = "true";
		}
		return typeof(ListItem);
	}
}
