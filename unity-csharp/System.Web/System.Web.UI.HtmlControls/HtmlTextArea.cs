using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI.HtmlControls;

[SupportsEventValidation]
[DefaultEvent("ServerChange")]
[ValidationProperty("Value")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlTextArea : HtmlContainerControl, IPostBackDataHandler
{
	private static readonly object serverChangeEvent = new object();

	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	public int Cols
	{
		get
		{
			string text = Attributes["cols"];
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
				Attributes.Remove("cols");
			}
			else
			{
				Attributes["cols"] = value.ToString(Helpers.InvariantCulture);
			}
		}
	}

	[WebCategory("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[DefaultValue("")]
	public virtual string Name
	{
		get
		{
			return UniqueID;
		}
		set
		{
		}
	}

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	public int Rows
	{
		get
		{
			string text = Attributes["rows"];
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
				Attributes.Remove("rows");
			}
			else
			{
				Attributes["rows"] = value.ToString(Helpers.InvariantCulture);
			}
		}
	}

	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	[WebCategory("Appearance")]
	public string Value
	{
		get
		{
			return InnerText;
		}
		set
		{
			InnerText = value;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
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

	public HtmlTextArea()
		: base("textarea")
	{
	}

	protected override void AddParsedSubObject(object obj)
	{
		if (!(obj is LiteralControl) && !(obj is DataBoundLiteralControl))
		{
			throw new HttpException(Locale.GetText("Wrong type."));
		}
		base.AddParsedSubObject(obj);
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
		Page?.ClientScript.RegisterForEventValidation(UniqueID);
		if (Attributes["name"] == null)
		{
			writer.WriteAttribute("name", Name);
		}
		base.RenderAttributes(writer);
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return DefaultLoadPostData(postDataKey, postCollection);
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		ValidateEvent(UniqueID, string.Empty);
		OnServerChange(EventArgs.Empty);
	}

	internal bool DefaultLoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		string text = postCollection[postDataKey];
		if (text != null && text != Value)
		{
			Value = text;
			return true;
		}
		return false;
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
