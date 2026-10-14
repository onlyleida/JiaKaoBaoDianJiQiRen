using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI.HtmlControls;

[DefaultEvent("ServerChange")]
[SupportsEventValidation]
[ValidationProperty("Value")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlInputText : HtmlInputControl, IPostBackDataHandler
{
	private static readonly object serverChangeEvent = new object();

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public int MaxLength
	{
		get
		{
			string text = Attributes["maxlength"];
			if (text != null)
			{
				return Convert.ToInt32(text);
			}
			return -1;
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("maxlength");
			}
			else
			{
				Attributes["maxlength"] = value.ToString();
			}
		}
	}

	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[DefaultValue(-1)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int Size
	{
		get
		{
			string text = Attributes["size"];
			if (text != null)
			{
				return Convert.ToInt32(text);
			}
			return -1;
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("size");
			}
			else
			{
				Attributes["size"] = value.ToString();
			}
		}
	}

	public override string Value
	{
		get
		{
			string text = Attributes["value"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("value");
			}
			else
			{
				Attributes["value"] = value;
			}
		}
	}

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event EventHandler ServerChange
	{
		add
		{
			Events.AddHandler(serverChangeEvent, value);
		}
		remove
		{
			Events.RemoveHandler(serverChangeEvent, value);
		}
	}

	public HtmlInputText()
		: base("text")
	{
	}

	public HtmlInputText(string type)
		: base(type)
	{
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		Page?.ClientScript.RegisterForEventValidation(UniqueID);
		base.Render(writer);
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
		((EventHandler)Events[serverChangeEvent])?.Invoke(this, e);
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		if (string.Compare(Type, 0, "password", 0, 8, ignoreCase: true, Helpers.InvariantCulture) == 0)
		{
			Attributes.Remove("value");
		}
		base.RenderAttributes(writer);
	}

	private bool LoadPostDataInternal(string postDataKey, NameValueCollection postCollection)
	{
		string text = postCollection[postDataKey];
		if (Value != text)
		{
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
