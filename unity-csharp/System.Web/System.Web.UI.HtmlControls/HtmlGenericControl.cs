using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[ConstructorNeedsTag(true)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlGenericControl : HtmlContainerControl
{
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public new string TagName
	{
		get
		{
			return _tagName;
		}
		set
		{
			_tagName = value;
		}
	}

	public HtmlGenericControl()
		: this("span")
	{
	}

	public HtmlGenericControl(string tag)
	{
		if (tag == null)
		{
			tag = "";
		}
		_tagName = tag;
	}
}
