using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.IO;
using System.Security.Permissions;
using System.Text;
using System.Web.Configuration;
using System.Web.Routing;
using System.Web.UI.Adapters;
using System.Web.UI.WebControls;
using System.Web.Util;
using Unity;

namespace System.Web.UI;

[DesignerCategory("Code")]
[DesignerSerializer("Microsoft.VisualStudio.Web.WebForms.ControlCodeDomSerializer, Microsoft.VisualStudio.Web, Version=0.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.Serialization.CodeDomSerializer, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[Designer("System.Web.UI.Design.ControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[Bindable(true)]
[Themeable(false)]
[ToolboxItemFilter("System.Web.UI", ToolboxItemFilterType.Require)]
[DefaultProperty("ID")]
[ToolboxItem("System.Web.UI.Design.WebControlToolboxItem, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Control : IComponent, IDisposable, IParserAccessor, IDataBindingsAccessor, IUrlResolutionService, IControlBuilderAccessor, IControlDesignerAccessor, IExpressionsAccessor
{
	internal static readonly object DataBindingEvent;

	internal static readonly object DisposedEvent;

	internal static readonly object InitEvent;

	internal static readonly object LoadEvent;

	internal static readonly object PreRenderEvent;

	internal static readonly object UnloadEvent;

	internal static string[] defaultNameArray;

	private int event_mask;

	private const int databinding_mask = 1;

	private const int disposed_mask = 2;

	private const int init_mask = 4;

	private const int load_mask = 8;

	private const int prerender_mask = 16;

	private const int unload_mask = 32;

	[ThreadStatic]
	private static Dictionary<Type, bool> loadViewStateByIDCache;

	private bool? loadViewStateByID;

	private string uniqueID;

	private string clientID;

	private string _userId;

	private ControlCollection _controls;

	private Control _namingContainer;

	private Page _page;

	private Control _parent;

	private ISite _site;

	private StateBag _viewState;

	private EventHandlerList _events;

	private RenderMethod _renderMethodDelegate;

	private Hashtable _controlsCache;

	private int defaultNumberID;

	private DataBindingCollection dataBindings;

	private Hashtable pendingVS;

	private TemplateControl _templateControl;

	private bool _isChildControlStateCleared;

	private string _templateSourceDirectory;

	private ViewStateMode viewStateMode;

	private ClientIDMode? clientIDMode;

	private ClientIDMode? effectiveClientIDMode;

	private Version renderingCompatibility;

	private bool? renderingCompatibilityOld;

	private int stateMask;

	private const int ENABLE_VIEWSTATE = 1;

	private const int VISIBLE = 2;

	private const int AUTOID = 4;

	private const int CREATING_CONTROLS = 8;

	private const int BINDING_CONTAINER = 16;

	private const int AUTO_EVENT_WIREUP = 32;

	private const int IS_NAMING_CONTAINER = 64;

	private const int VISIBLE_CHANGED = 128;

	private const int TRACK_VIEWSTATE = 256;

	private const int CHILD_CONTROLS_CREATED = 512;

	private const int ID_SET = 1024;

	private const int INITED = 2048;

	private const int INITING = 4096;

	private const int VIEWSTATE_LOADED = 8192;

	private const int LOADED = 16384;

	private const int PRERENDERED = 32768;

	private const int ENABLE_THEMING = 65536;

	private const int AUTOID_SET = 131072;

	private const int REMOVED = 262144;

	private ControlAdapter adapter;

	private bool did_adapter_lookup;

	private string _appRelativeTemplateSourceDirectory;

	internal ControlSkin controlSkin;

	private string skinId = string.Empty;

	private bool _enableTheming = true;

	private ExpressionBindingCollection expressionBindings;

	protected internal ControlAdapter Adapter
	{
		get
		{
			if (!did_adapter_lookup)
			{
				adapter = ResolveAdapter();
				if (adapter != null)
				{
					adapter.control = this;
				}
				did_adapter_lookup = true;
			}
			return adapter;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string AppRelativeTemplateSourceDirectory
	{
		get
		{
			if (_appRelativeTemplateSourceDirectory != null)
			{
				return _appRelativeTemplateSourceDirectory;
			}
			string text = null;
			TemplateControl templateControl = TemplateControl;
			if (templateControl != null)
			{
				string appRelativeVirtualPath = templateControl.AppRelativeVirtualPath;
				if (!string.IsNullOrEmpty(appRelativeVirtualPath))
				{
					text = VirtualPathUtility.GetDirectory(appRelativeVirtualPath, normalize: false);
				}
			}
			_appRelativeTemplateSourceDirectory = ((text != null) ? text : VirtualPathUtility.ToAppRelative(TemplateSourceDirectory));
			return _appRelativeTemplateSourceDirectory;
		}
		[EditorBrowsable(EditorBrowsableState.Never)]
		set
		{
			_appRelativeTemplateSourceDirectory = value;
			_templateSourceDirectory = null;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Bindable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public Control BindingContainer
	{
		get
		{
			Control control = NamingContainer;
			if ((control != null && control is INonBindingContainer) || (stateMask & 0x10) == 0)
			{
				control = control.BindingContainer;
			}
			return control;
		}
	}

	[WebSysDescription("An Identification of the control that is rendered.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string ClientID
	{
		get
		{
			if (clientID != null)
			{
				return clientID;
			}
			clientID = GetClientID();
			stateMask |= 1024;
			return clientID;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Bindable(false)]
	public virtual Version RenderingCompatibility
	{
		get
		{
			if (renderingCompatibility == null)
			{
				PagesSection pagesSection = WebConfigurationManager.GetSection("system.web/pages") as PagesSection;
				renderingCompatibility = ((pagesSection != null) ? pagesSection.ControlRenderingCompatibilityVersion : new Version(4, 0));
			}
			return renderingCompatibility;
		}
		set
		{
			renderingCompatibility = value;
			renderingCompatibilityOld = null;
		}
	}

	internal bool RenderingCompatibilityLessThan40
	{
		get
		{
			if (!renderingCompatibilityOld.HasValue)
			{
				renderingCompatibilityOld = RenderingCompatibility < new Version(4, 0);
			}
			return renderingCompatibilityOld.Value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Bindable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public Control DataItemContainer
	{
		get
		{
			Control namingContainer = NamingContainer;
			if (namingContainer == null)
			{
				return null;
			}
			if (namingContainer is IDataItemContainer)
			{
				return namingContainer;
			}
			return namingContainer.DataItemContainer;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[Bindable(false)]
	public Control DataKeysContainer
	{
		get
		{
			Control namingContainer = NamingContainer;
			if (namingContainer == null)
			{
				return null;
			}
			if (namingContainer is IDataKeysControl)
			{
				return namingContainer;
			}
			return namingContainer.DataKeysContainer;
		}
	}

	[DefaultValue(ClientIDMode.Inherit)]
	[Themeable(false)]
	public virtual ClientIDMode ClientIDMode
	{
		get
		{
			if (!clientIDMode.HasValue)
			{
				return ClientIDMode.Inherit;
			}
			return clientIDMode.Value;
		}
		set
		{
			if (!clientIDMode.HasValue || clientIDMode.Value != value)
			{
				ClearCachedClientID();
				ClearEffectiveClientIDMode();
				clientIDMode = value;
			}
		}
	}

	internal ClientIDMode EffectiveClientIDMode
	{
		get
		{
			if (effectiveClientIDMode.HasValue)
			{
				return effectiveClientIDMode.Value;
			}
			ClientIDMode clientIDMode = ClientIDMode;
			if (clientIDMode != ClientIDMode.Inherit)
			{
				effectiveClientIDMode = clientIDMode;
				return clientIDMode;
			}
			Control namingContainer = NamingContainer;
			if (namingContainer != null)
			{
				effectiveClientIDMode = namingContainer.EffectiveClientIDMode;
				return effectiveClientIDMode.Value;
			}
			PagesSection pagesSection = WebConfigurationManager.GetSection("system.web/pages") as PagesSection;
			effectiveClientIDMode = pagesSection.ClientIDMode;
			return effectiveClientIDMode.Value;
		}
	}

	protected char ClientIDSeparator => '_';

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("The child controls of this control.")]
	public virtual ControlCollection Controls
	{
		get
		{
			if (_controls == null)
			{
				_controls = CreateControlCollection();
			}
			return _controls;
		}
	}

	[MonoTODO("revisit once we have a real design strategy")]
	protected internal bool DesignMode => false;

	[DefaultValue(true)]
	[WebCategory("Behavior")]
	[Themeable(false)]
	[WebSysDescription("An Identification of the control that is rendered.")]
	public virtual bool EnableViewState
	{
		get
		{
			return (stateMask & 1) != 0;
		}
		set
		{
			SetMask(1, value);
		}
	}

	[Themeable(false)]
	[ParenthesizePropertyName(true)]
	[Filterable(false)]
	[WebSysDescription("The name of the control that is rendered.")]
	[MergableProperty(false)]
	public virtual string ID
	{
		get
		{
			if ((stateMask & 0x400) == 0)
			{
				return null;
			}
			return _userId;
		}
		set
		{
			if (value != null && value.Length == 0)
			{
				value = null;
			}
			stateMask |= 1024;
			_userId = value;
			NullifyUniqueID();
		}
	}

	protected internal bool IsChildControlStateCleared => _isChildControlStateCleared;

	protected bool LoadViewStateByID
	{
		get
		{
			if (!loadViewStateByID.HasValue)
			{
				loadViewStateByID = IsLoadViewStateByID();
			}
			return loadViewStateByID.Value;
		}
	}

	protected internal bool IsViewStateEnabled
	{
		get
		{
			for (Control control = this; control != null; control = control.Parent)
			{
				if (!control.EnableViewState)
				{
					return false;
				}
				ViewStateMode viewStateMode = control.ViewStateMode;
				if (viewStateMode != ViewStateMode.Inherit)
				{
					return viewStateMode == ViewStateMode.Enabled;
				}
			}
			return true;
		}
	}

	protected char IdSeparator => '$';

	[Bindable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[WebSysDescription("The container that this control is part of. The control's name has to be unique within the container.")]
	public virtual Control NamingContainer
	{
		get
		{
			if (_namingContainer == null && _parent != null)
			{
				if ((_parent.stateMask & 0x40) == 0)
				{
					_namingContainer = _parent.NamingContainer;
				}
				else
				{
					_namingContainer = _parent;
				}
			}
			return _namingContainer;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[WebSysDescription("The webpage that this control resides on.")]
	[Bindable(false)]
	public virtual Page Page
	{
		get
		{
			if (_page == null)
			{
				if (NamingContainer != null)
				{
					_page = NamingContainer.Page;
				}
				else if (Parent != null)
				{
					_page = Parent.Page;
				}
			}
			return _page;
		}
		set
		{
			_page = value;
		}
	}

	[Browsable(false)]
	[WebSysDescription("The parent control of this control.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Bindable(false)]
	public virtual Control Parent => _parent;

	[WebSysDescription("The site this control is part of.")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ISite Site
	{
		get
		{
			return _site;
		}
		set
		{
			_site = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Bindable(false)]
	[Browsable(false)]
	public TemplateControl TemplateControl
	{
		get
		{
			return TemplateControlInternal;
		}
		[EditorBrowsable(EditorBrowsableState.Never)]
		set
		{
			_templateControl = value;
		}
	}

	internal virtual TemplateControl TemplateControlInternal
	{
		get
		{
			if (_templateControl != null)
			{
				return _templateControl;
			}
			if (_parent != null)
			{
				return _parent.TemplateControl;
			}
			return null;
		}
	}

	[WebSysDescription("A virtual directory containing the parent of the control.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string TemplateSourceDirectory
	{
		get
		{
			if (_templateSourceDirectory == null)
			{
				TemplateControl templateControl = TemplateControl;
				if (templateControl == null)
				{
					HttpContext context = Context;
					if (context != null)
					{
						_templateSourceDirectory = VirtualPathUtility.GetDirectory(context.Request.CurrentExecutionFilePath);
					}
				}
				else if (templateControl != this)
				{
					_templateSourceDirectory = templateControl.TemplateSourceDirectory;
				}
				if (_templateSourceDirectory == null && this is TemplateControl)
				{
					string appRelativeVirtualPath = ((TemplateControl)this).AppRelativeVirtualPath;
					if (appRelativeVirtualPath != null)
					{
						string directory = VirtualPathUtility.GetDirectory(VirtualPathUtility.ToAbsolute(appRelativeVirtualPath));
						int length = directory.Length;
						if (length <= 1)
						{
							return directory;
						}
						if (directory[--length] == '/')
						{
							_templateSourceDirectory = directory.Substring(0, length);
						}
					}
					else
					{
						_templateSourceDirectory = string.Empty;
					}
				}
				if (_templateSourceDirectory == null)
				{
					_templateSourceDirectory = string.Empty;
				}
			}
			return _templateSourceDirectory;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("The unique ID of the control.")]
	[Browsable(false)]
	public virtual string UniqueID
	{
		get
		{
			if (uniqueID != null)
			{
				return uniqueID;
			}
			Control namingContainer = NamingContainer;
			if (namingContainer == null)
			{
				return _userId;
			}
			EnsureIDInternal();
			string text = namingContainer.UniqueID;
			if (namingContainer == Page || text == null)
			{
				uniqueID = _userId;
				return uniqueID;
			}
			uniqueID = text + IdSeparator + _userId;
			return uniqueID;
		}
	}

	[DefaultValue(true)]
	[Bindable(true)]
	[WebCategory("Behavior")]
	[WebSysDescription("Visiblity state of the control.")]
	public virtual bool Visible
	{
		get
		{
			if ((stateMask & 2) == 0)
			{
				return false;
			}
			if (_parent != null)
			{
				return _parent.Visible;
			}
			return true;
		}
		set
		{
			if (((value && (stateMask & 2) == 0) || (!value && (stateMask & 2) != 0)) && IsTrackingViewState)
			{
				stateMask |= 128;
			}
			SetMask(2, value);
		}
	}

	protected bool ChildControlsCreated
	{
		get
		{
			return (stateMask & 0x200) != 0;
		}
		set
		{
			if (!value && (stateMask & 0x200) != 0)
			{
				Controls?.Clear();
			}
			SetMask(512, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	protected internal virtual HttpContext Context
	{
		get
		{
			Page page = Page;
			if (page != null)
			{
				return page.Context;
			}
			return HttpContext.Current;
		}
	}

	protected EventHandlerList Events
	{
		get
		{
			if (_events == null)
			{
				_events = new EventHandlerList();
			}
			return _events;
		}
	}

	protected bool HasChildViewState
	{
		get
		{
			if (pendingVS != null)
			{
				return pendingVS.Count > 0;
			}
			return false;
		}
	}

	protected bool IsTrackingViewState => (stateMask & 0x100) != 0;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("ViewState")]
	[Browsable(false)]
	protected virtual StateBag ViewState
	{
		get
		{
			if (_viewState == null)
			{
				_viewState = new StateBag(ViewStateIgnoresCase);
			}
			if (IsTrackingViewState)
			{
				_viewState.TrackViewState();
			}
			return _viewState;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	protected virtual bool ViewStateIgnoresCase => false;

	internal bool AutoEventWireup
	{
		get
		{
			return (stateMask & 0x20) != 0;
		}
		set
		{
			SetMask(32, value);
		}
	}

	internal bool AutoID
	{
		get
		{
			return (stateMask & 4) != 0;
		}
		set
		{
			if (value || (stateMask & 0x40) == 0)
			{
				SetMask(4, value);
			}
		}
	}

	[Browsable(false)]
	[Themeable(false)]
	[DefaultValue(true)]
	public virtual bool EnableTheming
	{
		get
		{
			if ((stateMask & 0x10000) != 0)
			{
				return _enableTheming;
			}
			if (_parent != null)
			{
				return _parent.EnableTheming;
			}
			return true;
		}
		set
		{
			SetMask(65536, val: true);
			_enableTheming = value;
		}
	}

	[Browsable(false)]
	[DefaultValue("")]
	[Filterable(false)]
	public virtual string SkinID
	{
		get
		{
			return skinId;
		}
		set
		{
			skinId = value;
		}
	}

	ControlBuilder IControlBuilderAccessor.ControlBuilder
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	IDictionary IControlDesignerAccessor.UserData
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	ExpressionBindingCollection IExpressionsAccessor.Expressions
	{
		get
		{
			if (expressionBindings == null)
			{
				expressionBindings = new ExpressionBindingCollection();
			}
			return expressionBindings;
		}
	}

	bool IExpressionsAccessor.HasExpressions
	{
		get
		{
			if (expressionBindings != null)
			{
				return expressionBindings.Count > 0;
			}
			return false;
		}
	}

	internal bool IsInited => (stateMask & 0x800) != 0;

	internal bool IsLoaded => (stateMask & 0x4000) != 0;

	internal bool IsPrerendered => (stateMask & 0x8000) != 0;

	DataBindingCollection IDataBindingsAccessor.DataBindings
	{
		get
		{
			if (dataBindings == null)
			{
				dataBindings = new DataBindingCollection();
			}
			return dataBindings;
		}
	}

	bool IDataBindingsAccessor.HasDataBindings
	{
		get
		{
			if (dataBindings != null && dataBindings.Count > 0)
			{
				return true;
			}
			return false;
		}
	}

	[Themeable(false)]
	[DefaultValue(ViewStateMode.Inherit)]
	public virtual ViewStateMode ViewStateMode
	{
		get
		{
			return viewStateMode;
		}
		set
		{
			if (value < ViewStateMode.Inherit || value > ViewStateMode.Disabled)
			{
				throw new ArgumentOutOfRangeException("An attempt was made to set this property to a value that is not in the ViewStateMode enumeration.");
			}
			viewStateMode = value;
		}
	}

	public virtual ValidateRequestMode ValidateRequestMode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	[WebSysDescription("Raised when the contols databound properties are evaluated.")]
	[WebCategory("FIXME")]
	public event EventHandler DataBinding
	{
		add
		{
			event_mask |= 1;
			Events.AddHandler(DataBindingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(DataBindingEvent, value);
		}
	}

	[WebSysDescription("Raised when the contol is disposed.")]
	public event EventHandler Disposed
	{
		add
		{
			event_mask |= 2;
			Events.AddHandler(DisposedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(DisposedEvent, value);
		}
	}

	[WebSysDescription("Raised when the page containing the control is initialized.")]
	public event EventHandler Init
	{
		add
		{
			event_mask |= 4;
			Events.AddHandler(InitEvent, value);
		}
		remove
		{
			Events.RemoveHandler(InitEvent, value);
		}
	}

	[WebSysDescription("Raised after the page containing the control has been loaded.")]
	public event EventHandler Load
	{
		add
		{
			event_mask |= 8;
			Events.AddHandler(LoadEvent, value);
		}
		remove
		{
			Events.RemoveHandler(LoadEvent, value);
		}
	}

	[WebSysDescription("Raised before the page containing the control is rendered.")]
	public event EventHandler PreRender
	{
		add
		{
			event_mask |= 16;
			Events.AddHandler(PreRenderEvent, value);
		}
		remove
		{
			Events.RemoveHandler(PreRenderEvent, value);
		}
	}

	[WebSysDescription("Raised when the page containing the control is unloaded.")]
	public event EventHandler Unload
	{
		add
		{
			event_mask |= 32;
			Events.AddHandler(UnloadEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UnloadEvent, value);
		}
	}

	static Control()
	{
		DataBindingEvent = new object();
		DisposedEvent = new object();
		InitEvent = new object();
		LoadEvent = new object();
		PreRenderEvent = new object();
		UnloadEvent = new object();
		defaultNameArray = new string[100];
		for (int i = 0; i < 100; i++)
		{
			defaultNameArray[i] = "ctl" + i.ToString("D2");
		}
	}

	public Control()
	{
		stateMask = 55;
		if (this is INamingContainer)
		{
			stateMask |= 64;
		}
		viewStateMode = ViewStateMode.Inherit;
	}

	protected void ClearCachedClientID()
	{
		clientID = null;
		if (HasControls())
		{
			for (int i = 0; i < _controls.Count; i++)
			{
				_controls[i].ClearCachedClientID();
			}
		}
	}

	protected void ClearEffectiveClientIDMode()
	{
		effectiveClientIDMode = null;
		if (HasControls())
		{
			for (int i = 0; i < _controls.Count; i++)
			{
				_controls[i].ClearEffectiveClientIDMode();
			}
		}
	}

	private string GetClientID()
	{
		switch (EffectiveClientIDMode)
		{
		case ClientIDMode.AutoID:
			return UniqueID2ClientID(UniqueID);
		case ClientIDMode.Predictable:
			EnsureID();
			return GeneratePredictableClientID();
		case ClientIDMode.Static:
			EnsureID();
			return ID;
		default:
			throw new InvalidOperationException("Unsupported ClientIDMode value.");
		}
	}

	private string GeneratePredictableClientID()
	{
		string value = ID;
		bool flag = !string.IsNullOrEmpty(value);
		char clientIDSeparator = ClientIDSeparator;
		StringBuilder stringBuilder = new StringBuilder();
		Control namingContainer = NamingContainer;
		if (this is INamingContainer && !flag)
		{
			if (namingContainer != null)
			{
				EnsureIDInternal();
			}
			value = _userId;
		}
		if (namingContainer != null && namingContainer != Page)
		{
			if (!string.IsNullOrEmpty(namingContainer.ID))
			{
				stringBuilder.Append(namingContainer.GetClientID());
				stringBuilder.Append(clientIDSeparator);
			}
			else
			{
				stringBuilder.Append(namingContainer.GeneratePredictableClientID());
				if (stringBuilder.Length > 0)
				{
					stringBuilder.Append(clientIDSeparator);
				}
			}
		}
		if (!flag)
		{
			if (this is INamingContainer || !AutoID)
			{
				stringBuilder.Append(value);
			}
			else
			{
				int length = stringBuilder.Length;
				if (length > 0 && stringBuilder[length - 1] == clientIDSeparator)
				{
					stringBuilder.Length = length - 1;
				}
			}
			return stringBuilder.ToString();
		}
		stringBuilder.Append(value);
		if (!(DataItemContainer is IDataItemContainer dataItemContainer))
		{
			return stringBuilder.ToString();
		}
		IDataKeysControl dataKeysContainer = DataKeysContainer as IDataKeysControl;
		GetDataBoundControlFieldValue(stringBuilder, clientIDSeparator, dataItemContainer, dataKeysContainer);
		return stringBuilder.ToString();
	}

	private void GetDataBoundControlFieldValue(StringBuilder sb, char separator, IDataItemContainer dataItemContainer, IDataKeysControl dataKeysContainer)
	{
		if (dataItemContainer is IDataBoundItemControl)
		{
			return;
		}
		int displayIndex = dataItemContainer.DisplayIndex;
		if (dataKeysContainer == null)
		{
			if (displayIndex >= 0)
			{
				sb.Append(separator);
				sb.Append(displayIndex);
			}
			return;
		}
		string[] clientIDRowSuffix = dataKeysContainer.ClientIDRowSuffix;
		DataKeyArray clientIDRowSuffixDataKeys = dataKeysContainer.ClientIDRowSuffixDataKeys;
		if (clientIDRowSuffixDataKeys == null || clientIDRowSuffix == null || clientIDRowSuffix.Length == 0)
		{
			sb.Append(separator);
			sb.Append(displayIndex);
			return;
		}
		DataKey dataKey = clientIDRowSuffixDataKeys[displayIndex];
		string[] array = clientIDRowSuffix;
		foreach (string name in array)
		{
			sb.Append(separator);
			object obj = dataKey?[name];
			if (obj != null)
			{
				sb.Append(obj.ToString());
			}
		}
	}

	internal string UniqueID2ClientID(string uniqueId)
	{
		if (string.IsNullOrEmpty(uniqueId))
		{
			return null;
		}
		return uniqueId.Replace(IdSeparator, ClientIDSeparator);
	}

	private void SetMask(int m, bool val)
	{
		if (val)
		{
			stateMask |= m;
		}
		else
		{
			stateMask &= ~m;
		}
	}

	internal void SetBindingContainer(bool isBC)
	{
		SetMask(16, isBC);
	}

	internal void ResetChildNames()
	{
		ResetChildNames(-1);
	}

	internal void ResetChildNames(int value)
	{
		if (value < 0)
		{
			defaultNumberID = 0;
		}
		else
		{
			defaultNumberID = value;
		}
	}

	internal int GetDefaultNumberID()
	{
		return defaultNumberID;
	}

	private string GetDefaultName()
	{
		if (defaultNumberID > 99)
		{
			return "ctl" + defaultNumberID++;
		}
		return defaultNameArray[defaultNumberID++];
	}

	private void NullifyUniqueID()
	{
		uniqueID = null;
		ClearCachedClientID();
		if (HasControls())
		{
			for (int i = 0; i < _controls.Count; i++)
			{
				_controls[i].NullifyUniqueID();
			}
		}
	}

	private bool IsLoadViewStateByID()
	{
		if (loadViewStateByIDCache == null)
		{
			loadViewStateByIDCache = new Dictionary<Type, bool>();
		}
		Type type = GetType();
		if (loadViewStateByIDCache.TryGetValue(type, out var value))
		{
			return value;
		}
		System.ComponentModel.AttributeCollection attributes = TypeDescriptor.GetAttributes(type);
		value = false;
		if (attributes != null)
		{
			foreach (Attribute item in attributes)
			{
				if (item is ViewStateModeByIdAttribute)
				{
					value = true;
					break;
				}
			}
		}
		loadViewStateByIDCache.Add(type, value);
		return value;
	}

	protected internal virtual void AddedControl(Control control, int index)
	{
		ResetControlsCache();
		if (control._parent != null)
		{
			control._parent.Controls.Remove(control);
		}
		control._parent = this;
		Control namingContainer = (((stateMask & 0x40) != 0) ? this : NamingContainer);
		if ((stateMask & 0x1800) != 0)
		{
			control.InitRecursive(namingContainer);
			control.SetMask(262144, val: false);
			if ((stateMask & 0x6000) != 0 && pendingVS != null)
			{
				bool flag = LoadViewStateByID;
				string key;
				object obj;
				if (flag)
				{
					control.EnsureID();
					key = control.ID;
					obj = pendingVS[key];
				}
				else
				{
					key = null;
					obj = pendingVS[index];
				}
				if (obj != null)
				{
					if (flag)
					{
						pendingVS.Remove(key);
					}
					else
					{
						pendingVS.Remove(index);
					}
					if (pendingVS.Count == 0)
					{
						pendingVS = null;
					}
					control.LoadViewStateRecursive(obj);
				}
			}
			if ((stateMask & 0x4000) != 0)
			{
				control.LoadRecursive();
			}
			if ((stateMask & 0x8000) != 0)
			{
				control.PreRenderRecursiveInternal();
			}
		}
		else
		{
			control.SetNamingContainer(namingContainer);
			control.SetMask(262144, val: false);
		}
	}

	private void SetNamingContainer(Control nc)
	{
		if (nc != null)
		{
			_namingContainer = nc;
			if (AutoID)
			{
				EnsureIDInternal();
			}
		}
	}

	protected virtual void AddParsedSubObject(object obj)
	{
		if (obj is Control child)
		{
			Controls.Add(child);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public virtual void ApplyStyleSheetSkin(Page page)
	{
		if (page != null && EnableTheming && page.StyleSheetPageTheme != null)
		{
			page.StyleSheetPageTheme.GetControlSkin(GetType(), SkinID)?.ApplySkin(this);
		}
	}

	[MonoTODO]
	protected void BuildProfileTree(string parentId, bool calcViewState)
	{
	}

	protected void ClearChildControlState()
	{
		_isChildControlStateCleared = true;
	}

	protected void ClearChildState()
	{
		ClearChildViewState();
		ClearChildControlState();
	}

	protected void ClearChildViewState()
	{
		pendingVS = null;
	}

	protected internal virtual void CreateChildControls()
	{
	}

	protected virtual ControlCollection CreateControlCollection()
	{
		return new ControlCollection(this);
	}

	protected virtual void EnsureChildControls()
	{
		if (!ChildControlsCreated && (stateMask & 8) == 0)
		{
			stateMask |= 8;
			if (Adapter != null)
			{
				Adapter.CreateChildControls();
			}
			else
			{
				CreateChildControls();
			}
			ChildControlsCreated = true;
			stateMask &= -9;
		}
	}

	private void EnsureIDInternal()
	{
		if (_userId == null)
		{
			_userId = NamingContainer.GetDefaultName();
			SetMask(131072, val: true);
		}
	}

	protected void EnsureID()
	{
		if (NamingContainer != null)
		{
			EnsureIDInternal();
			SetMask(1024, val: true);
		}
	}

	protected bool HasEvents()
	{
		return _events != null;
	}

	private void ResetControlsCache()
	{
		_controlsCache = null;
		if ((stateMask & 0x40) == 0 && Parent != null)
		{
			Parent.ResetControlsCache();
		}
	}

	private Hashtable InitControlsCache()
	{
		if (_controlsCache != null)
		{
			return _controlsCache;
		}
		if ((stateMask & 0x40) != 0 || Parent == null)
		{
			_controlsCache = new Hashtable(StringComparer.OrdinalIgnoreCase);
		}
		else
		{
			_controlsCache = Parent.InitControlsCache();
		}
		return _controlsCache;
	}

	private void EnsureControlsCache()
	{
		if (_controlsCache == null)
		{
			InitControlsCache();
			FillControlCache(_controls);
		}
	}

	private void FillControlCache(ControlCollection controls)
	{
		if (controls == null || controls.Count == 0)
		{
			return;
		}
		foreach (Control control in controls)
		{
			try
			{
				if (control._userId != null)
				{
					_controlsCache.Add(control._userId, control);
				}
			}
			catch (ArgumentException)
			{
				throw new HttpException("Multiple controls with the same ID '" + control._userId + "' were found. FindControl requires that controls have unique IDs. ");
			}
			if ((control.stateMask & 0x40) == 0 && control.HasControls())
			{
				FillControlCache(control.Controls);
			}
		}
	}

	protected bool IsLiteralContent()
	{
		if (_controls != null && _controls.Count == 1 && _controls[0] is LiteralControl)
		{
			return true;
		}
		return false;
	}

	[WebSysDescription("")]
	public virtual Control FindControl(string id)
	{
		return FindControl(id, 0);
	}

	private Control LookForControlByName(string id)
	{
		EnsureControlsCache();
		return (Control)_controlsCache[id];
	}

	protected virtual Control FindControl(string id, int pathOffset)
	{
		EnsureChildControls();
		Control control = null;
		if ((stateMask & 0x40) == 0)
		{
			return NamingContainer?.FindControl(id, pathOffset);
		}
		if (!HasControls())
		{
			return null;
		}
		int num = id.IndexOf(IdSeparator, pathOffset);
		if (num == -1)
		{
			Control control2 = LookForControlByName((pathOffset > 0) ? id.Substring(pathOffset) : id);
			if (control2 != null)
			{
				return control2;
			}
			if (pathOffset == 0)
			{
				control = NamingContainer;
				if (control != null)
				{
					control2 = control.FindControl(id);
					if (control2 != null)
					{
						return control2;
					}
				}
			}
			return null;
		}
		string id2 = id.Substring(pathOffset, num - pathOffset);
		return LookForControlByName(id2)?.FindControl(id, num + 1);
	}

	protected virtual void LoadViewState(object savedState)
	{
		if (savedState != null)
		{
			ViewState.LoadViewState(savedState);
			object obj = ViewState["Visible"];
			if (obj != null)
			{
				SetMask(2, (bool)obj);
				stateMask |= 128;
			}
		}
	}

	protected string MapPathSecure(string virtualPath)
	{
		string virtualPath2 = UrlUtils.Combine(TemplateSourceDirectory, virtualPath);
		return Context.Request.MapPath(virtualPath2);
	}

	protected virtual bool OnBubbleEvent(object source, EventArgs args)
	{
		return false;
	}

	protected virtual void OnDataBinding(EventArgs e)
	{
		if ((event_mask & 1) != 0)
		{
			((EventHandler)_events[DataBindingEvent])?.Invoke(this, e);
		}
	}

	protected internal virtual void OnInit(EventArgs e)
	{
		if ((event_mask & 4) != 0)
		{
			((EventHandler)_events[InitEvent])?.Invoke(this, e);
		}
	}

	protected internal virtual void OnLoad(EventArgs e)
	{
		if ((event_mask & 8) != 0)
		{
			((EventHandler)_events[LoadEvent])?.Invoke(this, e);
		}
	}

	protected internal virtual void OnPreRender(EventArgs e)
	{
		if ((event_mask & 0x10) != 0)
		{
			((EventHandler)_events[PreRenderEvent])?.Invoke(this, e);
		}
	}

	protected internal virtual void OnUnload(EventArgs e)
	{
		if ((event_mask & 0x20) != 0)
		{
			((EventHandler)_events[UnloadEvent])?.Invoke(this, e);
		}
	}

	protected internal Stream OpenFile(string path)
	{
		try
		{
			return File.OpenRead(Context.Server.MapPath(path));
		}
		catch (UnauthorizedAccessException)
		{
			throw new HttpException("Access to the specified file was denied.");
		}
	}

	internal string GetPhysicalFilePath(string virtualPath)
	{
		Page page = Page;
		if (VirtualPathUtility.IsAbsolute(virtualPath))
		{
			if (page == null)
			{
				return Context.Server.MapPath(virtualPath);
			}
			return page.MapPath(virtualPath);
		}
		MasterPage masterPage = null;
		for (Control parent = Parent; parent != null; parent = parent.Parent)
		{
			if (parent is MasterPage)
			{
				masterPage = parent as MasterPage;
				break;
			}
		}
		string text = ((masterPage == null) ? VirtualPathUtility.Combine(TemplateSourceDirectory + "/", virtualPath) : VirtualPathUtility.Combine(masterPage.TemplateSourceDirectory + "/", virtualPath));
		if (page == null)
		{
			return Context.Server.MapPath(text);
		}
		return page.MapPath(text);
	}

	protected void RaiseBubbleEvent(object source, EventArgs args)
	{
		Control parent = Parent;
		while (parent != null && !parent.OnBubbleEvent(source, args))
		{
			parent = parent.Parent;
		}
	}

	protected internal virtual void Render(HtmlTextWriter writer)
	{
		RenderChildren(writer);
	}

	protected internal virtual void RenderChildren(HtmlTextWriter writer)
	{
		if (_renderMethodDelegate != null)
		{
			_renderMethodDelegate(writer, this);
		}
		else
		{
			if (_controls == null)
			{
				return;
			}
			int count = _controls.Count;
			for (int i = 0; i < count; i++)
			{
				Control control = _controls[i];
				if (control != null)
				{
					ControlAdapter controlAdapter = control.Adapter;
					if (controlAdapter != null)
					{
						control.RenderControl(writer, controlAdapter);
					}
					else
					{
						control.RenderControl(writer);
					}
				}
			}
		}
	}

	protected virtual ControlAdapter ResolveAdapter()
	{
		HttpContext context = Context;
		if (context == null)
		{
			return null;
		}
		if (!context.Request.BrowserMightHaveAdapters)
		{
			return null;
		}
		IDictionary adapters = context.Request.Browser.Adapters;
		Type type = GetType();
		Type type2 = (Type)adapters[type];
		while (type2 == null && type != typeof(Control))
		{
			type = type.BaseType;
			type2 = (Type)adapters[type];
		}
		ControlAdapter result = null;
		if (type2 != null)
		{
			result = (ControlAdapter)Activator.CreateInstance(type2);
		}
		return result;
	}

	protected virtual object SaveViewState()
	{
		if ((stateMask & 0x80) != 0)
		{
			ViewState["Visible"] = (stateMask & 2) != 0;
		}
		else if (_viewState == null)
		{
			return null;
		}
		return _viewState.SaveViewState();
	}

	protected virtual void TrackViewState()
	{
		if (_viewState != null)
		{
			_viewState.TrackViewState();
		}
		stateMask |= 256;
	}

	public virtual void Dispose()
	{
		if ((event_mask & 2) != 0)
		{
			((EventHandler)_events[DisposedEvent])?.Invoke(this, EventArgs.Empty);
		}
	}

	public virtual void DataBind()
	{
		DataBind(raiseOnDataBinding: true);
	}

	protected virtual void DataBindChildren()
	{
		if (HasControls())
		{
			int num = ((_controls != null) ? _controls.Count : 0);
			for (int i = 0; i < num; i++)
			{
				_controls[i].DataBind();
			}
		}
	}

	public virtual bool HasControls()
	{
		if (_controls != null)
		{
			return _controls.Count > 0;
		}
		return false;
	}

	public virtual void RenderControl(HtmlTextWriter writer)
	{
		if (adapter != null)
		{
			RenderControl(writer, adapter);
		}
		else if ((stateMask & 2) != 0)
		{
			HttpContext context = Context;
			TraceContext traceContext = context?.Trace;
			int num = 0;
			if (traceContext != null && traceContext.IsEnabled)
			{
				num = context.Response.GetOutputByteCount();
			}
			Render(writer);
			if (traceContext != null && traceContext.IsEnabled)
			{
				int num2 = context.Response.GetOutputByteCount() - num;
				traceContext.SaveSize(this, (num2 >= 0) ? num2 : 0);
			}
		}
	}

	protected void RenderControl(HtmlTextWriter writer, ControlAdapter adapter)
	{
		if ((stateMask & 2) != 0)
		{
			adapter.BeginRender(writer);
			adapter.Render(writer);
			adapter.EndRender(writer);
		}
	}

	public string ResolveUrl(string relativeUrl)
	{
		if (relativeUrl == null)
		{
			throw new ArgumentNullException("relativeUrl");
		}
		if (relativeUrl == string.Empty)
		{
			return relativeUrl;
		}
		if (VirtualPathUtility.IsAbsolute(relativeUrl))
		{
			return relativeUrl;
		}
		if (relativeUrl[0] == '#')
		{
			return relativeUrl;
		}
		string appRelativeTemplateSourceDirectory = AppRelativeTemplateSourceDirectory;
		HttpResponse httpResponse = Context?.Response;
		if (appRelativeTemplateSourceDirectory == null || appRelativeTemplateSourceDirectory.Length == 0 || httpResponse == null || relativeUrl.IndexOf(':') >= 0)
		{
			return relativeUrl;
		}
		if (!VirtualPathUtility.IsAppRelative(relativeUrl))
		{
			relativeUrl = VirtualPathUtility.Combine(VirtualPathUtility.AppendTrailingSlash(appRelativeTemplateSourceDirectory), relativeUrl);
		}
		return httpResponse.ApplyAppPathModifier(relativeUrl);
	}

	public string ResolveClientUrl(string relativeUrl)
	{
		if (relativeUrl == null)
		{
			throw new ArgumentNullException("relativeUrl");
		}
		if (relativeUrl.Length == 0)
		{
			return string.Empty;
		}
		if (VirtualPathUtility.IsAbsolute(relativeUrl) || relativeUrl.IndexOf(':') >= 0)
		{
			return relativeUrl;
		}
		HttpRequest httpRequest = Context?.Request;
		if (httpRequest != null)
		{
			string templateSourceDirectory = TemplateSourceDirectory;
			if (templateSourceDirectory == null || templateSourceDirectory.Length == 0)
			{
				return relativeUrl;
			}
			string text = httpRequest.ClientFilePath;
			if (text.Length > 1 && text[text.Length - 1] != '/')
			{
				text = VirtualPathUtility.GetDirectory(text, normalize: false);
			}
			if (VirtualPathUtility.IsAppRelative(relativeUrl))
			{
				return VirtualPathUtility.MakeRelative(text, relativeUrl);
			}
			string text2 = VirtualPathUtility.AppendTrailingSlash(templateSourceDirectory);
			if (text.Length == text2.Length && string.CompareOrdinal(text, text2) == 0)
			{
				return relativeUrl;
			}
			relativeUrl = VirtualPathUtility.Combine(text2, relativeUrl);
			return VirtualPathUtility.MakeRelative(text, relativeUrl);
		}
		return relativeUrl;
	}

	internal bool HasRenderMethodDelegate()
	{
		return _renderMethodDelegate != null;
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public void SetRenderMethodDelegate(RenderMethod renderMethod)
	{
		_renderMethodDelegate = renderMethod;
	}

	internal void LoadRecursive()
	{
		if ((stateMask & 0x4000) == 0)
		{
			if (Adapter != null)
			{
				Adapter.OnLoad(EventArgs.Empty);
			}
			else
			{
				OnLoad(EventArgs.Empty);
			}
		}
		int num = ((_controls != null) ? _controls.Count : 0);
		for (int i = 0; i < num; i++)
		{
			_controls[i].LoadRecursive();
		}
		stateMask |= 16384;
	}

	internal void UnloadRecursive(bool dispose)
	{
		int num = ((_controls != null) ? _controls.Count : 0);
		for (int i = 0; i < num; i++)
		{
			_controls[i].UnloadRecursive(dispose);
		}
		ControlAdapter controlAdapter = Adapter;
		if (controlAdapter != null)
		{
			controlAdapter.OnUnload(EventArgs.Empty);
		}
		else
		{
			OnUnload(EventArgs.Empty);
		}
		if (dispose)
		{
			Dispose();
		}
	}

	internal void PreRenderRecursiveInternal()
	{
		if (Visible)
		{
			SetMask(2, val: true);
			EnsureChildControls();
			if (Adapter != null)
			{
				Adapter.OnPreRender(EventArgs.Empty);
			}
			else
			{
				OnPreRender(EventArgs.Empty);
			}
			if (!HasControls())
			{
				return;
			}
			int num = ((_controls != null) ? _controls.Count : 0);
			for (int i = 0; i < num; i++)
			{
				_controls[i].PreRenderRecursiveInternal();
			}
		}
		else
		{
			SetMask(2, val: false);
		}
		stateMask |= 32768;
	}

	internal virtual void InitRecursive(Control namingContainer)
	{
		SetNamingContainer(namingContainer);
		if (HasControls())
		{
			if ((stateMask & 0x40) != 0)
			{
				namingContainer = this;
			}
			int num = ((_controls != null) ? _controls.Count : 0);
			for (int i = 0; i < num; i++)
			{
				_controls[i].InitRecursive(namingContainer);
			}
		}
		if ((stateMask & 0x40000) == 0 && (stateMask & 0x800) != 2048)
		{
			stateMask |= 4096;
			ApplyTheme();
			ControlAdapter controlAdapter = Adapter;
			if (controlAdapter != null)
			{
				controlAdapter.OnInit(EventArgs.Empty);
			}
			else
			{
				OnInit(EventArgs.Empty);
			}
			TrackViewState();
			stateMask |= 2048;
			stateMask &= -4097;
		}
	}

	internal object SaveViewStateRecursive()
	{
		TraceContext traceContext = ((Context != null && Context.Trace.IsEnabled) ? Context.Trace : null);
		ArrayList arrayList = null;
		bool flag = LoadViewStateByID;
		if (HasControls())
		{
			int num = ((_controls != null) ? _controls.Count : 0);
			for (int i = 0; i < num; i++)
			{
				Control control = _controls[i];
				object obj = control.SaveViewStateRecursive();
				if (obj != null)
				{
					if (arrayList == null)
					{
						arrayList = new ArrayList();
					}
					if (flag)
					{
						control.EnsureID();
						arrayList.Add(new Pair(control.ID, obj));
					}
					else
					{
						arrayList.Add(new Pair(i, obj));
					}
				}
			}
		}
		object obj2 = null;
		if (Adapter != null)
		{
			obj2 = Adapter.SaveAdapterViewState();
		}
		object obj3 = null;
		if (IsViewStateEnabled)
		{
			obj3 = SaveViewState();
		}
		if (obj3 == null && arrayList == null)
		{
			traceContext?.SaveViewState(this, null);
			return null;
		}
		traceContext?.SaveViewState(this, obj3);
		obj3 = new object[2] { obj3, obj2 };
		return new Pair(obj3, arrayList);
	}

	internal void LoadViewStateRecursive(object savedState)
	{
		if (savedState == null)
		{
			return;
		}
		Pair pair = (Pair)savedState;
		object[] array = (object[])pair.First;
		if (Adapter != null)
		{
			Adapter.LoadAdapterViewState(array[1]);
		}
		LoadViewState(array[0]);
		if (!(pair.Second is ArrayList { Count: var count } arrayList))
		{
			return;
		}
		bool flag = LoadViewStateByID;
		for (int i = 0; i < count; i++)
		{
			if (!(arrayList[i] is Pair pair2))
			{
				continue;
			}
			if (flag)
			{
				string text = (string)pair2.First;
				bool flag2 = false;
				foreach (Control control in Controls)
				{
					control.EnsureID();
					if (control.ID == text)
					{
						flag2 = true;
						control.LoadViewStateRecursive(pair2.Second);
						break;
					}
				}
				if (!flag2)
				{
					if (pendingVS == null)
					{
						pendingVS = new Hashtable();
					}
					pendingVS[text] = pair2.Second;
				}
				continue;
			}
			int num = (int)pair2.First;
			if (num < Controls.Count)
			{
				Controls[num].LoadViewStateRecursive(pair2.Second);
				continue;
			}
			if (pendingVS == null)
			{
				pendingVS = new Hashtable();
			}
			pendingVS[num] = pair2.Second;
		}
		stateMask |= 8192;
	}

	internal void ApplyTheme()
	{
		Page page = Page;
		if (page != null && page.PageTheme != null && EnableTheming)
		{
			page.PageTheme.GetControlSkin(GetType(), SkinID)?.ApplySkin(this);
		}
	}

	protected internal virtual void RemovedControl(Control control)
	{
		control.UnloadRecursive(dispose: false);
		control._parent = null;
		control._page = null;
		control._namingContainer = null;
		if ((control.stateMask & 0x20000) != 0)
		{
			control._userId = null;
			control.SetMask(1024, val: false);
		}
		control.NullifyUniqueID();
		control.SetMask(262144, val: true);
		ResetControlsCache();
	}

	IDictionary IControlDesignerAccessor.GetDesignModeState()
	{
		throw new NotImplementedException();
	}

	void IControlDesignerAccessor.SetDesignModeState(IDictionary designData)
	{
		SetDesignModeState(designData);
	}

	void IControlDesignerAccessor.SetOwnerControl(Control control)
	{
		throw new NotImplementedException();
	}

	public virtual void Focus()
	{
		Page.SetFocus(this);
	}

	protected internal virtual void LoadControlState(object savedState)
	{
	}

	protected internal virtual object SaveControlState()
	{
		return null;
	}

	protected virtual void DataBind(bool raiseOnDataBinding)
	{
		bool foundDataItem = false;
		if ((stateMask & 0x40) != 0 && Page != null)
		{
			object dataItem = DataBinder.GetDataItem(this, out foundDataItem);
			if (foundDataItem)
			{
				Page.PushDataItemContext(dataItem);
			}
		}
		try
		{
			if (raiseOnDataBinding)
			{
				OnDataBinding(EventArgs.Empty);
			}
			DataBindChildren();
		}
		finally
		{
			if (foundDataItem)
			{
				Page.PopDataItemContext();
			}
		}
	}

	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	protected virtual IDictionary GetDesignModeState()
	{
		throw new NotImplementedException();
	}

	protected virtual void SetDesignModeState(IDictionary data)
	{
		throw new NotImplementedException();
	}

	private bool CheckForValidationSupport()
	{
		return GetType().GetCustomAttributes(typeof(SupportsEventValidationAttribute), inherit: false).Length != 0;
	}

	internal void ValidateEvent(string uniqueId, string argument)
	{
		Page page = Page;
		if (page != null && CheckForValidationSupport())
		{
			page.ClientScript.ValidateEvent(uniqueId, argument);
		}
	}

	void IParserAccessor.AddParsedSubObject(object obj)
	{
		AddParsedSubObject(obj);
	}

	public string GetRouteUrl(object routeParameters)
	{
		return GetRouteUrl(null, new RouteValueDictionary(routeParameters));
	}

	public string GetRouteUrl(RouteValueDictionary routeParameters)
	{
		return GetRouteUrl(null, routeParameters);
	}

	public string GetRouteUrl(string routeName, object routeParameters)
	{
		return GetRouteUrl(routeName, new RouteValueDictionary(routeParameters));
	}

	public string GetRouteUrl(string routeName, RouteValueDictionary routeParameters)
	{
		HttpRequest httpRequest = (Context ?? HttpContext.Current)?.Request;
		if (httpRequest == null)
		{
			return null;
		}
		return RouteTable.Routes.GetVirtualPath(httpRequest.RequestContext, routeName, routeParameters)?.VirtualPath;
	}

	public string GetUniqueIDRelativeTo(Control control)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control");
		}
		Control control2 = this;
		Control namingContainer = control.NamingContainer;
		if (namingContainer != null)
		{
			while (control2 != null && control2 != namingContainer)
			{
				control2 = control2.Parent;
			}
		}
		if (control2 != namingContainer)
		{
			throw new InvalidOperationException($"This control is not a descendant of the NamingContainer of '{control.UniqueID}'");
		}
		int num = control.UniqueID.LastIndexOf(IdSeparator);
		if (num < 0)
		{
			return UniqueID;
		}
		return UniqueID.Substring(num + 1);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected void BeginRenderTracing(TextWriter writer, object traceObject)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected void EndRenderTracing(TextWriter writer, object traceObject)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void SetTraceData(object traceDataKey, object traceDataValue)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void SetTraceData(object tracedObject, object traceDataKey, object traceDataValue)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
