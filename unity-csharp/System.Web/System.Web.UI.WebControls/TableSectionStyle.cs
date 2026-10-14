using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class TableSectionStyle : Style
{
	[NotifyParentProperty(true)]
	[DefaultValue(true)]
	public bool Visible
	{
		get
		{
			object obj = ViewState["Visible"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return true;
		}
		set
		{
			ViewState["Visible"] = value;
		}
	}
}
