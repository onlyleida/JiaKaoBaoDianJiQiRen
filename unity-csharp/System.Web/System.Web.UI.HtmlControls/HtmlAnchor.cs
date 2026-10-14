using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[SupportsEventValidation]
[DefaultEvent("ServerClick")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlAnchor : HtmlContainerControl, IPostBackEventHandler
{
	private static readonly object serverClickEvent = new object();

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[DefaultValue("")]
	[UrlProperty]
	[WebCategory("Action")]
	public string HRef
	{
		get
		{
			string text = Attributes["href"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null || value.Length == 0)
			{
				Attributes.Remove("href");
			}
			else
			{
				Attributes["href"] = value;
			}
		}
	}

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Navigation")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string Name
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
			if (value == null || value.Length == 0)
			{
				Attributes.Remove("name");
			}
			else
			{
				Attributes["name"] = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebCategory("Navigation")]
	[WebSysDescription("")]
	[DefaultValue("")]
	public string Target
	{
		get
		{
			string text = Attributes["target"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null || value.Length == 0)
			{
				Attributes.Remove("target");
			}
			else
			{
				Attributes["target"] = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebCategory("Appearance")]
	[Localizable(true)]
	[WebSysDescription("")]
	[DefaultValue("")]
	public string Title
	{
		get
		{
			string text = Attributes["title"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null || value.Length == 0)
			{
				Attributes.Remove("title");
			}
			else
			{
				Attributes["title"] = value;
			}
		}
	}

	[DefaultValue(true)]
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
			return ViewState.GetString("ValidationGroup", string.Empty);
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
			Events.AddHandler(serverClickEvent, value);
		}
		remove
		{
			Events.RemoveHandler(serverClickEvent, value);
		}
	}

	public HtmlAnchor()
		: base("a")
	{
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}

	protected virtual void OnServerClick(EventArgs e)
	{
		((EventHandler)Events[serverClickEvent])?.Invoke(this, e);
	}

	protected override void RenderAttributes(HtmlTextWriter writer)
	{
		if ((EventHandler)Events[serverClickEvent] != null)
		{
			PostBackOptions postBackOptions = GetPostBackOptions();
			ClientScriptManager clientScript = Page.ClientScript;
			clientScript.RegisterForEventValidation(postBackOptions);
			Attributes["href"] = clientScript.GetPostBackEventReference(postBackOptions, registerForEventValidation: true);
		}
		else
		{
			string hRef = HRef;
			if (hRef != string.Empty)
			{
				HRef = ResolveClientUrl(hRef);
			}
		}
		base.RenderAttributes(writer);
		Attributes.Remove("href");
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

	private PostBackOptions GetPostBackOptions()
	{
		Page page = Page;
		PostBackOptions postBackOptions = new PostBackOptions(this);
		postBackOptions.ValidationGroup = null;
		postBackOptions.ActionUrl = null;
		postBackOptions.Argument = string.Empty;
		postBackOptions.RequiresJavaScriptProtocol = true;
		postBackOptions.ClientSubmit = true;
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
}
