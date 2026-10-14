using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[SupportsEventValidation]
[DefaultEvent("ServerClick")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlButton : HtmlContainerControl, IPostBackEventHandler
{
	private static readonly object ServerClickEvent = new object();

	[WebSysDescription("")]
	[DefaultValue(true)]
	[WebCategory("Behavior")]
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
	public virtual string ValidationGroup
	{
		get
		{
			return ViewState.GetString("ValidationGroup", "");
		}
		set
		{
			ViewState["ValidationGroup"] = value;
		}
	}

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event EventHandler ServerClick
	{
		add
		{
			Events.AddHandler(ServerClickEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ServerClickEvent, value);
		}
	}

	public HtmlButton()
		: base("button")
	{
	}

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		RaisePostBackEvent(eventArgument);
	}

	protected virtual void RaisePostBackEvent(string eventArgument)
	{
		ValidateEvent(UniqueID, eventArgument);
		if (CausesValidation)
		{
			Page.Validate(ValidationGroup);
		}
		OnServerClick(EventArgs.Empty);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}

	protected virtual void OnServerClick(EventArgs e)
	{
		((EventHandler)Events[ServerClickEvent])?.Invoke(this, e);
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		Page page = Page;
		if (page != null && (object)Events[ServerClickEvent] != null)
		{
			PostBackOptions postBackOptions = GetPostBackOptions();
			Attributes["onclick"] += page.ClientScript.GetPostBackEventReference(postBackOptions, registerForEventValidation: true);
			writer.WriteAttribute("language", "javascript");
		}
		base.RenderAttributes(writer);
	}

	private PostBackOptions GetPostBackOptions()
	{
		Page page = Page;
		PostBackOptions postBackOptions = new PostBackOptions(this);
		postBackOptions.ValidationGroup = null;
		postBackOptions.ActionUrl = null;
		postBackOptions.Argument = string.Empty;
		postBackOptions.RequiresJavaScriptProtocol = false;
		postBackOptions.ClientSubmit = true;
		postBackOptions.PerformValidation = CausesValidation && page != null && page.AreValidatorsUplevel(ValidationGroup);
		if (postBackOptions.PerformValidation)
		{
			postBackOptions.ValidationGroup = ValidationGroup;
		}
		return postBackOptions;
	}
}
