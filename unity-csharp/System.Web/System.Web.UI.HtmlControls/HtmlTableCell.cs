using System.ComponentModel;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI.HtmlControls;

[ConstructorNeedsTag(true)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlTableCell : HtmlContainerControl
{
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public string Align
	{
		get
		{
			string text = Attributes["align"];
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
				Attributes.Remove("align");
			}
			else
			{
				Attributes["align"] = value;
			}
		}
	}

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string BgColor
	{
		get
		{
			string text = Attributes["bgcolor"];
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
				Attributes.Remove("bgcolor");
			}
			else
			{
				Attributes["bgcolor"] = value;
			}
		}
	}

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public string BorderColor
	{
		get
		{
			string text = Attributes["bordercolor"];
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
				Attributes.Remove("bordercolor");
			}
			else
			{
				Attributes["bordercolor"] = value;
			}
		}
	}

	[WebCategory("Layout")]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	public int ColSpan
	{
		get
		{
			string text = Attributes["colspan"];
			if (text != null)
			{
				return Convert.ToInt32(text);
			}
			return -1;
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("colspan");
			}
			else
			{
				Attributes["colspan"] = value.ToString(Helpers.InvariantCulture);
			}
		}
	}

	[WebCategory("Layout")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	public string Height
	{
		get
		{
			string text = Attributes["height"];
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
				Attributes.Remove("align");
			}
			else
			{
				Attributes["height"] = value;
			}
		}
	}

	[WebCategory("Behavior")]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[TypeConverter(typeof(MinimizableAttributeTypeConverter))]
	[WebSysDescription("")]
	public bool NoWrap
	{
		get
		{
			return Attributes["nowrap"] == "nowrap";
		}
		set
		{
			if (value)
			{
				Attributes["nowrap"] = "nowrap";
			}
			else
			{
				Attributes.Remove("nowrap");
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebCategory("Layout")]
	[DefaultValue("")]
	[WebSysDescription("")]
	public int RowSpan
	{
		get
		{
			string text = Attributes["rowspan"];
			if (text != null)
			{
				return Convert.ToInt32(text);
			}
			return -1;
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("rowspan");
			}
			else
			{
				Attributes["rowspan"] = value.ToString(Helpers.InvariantCulture);
			}
		}
	}

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	public string VAlign
	{
		get
		{
			string text = Attributes["valign"];
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
				Attributes.Remove("valign");
			}
			else
			{
				Attributes["valign"] = value;
			}
		}
	}

	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	[WebCategory("Layout")]
	public string Width
	{
		get
		{
			string text = Attributes["width"];
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
				Attributes.Remove("width");
			}
			else
			{
				Attributes["width"] = value;
			}
		}
	}

	public HtmlTableCell()
		: base("td")
	{
	}

	public HtmlTableCell(string tagName)
		: base(tagName)
	{
	}

	protected override void RenderEndTag(HtmlTextWriter writer)
	{
		writer.WriteEndTag(TagName);
		if (writer.Indent == 0)
		{
			writer.WriteLine();
		}
	}
}
