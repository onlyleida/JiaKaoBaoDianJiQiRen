using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[ParseChildren(false)]
[ToolboxData("<{0}:LinkButton runat=\"server\">LinkButton</{0}:LinkButton>")]
[SupportsEventValidation]
[Designer("System.Web.UI.Design.WebControls.LinkButtonDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ControlBuilder(typeof(LinkButtonControlBuilder))]
[DataBindingHandler("System.Web.UI.Design.TextDataBindingHandler, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[DefaultEvent("Click")]
[DefaultProperty("Text")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class LinkButton : WebControl, IPostBackEventHandler, IButtonControl
{
	private static readonly object ClickEvent = new object();

	private static readonly object CommandEvent = new object();

	[DefaultValue(true)]
	[WebCategory("Behavior")]
	[Themeable(false)]
	[WebSysDescription("")]
	public virtual bool CausesValidation
	{
		get
		{
			return ViewState.GetBool("CausesValidation", def: true);
		}
		set
		{
			ViewState["CausesValidation"] = value;
		}
	}

	[Bindable(true)]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[Themeable(false)]
	public string CommandArgument
	{
		get
		{
			return ViewState.GetString("CommandArgument", string.Empty);
		}
		set
		{
			ViewState["CommandArgument"] = value;
		}
	}

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[Themeable(false)]
	public string CommandName
	{
		get
		{
			return ViewState.GetString("CommandName", string.Empty);
		}
		set
		{
			ViewState["CommandName"] = value;
		}
	}

	[WebSysDescription("")]
	[Themeable(false)]
	[DefaultValue("")]
	[WebCategory("Behavior")]
	public virtual string OnClientClick
	{
		get
		{
			return ViewState.GetString("OnClientClick", string.Empty);
		}
		set
		{
			ViewState["OnClientClick"] = value;
		}
	}

	[DefaultValue("")]
	[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
	[Localizable(true)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[Bindable(true)]
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

	[UrlProperty("*.aspx")]
	[Themeable(false)]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public virtual string PostBackUrl
	{
		get
		{
			return ViewState.GetString("PostBackUrl", string.Empty);
		}
		set
		{
			ViewState["PostBackUrl"] = value;
		}
	}

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[Themeable(false)]
	public virtual string ValidationGroup
	{
		get
		{
			return ViewState.GetString("ValidationGroup", string.Empty);
		}
		set
		{
			ViewState["ValidationGroup"] = value;
		}
	}

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event EventHandler Click
	{
		add
		{
			Events.AddHandler(ClickEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ClickEvent, value);
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event CommandEventHandler Command
	{
		add
		{
			Events.AddHandler(CommandEvent, value);
		}
		remove
		{
			Events.RemoveHandler(CommandEvent, value);
		}
	}

	public LinkButton()
		: base(HtmlTextWriterTag.A)
	{
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		Page page = Page;
		page?.VerifyRenderingInServerForm(this);
		base.AddAttributesToRender(writer);
		bool isEnabled = IsEnabled;
		string onClientClick = OnClientClick;
		onClientClick = ClientScriptManager.EnsureEndsWithSemicolon(onClientClick);
		if (HasAttributes && Attributes["onclick"] != null)
		{
			onClientClick = ClientScriptManager.EnsureEndsWithSemicolon(onClientClick + Attributes["onclick"]);
			Attributes.Remove("onclick");
		}
		if (onClientClick.Length > 0)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Onclick, onClientClick);
		}
		if (isEnabled && page != null)
		{
			PostBackOptions postBackOptions = GetPostBackOptions();
			string postBackEventReference = page.ClientScript.GetPostBackEventReference(postBackOptions, registerForEventValidation: true);
			writer.AddAttribute(HtmlTextWriterAttribute.Href, postBackEventReference);
		}
		AddDisplayStyleAttribute(writer);
	}

	protected virtual void RaisePostBackEvent(string eventArgument)
	{
		ValidateEvent(UniqueID, eventArgument);
		if (CausesValidation)
		{
			Page?.Validate(ValidationGroup);
		}
		OnClick(EventArgs.Empty);
		OnCommand(new CommandEventArgs(CommandName, CommandArgument));
	}

	void IPostBackEventHandler.RaisePostBackEvent(string ea)
	{
		RaisePostBackEvent(ea);
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

	protected virtual PostBackOptions GetPostBackOptions()
	{
		PostBackOptions postBackOptions = new PostBackOptions(this);
		Page page = Page;
		PostBackOptions postBackOptions2 = postBackOptions;
		string actionUrl;
		if (PostBackUrl.Length <= 0)
		{
			actionUrl = null;
		}
		else
		{
			actionUrl = ((page != null) ? page.ResolveClientUrl(PostBackUrl) : PostBackUrl);
		}
		postBackOptions2.ActionUrl = actionUrl;
		postBackOptions.ValidationGroup = null;
		postBackOptions.Argument = string.Empty;
		postBackOptions.ClientSubmit = true;
		postBackOptions.RequiresJavaScriptProtocol = true;
		postBackOptions.PerformValidation = CausesValidation && page != null && page.AreValidatorsUplevel(ValidationGroup);
		if (postBackOptions.PerformValidation)
		{
			postBackOptions.ValidationGroup = ValidationGroup;
		}
		return postBackOptions;
	}

	protected override void LoadViewState(object savedState)
	{
		base.LoadViewState(savedState);
		if (ViewState["Text"] != null)
		{
			Text = (string)ViewState["Text"];
		}
	}

	[MonoTODO("Why override?")]
	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
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

	protected virtual void OnClick(EventArgs e)
	{
		((EventHandler)Events[ClickEvent])?.Invoke(this, e);
	}

	protected virtual void OnCommand(CommandEventArgs e)
	{
		((CommandEventHandler)Events[CommandEvent])?.Invoke(this, e);
		RaiseBubbleEvent(this, e);
	}
}
