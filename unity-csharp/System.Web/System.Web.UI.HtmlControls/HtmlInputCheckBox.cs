using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[SupportsEventValidation]
[DefaultEvent("ServerChange")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlInputCheckBox : HtmlInputControl, IPostBackDataHandler
{
	private static readonly object EventServerChange = new object();

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[TypeConverter(typeof(MinimizableAttributeTypeConverter))]
	[WebCategory("Misc")]
	[WebSysDescription("")]
	[DefaultValue("")]
	public bool Checked
	{
		get
		{
			if (Attributes["checked"] == null)
			{
				return false;
			}
			return true;
		}
		set
		{
			if (!value)
			{
				Attributes.Remove("checked");
			}
			else
			{
				Attributes["checked"] = "checked";
			}
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event EventHandler ServerChange
	{
		add
		{
			Events.AddHandler(EventServerChange, value);
		}
		remove
		{
			Events.RemoveHandler(EventServerChange, value);
		}
	}

	public HtmlInputCheckBox()
		: base("checkbox")
	{
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		Page?.ClientScript.RegisterForEventValidation(UniqueID);
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
		((EventHandler)Events[EventServerChange])?.Invoke(this, e);
	}

	private bool LoadPostDataInternal(string postDataKey, NameValueCollection postCollection)
	{
		string text = postCollection[postDataKey];
		bool flag = text != null && text.Length > 0;
		if (Checked != flag)
		{
			Checked = flag;
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
		ValidateEvent(UniqueID, string.Empty);
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
}
