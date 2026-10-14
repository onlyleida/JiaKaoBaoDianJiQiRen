using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[DefaultEvent("Click")]
[Designer("System.Web.UI.Design.WebControls.PreviewControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[SupportsEventValidation]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ImageButton : Image, IPostBackDataHandler, IPostBackEventHandler, IButtonControl
{
	private static readonly object ClickEvent = new object();

	private static readonly object CommandEvent = new object();

	private int pos_x;

	private int pos_y;

	[Themeable(false)]
	[WebCategory("Behavior")]
	[DefaultValue(true)]
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

	[Themeable(false)]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
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

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(true)]
	[DefaultValue(true)]
	[Bindable(true)]
	public new virtual bool Enabled
	{
		get
		{
			return base.Enabled;
		}
		set
		{
			base.Enabled = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Themeable(false)]
	public override bool GenerateEmptyAlternateText
	{
		get
		{
			return false;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	[DefaultValue("")]
	[Themeable(false)]
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

	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty("*.aspx")]
	[DefaultValue("")]
	[Themeable(false)]
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
	[WebCategory("Behavior")]
	[Themeable(false)]
	[WebSysDescription("")]
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

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	protected override HtmlTextWriterTag TagKey => HtmlTextWriterTag.Input;

	protected virtual string Text
	{
		get
		{
			return AlternateText;
		}
		set
		{
			AlternateText = value;
		}
	}

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	string IButtonControl.Text
	{
		get
		{
			return Text;
		}
		set
		{
			Text = value;
		}
	}

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event ImageClickEventHandler Click
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

	event EventHandler IButtonControl.Click
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

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		Page page = Page;
		page?.VerifyRenderingInServerForm(this);
		writer.AddAttribute(HtmlTextWriterAttribute.Type, "image", fEncode: false);
		writer.AddAttribute(HtmlTextWriterAttribute.Name, UniqueID);
		base.AddAttributesToRender(writer);
		string onClientClick = OnClientClick;
		onClientClick = (string.IsNullOrEmpty(onClientClick) ? string.Empty : ClientScriptManager.EnsureEndsWithSemicolon(onClientClick));
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
	}

	internal virtual string GetClientScriptEventReference()
	{
		PostBackOptions postBackOptions = GetPostBackOptions();
		Page page = Page;
		if (postBackOptions.PerformValidation || !string.IsNullOrEmpty(postBackOptions.ActionUrl))
		{
			if (page == null)
			{
				return string.Empty;
			}
			return page.ClientScript.GetPostBackEventReference(postBackOptions, registerForEventValidation: true);
		}
		page?.ClientScript.RegisterForEventValidation(postBackOptions);
		return string.Empty;
	}

	protected virtual PostBackOptions GetPostBackOptions()
	{
		PostBackOptions postBackOptions = new PostBackOptions(this);
		Page page = Page;
		postBackOptions.ActionUrl = ((PostBackUrl.Length <= 0) ? null : page?.ResolveClientUrl(PostBackUrl));
		postBackOptions.Argument = string.Empty;
		postBackOptions.ClientSubmit = true;
		postBackOptions.RequiresJavaScriptProtocol = true;
		postBackOptions.PerformValidation = CausesValidation && page != null && page.AreValidatorsUplevel(ValidationGroup);
		if (postBackOptions.PerformValidation)
		{
			postBackOptions.ValidationGroup = ValidationGroup;
		}
		else
		{
			postBackOptions.ValidationGroup = null;
		}
		return postBackOptions;
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		string text = UniqueID;
		string text2 = postCollection[text + ".x"];
		string text3 = postCollection[text + ".y"];
		if (!string.IsNullOrEmpty(text2) && !string.IsNullOrEmpty(text3))
		{
			pos_x = int.Parse(text2);
			pos_y = int.Parse(text3);
			Page.RegisterRequiresRaiseEvent(this);
			return true;
		}
		text2 = postCollection[text];
		if (!string.IsNullOrEmpty(text2))
		{
			pos_x = int.Parse(text2);
			pos_y = 0;
			Page.RegisterRequiresRaiseEvent(this);
			return true;
		}
		return false;
	}

	protected virtual void RaisePostDataChangedEvent()
	{
	}

	protected virtual void RaisePostBackEvent(string eventArgument)
	{
		ValidateEvent(UniqueID, string.Empty);
		if (CausesValidation)
		{
			Page?.Validate(ValidationGroup);
		}
		OnClick(new ImageClickEventArgs(pos_x, pos_y));
		OnCommand(new CommandEventArgs(CommandName, CommandArgument));
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostData(postDataKey, postCollection);
	}

	void IPostBackDataHandler.RaisePostDataChangedEvent()
	{
		RaisePostDataChangedEvent();
	}

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		RaisePostBackEvent(eventArgument);
	}

	protected virtual void OnClick(ImageClickEventArgs e)
	{
		if (Events != null)
		{
			((ImageClickEventHandler)Events[ClickEvent])?.Invoke(this, e);
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

	protected internal override void OnPreRender(EventArgs e)
	{
		Page page = Page;
		if (page != null && IsEnabled)
		{
			page.RegisterRequiresPostBack(this);
		}
	}
}
