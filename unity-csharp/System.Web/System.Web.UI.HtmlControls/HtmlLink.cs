using System.ComponentModel;

namespace System.Web.UI.HtmlControls;

[ControlBuilder(typeof(HtmlEmptyTagControlBuilder))]
public class HtmlLink : HtmlControl
{
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	[UrlProperty]
	public virtual string Href
	{
		get
		{
			string text = Attributes["href"];
			if (text == null)
			{
				return "";
			}
			return text;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("href");
			}
			else
			{
				Attributes["href"] = value;
			}
		}
	}

	public HtmlLink()
		: base("link")
	{
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		writer.WriteBeginTag(TagName);
		RenderAttributes(writer);
		writer.Write(" />");
	}

	[MonoTODO("why override?")]
	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		if (Href.Length > 0)
		{
			Href = ResolveClientUrl(Href);
		}
		base.RenderAttributes(writer);
	}
}
