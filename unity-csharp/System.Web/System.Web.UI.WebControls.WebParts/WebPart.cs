using Unity;

namespace System.Web.UI.WebControls.WebParts;

public abstract class WebPart : Part, IWebPart, IWebActionable, IWebEditable
{
	[Flags]
	private enum Allow
	{
		Close = 1,
		Connect = 2,
		Edit = 4,
		Hide = 8,
		Minimize = 0x10,
		ZoneChange = 0x20
	}

	private WebPartVerbCollection verbs = new WebPartVerbCollection();

	private Allow allow;

	private string auth_filter;

	private string catalog_icon_url;

	private WebPartExportMode exportMode;

	private string titleIconImageUrl;

	private string titleUrl;

	private string helpUrl;

	private bool isStatic;

	private bool hidden;

	private bool isClosed;

	private bool hasSharedData;

	private bool hasUserData;

	private WebPartHelpMode helpMode = WebPartHelpMode.Navigate;

	private int zoneIndex;

	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool AllowClose
	{
		get
		{
			return (allow & Allow.Close) != 0;
		}
		set
		{
			if (value)
			{
				allow |= Allow.Close;
			}
			else
			{
				allow &= ~Allow.Close;
			}
		}
	}

	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool AllowConnect
	{
		get
		{
			return (allow & Allow.Connect) != 0;
		}
		set
		{
			if (value)
			{
				allow |= Allow.Connect;
			}
			else
			{
				allow &= ~Allow.Connect;
			}
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	public virtual bool AllowEdit
	{
		get
		{
			return (allow & Allow.Edit) != 0;
		}
		set
		{
			if (value)
			{
				allow |= Allow.Edit;
			}
			else
			{
				allow &= ~Allow.Edit;
			}
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	public virtual bool AllowHide
	{
		get
		{
			return (allow & Allow.Hide) != 0;
		}
		set
		{
			if (value)
			{
				allow |= Allow.Hide;
			}
			else
			{
				allow &= ~Allow.Hide;
			}
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	public virtual bool AllowMinimize
	{
		get
		{
			return (allow & Allow.Minimize) != 0;
		}
		set
		{
			if (value)
			{
				allow |= Allow.Minimize;
			}
			else
			{
				allow &= ~Allow.Minimize;
			}
		}
	}

	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool AllowZoneChange
	{
		get
		{
			return (allow & Allow.ZoneChange) != 0;
		}
		set
		{
			if (value)
			{
				allow |= Allow.ZoneChange;
			}
			else
			{
				allow &= ~Allow.ZoneChange;
			}
		}
	}

	public virtual string AuthorizationFilter
	{
		get
		{
			return auth_filter;
		}
		set
		{
			auth_filter = value;
		}
	}

	public virtual string CatalogIconImageUrl
	{
		get
		{
			return catalog_icon_url;
		}
		set
		{
			catalog_icon_url = value;
		}
	}

	public override PartChromeState ChromeState
	{
		get
		{
			return base.ChromeState;
		}
		set
		{
			base.ChromeState = value;
		}
	}

	public override PartChromeType ChromeType
	{
		get
		{
			return base.ChromeType;
		}
		set
		{
			base.ChromeType = value;
		}
	}

	[MonoTODO("Not implemented")]
	public string ConnectErrorMessage => "";

	public override string Description
	{
		get
		{
			return base.Description;
		}
		set
		{
			base.Description = value;
		}
	}

	[MonoTODO("Not implemented")]
	public override ContentDirection Direction
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public string DisplayTitle => "Untitled";

	public virtual WebPartExportMode ExportMode
	{
		get
		{
			return exportMode;
		}
		set
		{
			exportMode = value;
		}
	}

	public bool HasSharedData => hasSharedData;

	public bool HasUserData => hasUserData;

	public override Unit Height
	{
		get
		{
			return base.Height;
		}
		set
		{
			base.Height = value;
		}
	}

	public virtual WebPartHelpMode HelpMode
	{
		get
		{
			return helpMode;
		}
		set
		{
			helpMode = value;
		}
	}

	public virtual string HelpUrl
	{
		get
		{
			return helpUrl;
		}
		set
		{
			helpUrl = value;
		}
	}

	public virtual bool Hidden
	{
		get
		{
			return hidden;
		}
		set
		{
			hidden = value;
		}
	}

	public virtual string ImportErrorMessage
	{
		get
		{
			return ViewState.GetString("ImportErrorMessage", "Cannot import this Web Part.");
		}
		set
		{
			ViewState["ImportErrorMessage"] = value;
		}
	}

	public bool IsClosed => isClosed;

	public bool IsShared => false;

	public bool IsStandalone => true;

	public bool IsStatic => isStatic;

	public virtual string Subtitle => string.Empty;

	public override string Title
	{
		get
		{
			return base.Title;
		}
		set
		{
			base.Title = value;
		}
	}

	public virtual string TitleIconImageUrl
	{
		get
		{
			return titleIconImageUrl;
		}
		set
		{
			titleIconImageUrl = value;
		}
	}

	public virtual string TitleUrl
	{
		get
		{
			return titleUrl;
		}
		set
		{
			titleUrl = value;
		}
	}

	public virtual WebPartVerbCollection Verbs => verbs;

	public override Unit Width
	{
		get
		{
			return base.Width;
		}
		set
		{
			base.Width = value;
		}
	}

	public int ZoneIndex => zoneIndex;

	public virtual object WebBrowsableObject
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected WebPartManager WebPartManager
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartZoneBase Zone
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected WebPart()
	{
		verbs = new WebPartVerbCollection();
		allow = Allow.Close | Allow.Connect | Allow.Edit | Allow.Hide | Allow.Minimize | Allow.ZoneChange;
		auth_filter = "";
		catalog_icon_url = "";
		titleIconImageUrl = string.Empty;
		titleUrl = string.Empty;
		helpUrl = string.Empty;
		isStatic = false;
		hasUserData = false;
		hasSharedData = false;
		hidden = false;
		isClosed = false;
	}

	[MonoTODO("Not implemented")]
	protected void SetPersonalizationDirty()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public static void SetPersonalizationDirty(Control control)
	{
		throw new NotImplementedException();
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		foreach (IStateManager verb in verbs)
		{
			verb.TrackViewState();
		}
	}

	internal void SetZoneIndex(int index)
	{
		zoneIndex = index;
	}

	protected internal virtual void OnClosing(EventArgs e)
	{
	}

	protected internal virtual void OnConnectModeChanged(EventArgs e)
	{
	}

	protected internal virtual void OnDeleting(EventArgs e)
	{
	}

	protected internal virtual void OnEditModeChanged(EventArgs e)
	{
	}

	public virtual EditorPartCollection CreateEditorParts()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
