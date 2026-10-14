using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[ControlBuilder(typeof(HtmlEmptyTagControlBuilder))]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class HtmlInputControl : HtmlControl
{
	[DefaultValue("")]
	[WebCategory("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	public virtual string Name
	{
		get
		{
			return UniqueID;
		}
		set
		{
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[DefaultValue("")]
	public string Type => Attributes["type"];

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string Value
	{
		get
		{
			string text = Attributes["value"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("value");
			}
			else
			{
				Attributes["value"] = value;
			}
		}
	}

	protected HtmlInputControl(string type)
		: base("input")
	{
		if (type == null)
		{
			type = string.Empty;
		}
		Attributes["type"] = type;
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		if (Attributes["name"] == null)
		{
			writer.WriteAttribute("name", Name);
		}
		base.RenderAttributes(writer);
		writer.Write(" /");
	}
}
