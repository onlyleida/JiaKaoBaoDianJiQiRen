using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[SupportsEventValidation]
[DefaultEvent("ServerChange")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlInputRadioButton : HtmlInputControl, IPostBackDataHandler
{
	private static readonly object serverChangeEvent = new object();

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Checked
	{
		get
		{
			return Attributes["checked"] == "checked";
		}
		set
		{
			if (value)
			{
				Attributes["checked"] = "checked";
			}
			else
			{
				Attributes.Remove("checked");
			}
		}
	}

	public override string Name
	{
		get
		{
			string text = Attributes["name"];
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
				Attributes.Remove("name");
			}
			else
			{
				Attributes["name"] = value;
			}
		}
	}

	public override string Value
	{
		get
		{
			string text = Attributes["value"];
			if (text == null || text.Length == 0)
			{
				text = ID;
				if (text != null && text.Length == 0)
				{
					text = null;
				}
			}
			return text;
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

	public HtmlInputRadioButton()
		: base("radio")
	{
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
		Page?.ClientScript.RegisterForEventValidation(UniqueID, Value);
		writer.WriteAttribute("value", Value, fEncode: true);
		Attributes.Remove("value");
		base.RenderAttributes(writer);
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		bool flag = postCollection[Name] == Value;
		if (Checked == flag)
		{
			return false;
		}
		ValidateEvent(UniqueID, Value);
		Checked = flag;
		return flag;
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		OnServerChange(EventArgs.Empty);
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
