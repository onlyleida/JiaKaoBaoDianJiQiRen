using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class HtmlContainerControl : HtmlControl
{
	[HtmlControlPersistable(false)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string InnerHtml
	{
		get
		{
			if (Controls.Count == 0)
			{
				return string.Empty;
			}
			if (Controls.Count == 1)
			{
				Control control = Controls[0];
				if (control is LiteralControl literalControl)
				{
					return literalControl.Text;
				}
				if (control is DataBoundLiteralControl dataBoundLiteralControl)
				{
					return dataBoundLiteralControl.Text;
				}
			}
			throw new HttpException("There is no literal content!");
		}
		set
		{
			Controls.Clear();
			Controls.Add(new LiteralControl(value));
			if (value == null)
			{
				ViewState.Remove("innerhtml");
			}
			else
			{
				ViewState["innerhtml"] = value;
			}
		}
	}

	[HtmlControlPersistable(false)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string InnerText
	{
		get
		{
			return HttpUtility.HtmlDecode(InnerHtml);
		}
		set
		{
			InnerHtml = HttpUtility.HtmlEncode(value);
		}
	}

	protected HtmlContainerControl()
		: this("span")
	{
	}

	public HtmlContainerControl(string tag)
		: base(tag)
	{
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		RenderBeginTag(writer);
		RenderChildren(writer);
		RenderEndTag(writer);
	}

	protected virtual void RenderEndTag(HtmlTextWriter writer)
	{
		writer.WriteEndTag(TagName);
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		ViewState.Remove("innerhtml");
		base.RenderAttributes(writer);
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new ControlCollection(this);
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState != null)
		{
			base.LoadViewState(savedState);
			if (ViewState["innerhtml"] is string innerHtml)
			{
				InnerHtml = innerHtml;
			}
		}
	}
}
