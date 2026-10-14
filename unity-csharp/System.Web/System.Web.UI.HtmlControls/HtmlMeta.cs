using System.ComponentModel;
using System.Web.Configuration;

namespace System.Web.UI.HtmlControls;

[ControlBuilder(typeof(HtmlEmptyTagControlBuilder))]
public class HtmlMeta : HtmlControl
{
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	public virtual string Content
	{
		get
		{
			string text = Attributes["content"];
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
				Attributes.Remove("content");
			}
			else
			{
				Attributes["content"] = value;
			}
		}
	}

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string HttpEquiv
	{
		get
		{
			string text = Attributes["http-equiv"];
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
				Attributes.Remove("http-equiv");
			}
			else
			{
				Attributes["http-equiv"] = value;
			}
		}
	}

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string Name
	{
		get
		{
			string text = Attributes["name"];
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
				Attributes.Remove("name");
			}
			else
			{
				Attributes["name"] = value;
			}
		}
	}

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string Scheme
	{
		get
		{
			string text = Attributes["scheme"];
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
				Attributes.Remove("scheme");
			}
			else
			{
				Attributes["scheme"] = value;
			}
		}
	}

	public HtmlMeta()
		: base("meta")
	{
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (WebConfigurationManager.GetSection("system.web/xhtmlConformance") is XhtmlConformanceSection { Mode: XhtmlConformanceMode.Legacy })
		{
			base.Render(writer);
			return;
		}
		writer.WriteBeginTag(TagName);
		RenderAttributes(writer);
		writer.Write("/>");
	}
}
