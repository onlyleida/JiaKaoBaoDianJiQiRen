using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[DefaultEvent("ServerChange")]
[SupportsEventValidation]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlInputHidden : HtmlInputControl, IPostBackDataHandler
{
	private static readonly object ServerChangeEvent = new object();

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event EventHandler ServerChange
	{
		add
		{
			Events.AddHandler(ServerChangeEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ServerChangeEvent, value);
		}
	}

	public HtmlInputHidden()
		: base("hidden")
	{
	}

	private bool LoadPostDataInternal(string postDataKey, NameValueCollection postCollection)
	{
		string text = postCollection[postDataKey];
		if (text != null && text != Value)
		{
			ValidateEvent(postDataKey, string.Empty);
			Value = text;
			return true;
		}
		return false;
	}

	private void RaisePostDataChangedEventInternal()
	{
		OnServerChange(EventArgs.Empty);
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostDataInternal(postDataKey, postCollection);
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		RaisePostDataChangedEventInternal();
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostData(postDataKey, postCollection);
	}

	void IPostBackDataHandler.RaisePostDataChangedEvent()
	{
		RaisePostDataChangedEvent();
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		Page?.ClientScript.RegisterForEventValidation(Name);
		base.RenderAttributes(writer);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		Page page = Page;
		if (page != null && !Disabled)
		{
			page.RegisterRequiresPostBack(this);
			page.RegisterEnabledControl(this);
		}
	}

	protected virtual void OnServerChange(EventArgs e)
	{
		((EventHandler)Events[ServerChangeEvent])?.Invoke(this, e);
	}
}
