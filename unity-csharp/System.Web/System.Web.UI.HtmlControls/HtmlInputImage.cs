using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI.HtmlControls;

[SupportsEventValidation]
[DefaultEvent("ServerClick")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlInputImage : HtmlInputControl, IPostBackDataHandler, IPostBackEventHandler
{
	private static readonly object ServerClickEvent = new object();

	private int clicked_x;

	private int clicked_y;

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

	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	[WebCategory("Appearance")]
	public string Align
	{
		get
		{
			return GetAtt("align");
		}
		set
		{
			SetAtt("align", value);
		}
	}

	[WebCategory("Appearance")]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[Localizable(true)]
	public string Alt
	{
		get
		{
			return GetAtt("alt");
		}
		set
		{
			SetAtt("alt", value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[UrlProperty]
	[DefaultValue("")]
	[WebCategory("Appearance")]
	public string Src
	{
		get
		{
			return GetAtt("src");
		}
		set
		{
			SetAtt("src", value);
		}
	}

	[WebCategory("Appearance")]
	[DefaultValue("-1")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	public int Border
	{
		get
		{
			string text = Attributes["border"];
			if (text == null)
			{
				return -1;
			}
			return int.Parse(text, Helpers.InvariantCulture);
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("border");
			}
			else
			{
				Attributes["border"] = value.ToString(Helpers.InvariantCulture);
			}
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
	public event ImageClickEventHandler ServerClick
	{
		add
		{
			Events.AddHandler(ServerClickEvent, value);
		}
		remove
		{
			Events.AddHandler(ServerClickEvent, value);
		}
	}

	public HtmlInputImage()
		: base("image")
	{
	}

	private bool LoadPostDataInternal(string postDataKey, NameValueCollection postCollection)
	{
		string text = postCollection[UniqueID + ".x"];
		string text2 = postCollection[UniqueID + ".y"];
		if (text != null && text.Length != 0 && text2 != null && text2.Length != 0)
		{
			clicked_x = int.Parse(text, Helpers.InvariantCulture);
			clicked_y = int.Parse(text2, Helpers.InvariantCulture);
			Page.RegisterRequiresRaiseEvent(this);
			return true;
		}
		return false;
	}

	private void RaisePostBackEventInternal(string eventArgument)
	{
		if (CausesValidation)
		{
			Page.Validate(ValidationGroup);
		}
		OnServerClick(new ImageClickEventArgs(clicked_x, clicked_y));
	}

	private void RaisePostDataChangedEventInternal()
	{
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostDataInternal(postDataKey, postCollection);
	}

	protected virtual void RaisePostBackEvent(string eventArgument)
	{
		RaisePostBackEventInternal(eventArgument);
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

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		RaisePostBackEvent(eventArgument);
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

	protected virtual void OnServerClick(ImageClickEventArgs e)
	{
		if (Events[ServerClickEvent] is ImageClickEventHandler imageClickEventHandler)
		{
			imageClickEventHandler(this, e);
		}
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		Page page = Page;
		page?.ClientScript.RegisterForEventValidation(UniqueID);
		if (CausesValidation && page != null && page.AreValidatorsUplevel(ValidationGroup))
		{
			ClientScriptManager clientScript = page.ClientScript;
			Attributes["onclick"] += clientScript.GetClientValidationEvent(ValidationGroup);
		}
		PreProcessRelativeReference(writer, "src");
		base.RenderAttributes(writer);
	}

	private void SetAtt(string name, string value)
	{
		if (value == null || value.Length == 0)
		{
			Attributes.Remove(name);
		}
		else
		{
			Attributes[name] = value;
		}
	}

	private string GetAtt(string name)
	{
		string text = Attributes[name];
		if (text == null)
		{
			return string.Empty;
		}
		return text;
	}
}
