using System.ComponentModel;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI.HtmlControls;

[ControlBuilder(typeof(HtmlEmptyTagControlBuilder))]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlImage : HtmlControl
{
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebCategory("Layout")]
	[DefaultValue("")]
	[WebSysDescription("")]
	public string Align
	{
		get
		{
			string text = Attributes["align"];
			if (text == null)
			{
				return string.Empty;
			}
			return text;
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

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Localizable(true)]
	public string Alt
	{
		get
		{
			string text = Attributes["alt"];
			if (text == null)
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("alt");
			}
			else
			{
				Attributes["alt"] = value;
			}
		}
	}

	[DefaultValue(0)]
	[WebCategory("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	public int Border
	{
		get
		{
			string text = Attributes["border"];
			if (text == null)
			{
				return -1;
			}
			return int.Parse(text, Helpers.InvariantCulture);
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("border");
			}
			else
			{
				Attributes["border"] = value.ToString();
			}
		}
	}

	[DefaultValue(100)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int Height
	{
		get
		{
			string text = Attributes["height"];
			if (text == null)
			{
				return -1;
			}
			return int.Parse(text, Helpers.InvariantCulture);
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("height");
			}
			else
			{
				Attributes["height"] = value.ToString();
			}
		}
	}

	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[UrlProperty]
	[DefaultValue("")]
	public string Src
	{
		get
		{
			string text = Attributes["src"];
			if (text == null)
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("src");
			}
			else
			{
				Attributes["src"] = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(100)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public int Width
	{
		get
		{
			string text = Attributes["width"];
			if (text == null)
			{
				return -1;
			}
			return int.Parse(text, Helpers.InvariantCulture);
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("width");
			}
			else
			{
				Attributes["width"] = value.ToString();
			}
		}
	}

	public HtmlImage()
		: base("img")
	{
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		PreProcessRelativeReference(writer, "src");
		string text = Attributes["src"];
		if (text == null || text.Length == 0)
		{
			Attributes.Remove("src");
		}
		base.RenderAttributes(writer);
		writer.Write(" /");
	}
}
