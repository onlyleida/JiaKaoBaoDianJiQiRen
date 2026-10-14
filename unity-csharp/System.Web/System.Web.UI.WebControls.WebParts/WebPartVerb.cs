using System.ComponentModel;

namespace System.Web.UI.WebControls.WebParts;

[TypeConverter("System.Web.UI.WebControls.WebParts.WebPartVerbConverter, System.Web")]
public class WebPartVerb : IStateManager
{
	private string clientClickHandler;

	private WebPartEventHandler serverClickHandler;

	private StateBag stateBag;

	private bool isChecked;

	private string description = string.Empty;

	private bool enabled = true;

	private string imageUrl = string.Empty;

	private string text = string.Empty;

	private bool visible = true;

	private string id;

	public string ID => id;

	[MonoTODO("Not implemented")]
	bool IStateManager.IsTrackingViewState
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue(false)]
	[WebSysDescription("Denotes verb is checked or not.")]
	public virtual bool Checked
	{
		get
		{
			return isChecked;
		}
		set
		{
			isChecked = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string ClientClickHandler => clientClickHandler;

	[Localizable(true)]
	[WebSysDescription("Gives descriptive information about the verb")]
	[NotifyParentProperty(true)]
	public virtual string Description
	{
		get
		{
			return description;
		}
		set
		{
			description = value;
		}
	}

	[WebSysDescription("Determines whether verb is enabled.")]
	[NotifyParentProperty(true)]
	[DefaultValue(true)]
	public virtual bool Enabled
	{
		get
		{
			return enabled;
		}
		set
		{
			enabled = value;
		}
	}

	[NotifyParentProperty(true)]
	[Localizable(true)]
	[WebSysDescription("Denotes URL of the image to be displayed for the verb")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design", "UITypeEditor, System.Drawing")]
	public string ImageUrl
	{
		get
		{
			return imageUrl;
		}
		set
		{
			imageUrl = value;
		}
	}

	protected virtual bool IsTrackingViewState
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public WebPartEventHandler ServerClickHandler => serverClickHandler;

	[NotifyParentProperty(true)]
	[WebSysDescription("Denotes text to be displayed for the verb")]
	[Localizable(true)]
	public virtual string Text
	{
		get
		{
			return text;
		}
		set
		{
			text = value;
		}
	}

	protected StateBag ViewState => stateBag;

	[DefaultValue(true)]
	[WebSysDescription("Denotes whether the verb is visible")]
	[NotifyParentProperty(true)]
	[Localizable(true)]
	public bool Visible
	{
		get
		{
			return visible;
		}
		set
		{
			visible = value;
		}
	}

	public WebPartVerb(string id, string clientClickHandler)
	{
		this.id = id;
		this.clientClickHandler = clientClickHandler;
		stateBag = new StateBag();
		stateBag.Add("clientClickHandler", clientClickHandler);
	}

	public WebPartVerb(string id, WebPartEventHandler serverClickHandler)
	{
		this.id = id;
		this.serverClickHandler = serverClickHandler;
		stateBag = new StateBag();
		stateBag.Add("serverClickHandler", serverClickHandler);
	}

	public WebPartVerb(string id, WebPartEventHandler serverClickHandler, string clientClickHandler)
	{
		this.id = id;
		this.serverClickHandler = serverClickHandler;
		this.clientClickHandler = clientClickHandler;
		stateBag = new StateBag();
		stateBag.Add("serverClickHandler", serverClickHandler);
		stateBag.Add("clientClickHandler", clientClickHandler);
	}

	[MonoTODO("Not implemented")]
	protected virtual void LoadViewState(object savedState)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	protected virtual object SaveViewState()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	protected virtual void TrackViewState()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	void IStateManager.LoadViewState(object savedState)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	object IStateManager.SaveViewState()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	void IStateManager.TrackViewState()
	{
		throw new NotImplementedException();
	}
}
