using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlTitle : HtmlControl
{
	private string text;

	[Localizable(true)]
	[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string Text
	{
		get
		{
			return text;
		}
		set
		{
			text = value;
		}
	}

	protected override void AddParsedSubObject(object obj)
	{
		if (obj is LiteralControl literalControl)
		{
			text = literalControl.Text;
		}
		else
		{
			base.AddParsedSubObject(obj);
		}
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new ControlCollection(this);
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		writer.RenderBeginTag(HtmlTextWriterTag.Title);
		if (HasControls() || HasRenderMethodDelegate())
		{
			RenderChildren(writer);
		}
		else
		{
			writer.Write(text);
		}
		writer.RenderEndTag();
	}
}
