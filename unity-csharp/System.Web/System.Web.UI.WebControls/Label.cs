using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[ControlValueProperty("Text", null)]
[ToolboxData("<{0}:Label runat=\"server\" Text=\"Label\"></{0}:Label>")]
[ParseChildren(false)]
[Designer("System.Web.UI.Design.WebControls.LabelDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultProperty("Text")]
[DataBindingHandler("System.Web.UI.Design.TextDataBindingHandler, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[ControlBuilder(typeof(LabelControlBuilder))]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Label : WebControl, ITextControl
{
	[WebSysDescription("")]
	[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
	[DefaultValue("")]
	[Bindable(true)]
	[WebCategory("Appearance")]
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

	[IDReferenceProperty(typeof(Control))]
	[TypeConverter(typeof(AssociatedControlConverter))]
	[Themeable(false)]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Accessibility")]
	public virtual string AssociatedControlID
	{
		get
		{
			return ViewState.GetString("AssociatedControlID", string.Empty);
		}
		set
		{
			ViewState["AssociatedControlID"] = value;
		}
	}

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	protected override HtmlTextWriterTag TagKey
	{
		get
		{
			if (!string.IsNullOrEmpty(AssociatedControlID))
			{
				return HtmlTextWriterTag.Label;
			}
			return HtmlTextWriterTag.Span;
		}
	}

	protected override void LoadViewState(object savedState)
	{
		base.LoadViewState(savedState);
		if (ViewState["Text"] != null)
		{
			Text = (string)ViewState["Text"];
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

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
		if (HasControls() || HasRenderMethodDelegate())
		{
			base.RenderContents(writer);
		}
		else
		{
			writer.Write(Text);
		}
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
		if (!string.IsNullOrEmpty(AssociatedControlID))
		{
			writer.AddAttribute(HtmlTextWriterAttribute.For, NamingContainer.FindControl(AssociatedControlID).ClientID);
		}
	}
}
