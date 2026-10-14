using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.ButtonDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DataBindingHandler("System.Web.UI.Design.TextDataBindingHandler, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[DefaultProperty("Text")]
[SupportsEventValidation]
[ToolboxData("<{0}:Button runat=\"server\" Text=\"Button\"></{0}:Button>")]
[DefaultEvent("Click")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Button : WebControl, IPostBackEventHandler, IButtonControl
{
	private static readonly object ClickEvent = new object();

	private static readonly object CommandEvent = new object();

	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[DefaultValue(true)]
	[Themeable(false)]
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

	[DefaultValue("")]
	[Bindable(true)]
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

	[Themeable(false)]
	[WebCategory("Behavior")]
	[DefaultValue("")]
	[WebSysDescription("")]
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

	[Themeable(false)]
	[DefaultValue("")]
	[WebSysDescription("")]
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

	[Localizable(true)]
	[DefaultValue("")]
	[Bindable(true)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public string Text
	{
		get
		{
			return ViewState.GetString("Text", string.Empty);
		}
		set
		{
			ViewState["Text"] = value;
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue(true)]
	[Themeable(false)]
	public virtual bool UseSubmitBehavior
	{
		get
		{
			return ViewState.GetBool("UseSubmitBehavior", def: true);
		}
		set
		{
			ViewState["UseSubmitBehavior"] = value;
		}
	}

	[DefaultValue("")]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[Themeable(false)]
	[UrlProperty("*.aspx")]
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
	[Themeable(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
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

	public Button()
		: base(HtmlTextWriterTag.Input)
	{
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		Page page = Page;
		page?.VerifyRenderingInServerForm(this);
		writer.AddAttribute(HtmlTextWriterAttribute.Type, UseSubmitBehavior ? "submit" : "button", fEncode: false);
		writer.AddAttribute(HtmlTextWriterAttribute.Name, UniqueID);
		writer.AddAttribute(HtmlTextWriterAttribute.Value, Text);
		string onClientClick = OnClientClick;
		onClientClick = ClientScriptManager.EnsureEndsWithSemicolon(onClientClick);
		if (HasAttributes && Attributes["onclick"] != null)
		{
			onClientClick = ClientScriptManager.EnsureEndsWithSemicolon(onClientClick + Attributes["onclick"]);
			Attributes.Remove("onclick");
		}
		if (page != null)
		{
			onClientClick += GetClientScriptEventReference();
		}
		if (onClientClick.Length > 0)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Onclick, onClientClick);
		}
		base.AddAttributesToRender(writer);
	}

	internal virtual string GetClientScriptEventReference()
	{
		PostBackOptions postBackOptions = GetPostBackOptions();
		Page page = Page;
		if (page != null)
		{
			return page.ClientScript.GetPostBackEventReference(postBackOptions, registerForEventValidation: true);
		}
		return string.Empty;
	}

	protected virtual PostBackOptions GetPostBackOptions()
	{
		PostBackOptions postBackOptions = new PostBackOptions(this);
		postBackOptions.ActionUrl = ((PostBackUrl.Length > 0) ? Page.ResolveClientUrl(PostBackUrl) : null);
		postBackOptions.ValidationGroup = null;
		postBackOptions.Argument = string.Empty;
		postBackOptions.RequiresJavaScriptProtocol = false;
		postBackOptions.ClientSubmit = !UseSubmitBehavior;
		Page page = Page;
		postBackOptions.PerformValidation = CausesValidation && page != null && page.AreValidatorsUplevel(ValidationGroup);
		if (postBackOptions.PerformValidation)
		{
			postBackOptions.ValidationGroup = ValidationGroup;
		}
		return postBackOptions;
	}

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		RaisePostBackEvent(eventArgument);
	}

	protected virtual void OnClick(EventArgs e)
	{
		if (Events != null)
		{
			((EventHandler)Events[ClickEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnCommand(CommandEventArgs e)
	{
		if (Events != null)
		{
			((CommandEventHandler)Events[CommandEvent])?.Invoke(this, e);
		}
		RaiseBubbleEvent(this, e);
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

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
	}
}
