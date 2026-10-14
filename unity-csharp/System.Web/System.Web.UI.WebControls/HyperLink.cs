using System.ComponentModel;
using System.Drawing.Design;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.HyperLinkDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ToolboxData("<{0}:HyperLink runat=\"server\">HyperLink</{0}:HyperLink>")]
[DefaultProperty("Text")]
[DataBindingHandler("System.Web.UI.Design.HyperLinkDataBindingHandler, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[ControlBuilder(typeof(HyperLinkControlBuilder))]
[ParseChildren(false)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HyperLink : WebControl
{
	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[DefaultValue("")]
	[Bindable(true)]
	[UrlProperty]
	public virtual string ImageUrl
	{
		get
		{
			return ViewState.GetString("ImageUrl", string.Empty);
		}
		set
		{
			ViewState["ImageUrl"] = value;
		}
	}

	[WebCategory("Navigation")]
	[WebSysDescription("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[DefaultValue("")]
	[Bindable(true)]
	public string NavigateUrl
	{
		get
		{
			return ViewState.GetString("NavigateUrl", string.Empty);
		}
		set
		{
			ViewState["NavigateUrl"] = value;
		}
	}

	[DefaultValue("")]
	[TypeConverter(typeof(TargetConverter))]
	[WebSysDescription("")]
	[WebCategory("Navigation")]
	public string Target
	{
		get
		{
			return ViewState.GetString("Target", string.Empty);
		}
		set
		{
			ViewState["Target"] = value;
		}
	}

	[WebCategory("Appearance")]
	[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
	[Bindable(true)]
	[WebSysDescription("")]
	[DefaultValue("")]
	[Localizable(true)]
	public virtual string Text
	{
		get
		{
			return ViewState.GetString("Text", string.Empty);
		}
		set
		{
			ViewState["Text"] = value;
			if (HasControls())
			{
				Controls.Clear();
			}
		}
	}

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	public virtual Unit ImageHeight
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public virtual Unit ImageWidth
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public HyperLink()
		: base(HtmlTextWriterTag.A)
	{
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
		AddDisplayStyleAttribute(writer);
		if (IsEnabled)
		{
			string target = Target;
			string navigateUrl = NavigateUrl;
			if (navigateUrl.Length > 0)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Href, ResolveClientUrl(navigateUrl));
			}
			if (target.Length > 0)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Target, target);
			}
		}
	}

	protected override void AddParsedSubObject(object obj)
	{
		if (HasControls())
		{
			base.AddParsedSubObject(obj);
		}
		else if (!(obj is LiteralControl literalControl))
		{
			string text = Text;
			if (text.Length != 0)
			{
				Text = null;
				Controls.Add(new LiteralControl(text));
			}
			base.AddParsedSubObject(obj);
		}
		else
		{
			Text = literalControl.Text;
		}
	}

	[MonoTODO("Why override?")]
	protected override void LoadViewState(object savedState)
	{
		base.LoadViewState(savedState);
	}

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
		if (HasControls() || HasRenderMethodDelegate())
		{
			base.RenderContents(writer);
			return;
		}
		string imageUrl = ImageUrl;
		if (!string.IsNullOrEmpty(imageUrl))
		{
			string toolTip = ToolTip;
			if (!string.IsNullOrEmpty(toolTip))
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Title, toolTip);
			}
			writer.AddAttribute(HtmlTextWriterAttribute.Src, ResolveClientUrl(imageUrl));
			toolTip = Text;
			writer.AddAttribute(HtmlTextWriterAttribute.Alt, toolTip);
			writer.RenderBeginTag(HtmlTextWriterTag.Img);
			writer.RenderEndTag();
		}
		else
		{
			writer.Write(Text);
		}
	}
}
