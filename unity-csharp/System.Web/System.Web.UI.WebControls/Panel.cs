using System.ComponentModel;
using System.Drawing.Design;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.PanelDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ParseChildren(false)]
[PersistChildren(true)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Panel : WebControl
{
	private PanelStyle PanelStyle => ControlStyle as PanelStyle;

	[WebSysDescription("")]
	[DefaultValue("")]
	[WebCategory("Appearance")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[UrlProperty]
	public virtual string BackImageUrl
	{
		get
		{
			if (ControlStyleCreated)
			{
				if (PanelStyle != null)
				{
					return PanelStyle.BackImageUrl;
				}
				return ViewState.GetString("BackImageUrl", string.Empty);
			}
			return string.Empty;
		}
		set
		{
			if (PanelStyle != null)
			{
				PanelStyle.BackImageUrl = value;
			}
			else
			{
				ViewState["BackImageUrl"] = value;
			}
		}
	}

	[WebCategory("Layout")]
	[WebSysDescription("")]
	[DefaultValue(HorizontalAlign.NotSet)]
	public virtual HorizontalAlign HorizontalAlign
	{
		get
		{
			if (ControlStyleCreated)
			{
				if (PanelStyle != null)
				{
					return PanelStyle.HorizontalAlign;
				}
				if (ViewState["HorizontalAlign"] == null)
				{
					return HorizontalAlign.NotSet;
				}
				return (HorizontalAlign)ViewState["HorizontalAlign"];
			}
			return HorizontalAlign.NotSet;
		}
		set
		{
			if (PanelStyle != null)
			{
				PanelStyle.HorizontalAlign = value;
			}
			else
			{
				ViewState["HorizontalAlign"] = value;
			}
		}
	}

	[WebCategory("Layout")]
	[DefaultValue(true)]
	[WebSysDescription("")]
	public virtual bool Wrap
	{
		get
		{
			if (ControlStyleCreated)
			{
				if (PanelStyle != null)
				{
					return PanelStyle.Wrap;
				}
				return ViewState.GetBool("Wrap", def: true);
			}
			return true;
		}
		set
		{
			if (PanelStyle != null)
			{
				PanelStyle.Wrap = value;
			}
			else
			{
				ViewState["Wrap"] = value;
			}
		}
	}

	[Themeable(false)]
	[DefaultValue("")]
	public virtual string DefaultButton
	{
		get
		{
			return ViewState.GetString("DefaultButton", string.Empty);
		}
		set
		{
			ViewState["DefaultButton"] = value;
		}
	}

	[DefaultValue(ContentDirection.NotSet)]
	public virtual ContentDirection Direction
	{
		get
		{
			if (ControlStyleCreated)
			{
				if (PanelStyle != null)
				{
					return PanelStyle.Direction;
				}
				if (ViewState["Direction"] == null)
				{
					return ContentDirection.NotSet;
				}
				return (ContentDirection)ViewState["Direction"];
			}
			return ContentDirection.NotSet;
		}
		set
		{
			if (PanelStyle != null)
			{
				PanelStyle.Direction = value;
			}
			else
			{
				ViewState["Direction"] = value;
			}
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	public virtual string GroupingText
	{
		get
		{
			return ViewState.GetString("GroupingText", string.Empty);
		}
		set
		{
			ViewState["GroupingText"] = value;
		}
	}

	[DefaultValue(ScrollBars.None)]
	public virtual ScrollBars ScrollBars
	{
		get
		{
			if (ControlStyleCreated)
			{
				if (PanelStyle != null)
				{
					return PanelStyle.ScrollBars;
				}
				if (ViewState["ScrollBars"] == null)
				{
					return ScrollBars.None;
				}
				return (ScrollBars)ViewState["Direction"];
			}
			return ScrollBars.None;
		}
		set
		{
			if (PanelStyle != null)
			{
				PanelStyle.ScrollBars = value;
			}
			else
			{
				ViewState["ScrollBars"] = value;
			}
		}
	}

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	public Panel()
		: base(HtmlTextWriterTag.Div)
	{
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
		string backImageUrl = BackImageUrl;
		if (backImageUrl != "")
		{
			backImageUrl = ResolveClientUrl(backImageUrl);
			writer.AddStyleAttribute(HtmlTextWriterStyle.BackgroundImage, backImageUrl);
		}
		if (!string.IsNullOrEmpty(DefaultButton) && Page != null)
		{
			Control control = FindControl(DefaultButton);
			if (control == null || !(control is IButtonControl))
			{
				throw new InvalidOperationException($"The DefaultButton of '{ID}' must be the ID of a control of type IButtonControl.");
			}
			Page.ClientScript.RegisterWebFormClientScript();
			writer.AddAttribute("onkeypress", "javascript:return " + Page.WebFormScriptReference + ".WebForm_FireDefaultButton(event, '" + control.ClientID + "')");
		}
		if (Direction != ContentDirection.NotSet)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Dir, (Direction == ContentDirection.RightToLeft) ? "rtl" : "ltr", fEncode: false);
		}
		switch (ScrollBars)
		{
		case ScrollBars.Auto:
			writer.AddStyleAttribute(HtmlTextWriterStyle.Overflow, "auto");
			break;
		case ScrollBars.Both:
			writer.AddStyleAttribute(HtmlTextWriterStyle.Overflow, "scroll");
			break;
		case ScrollBars.Horizontal:
			writer.AddStyleAttribute(HtmlTextWriterStyle.OverflowX, "scroll");
			break;
		case ScrollBars.Vertical:
			writer.AddStyleAttribute(HtmlTextWriterStyle.OverflowY, "scroll");
			break;
		}
		if (!Wrap)
		{
			writer.AddStyleAttribute(HtmlTextWriterStyle.WhiteSpace, "nowrap");
		}
		string text = "";
		switch (HorizontalAlign)
		{
		case HorizontalAlign.Center:
			text = "center";
			break;
		case HorizontalAlign.Justify:
			text = "justify";
			break;
		case HorizontalAlign.Left:
			text = "left";
			break;
		case HorizontalAlign.Right:
			text = "right";
			break;
		}
		if (text != "")
		{
			writer.AddStyleAttribute(HtmlTextWriterStyle.TextAlign, text);
		}
	}

	protected override Style CreateControlStyle()
	{
		return new PanelStyle(ViewState);
	}

	public override void RenderBeginTag(HtmlTextWriter writer)
	{
		base.RenderBeginTag(writer);
		if (!string.IsNullOrEmpty(GroupingText))
		{
			writer.RenderBeginTag(HtmlTextWriterTag.Fieldset);
			writer.RenderBeginTag(HtmlTextWriterTag.Legend);
			writer.Write(GroupingText);
			writer.RenderEndTag();
		}
	}

	public override void RenderEndTag(HtmlTextWriter writer)
	{
		if (!string.IsNullOrEmpty(GroupingText))
		{
			writer.RenderEndTag();
		}
		base.RenderEndTag(writer);
	}
}
