using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.IO;
using System.Security.Permissions;
using System.Security.Principal;
using System.Text;
using System.Threading;
using System.Web.Caching;
using System.Web.Compilation;
using System.Web.Configuration;
using System.Web.Hosting;
using System.Web.ModelBinding;
using System.Web.Routing;
using System.Web.SessionState;
using System.Web.UI.Adapters;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.Util;
using Unity;

namespace System.Web.UI;

[Designer("Microsoft.VisualStudio.Web.WebForms.WebFormDesigner, Microsoft.VisualStudio.Web, Version=0.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(IRootDesigner))]
[ToolboxItem(false)]
[DesignerCategory("ASPXCodeBehind")]
[DefaultEvent("Load")]
[DesignerSerializer("Microsoft.VisualStudio.Web.WebForms.WebFormCodeDomSerializer, Microsoft.VisualStudio.Web, Version=0.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.Serialization.TypeCodeDomSerializer, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Page : TemplateControl, IHttpHandler
{
	private delegate void ProcessRequestDelegate(HttpContext context);

	private sealed class DummyAsyncResult : IAsyncResult
	{
		private readonly object state;

		private readonly WaitHandle asyncWaitHandle;

		private readonly bool completedSynchronously;

		private readonly bool isCompleted;

		public object AsyncState => state;

		public WaitHandle AsyncWaitHandle => asyncWaitHandle;

		public bool CompletedSynchronously => completedSynchronously;

		public bool IsCompleted => isCompleted;

		public DummyAsyncResult(bool isCompleted, bool completedSynchronously, object state)
		{
			this.isCompleted = isCompleted;
			this.completedSynchronously = completedSynchronously;
			this.state = state;
			if (isCompleted)
			{
				asyncWaitHandle = new ManualResetEvent(initialState: true);
			}
			else
			{
				asyncWaitHandle = new ManualResetEvent(initialState: false);
			}
		}
	}

	private bool _eventValidation = true;

	private object[] _savedControlState;

	private bool _doLoadPreviousPage;

	private string _focusedControlID;

	private bool _hasEnabledControlArray;

	private bool _viewState;

	private bool _viewStateMac;

	private string _errorPage;

	private bool is_validated;

	private bool _smartNavigation;

	private int _transactionMode;

	private ValidatorCollection _validators;

	private bool renderingForm;

	private string _savedViewState;

	private List<string> _requiresPostBack;

	private List<string> _requiresPostBackCopy;

	private List<IPostBackDataHandler> requiresPostDataChanged;

	private IPostBackEventHandler requiresRaiseEvent;

	private IPostBackEventHandler formPostedRequiresRaiseEvent;

	private NameValueCollection secondPostData;

	private bool requiresPostBackScript;

	private bool postBackScriptRendered;

	private bool requiresFormScriptDeclaration;

	private bool formScriptDeclarationRendered;

	private bool handleViewState;

	private string viewStateUserKey;

	private NameValueCollection _requestValueCollection;

	private string clientTarget;

	private ClientScriptManager scriptManager;

	private bool allow_load;

	private PageStatePersister page_state_persister;

	private CultureInfo _appCulture;

	private CultureInfo _appUICulture;

	private HttpContext _context;

	private HttpApplicationState _application;

	private HttpResponse _response;

	private HttpRequest _request;

	private Cache _cache;

	private HttpSessionState _session;

	[EditorBrowsable(EditorBrowsableState.Never)]
	public const string postEventArgumentID = "__EVENTARGUMENT";

	[EditorBrowsable(EditorBrowsableState.Never)]
	public const string postEventSourceID = "__EVENTTARGET";

	private const string ScrollPositionXID = "__SCROLLPOSITIONX";

	private const string ScrollPositionYID = "__SCROLLPOSITIONY";

	private const string EnabledControlArrayID = "__enabledControlArray";

	internal const string LastFocusID = "__LASTFOCUS";

	internal const string CallbackArgumentID = "__CALLBACKPARAM";

	internal const string CallbackSourceID = "__CALLBACKID";

	internal const string PreviousPageID = "__PREVIOUSPAGE";

	private int maxPageStateFieldLength = -1;

	private string uniqueFilePathSuffix;

	private HtmlHead htmlHeader;

	private MasterPage masterPage;

	private string masterPageFile;

	private Page previousPage;

	private bool isCrossPagePostBack;

	private bool isPostBack;

	private bool isCallback;

	private List<Control> requireStateControls;

	private HtmlForm _form;

	private string _title;

	private string _theme;

	private string _styleSheetTheme;

	private string _metaDescription;

	private string _metaKeywords;

	private Control _autoPostBackControl;

	private bool frameworkInitialized;

	private Hashtable items;

	private bool _maintainScrollPositionOnPostBack;

	private bool asyncMode;

	private TimeSpan asyncTimeout;

	private const double DefaultAsyncTimeout = 45.0;

	private List<PageAsyncTask> parallelTasks;

	private List<PageAsyncTask> serialTasks;

	private ViewStateEncryptionMode viewStateEncryptionMode;

	private bool controlRegisteredForViewStateEncryption;

	private string _validationStartupScript;

	private string _validationOnSubmitStatement;

	private string _validationInitializeScript;

	private string _webFormScriptReference;

	internal static readonly object InitCompleteEvent = new object();

	internal static readonly object LoadCompleteEvent = new object();

	internal static readonly object PreInitEvent = new object();

	internal static readonly object PreLoadEvent = new object();

	internal static readonly object PreRenderCompleteEvent = new object();

	internal static readonly object SaveStateCompleteEvent = new object();

	private int event_mask;

	private const int initcomplete_mask = 1;

	private const int loadcomplete_mask = 2;

	private const int preinit_mask = 4;

	private const int preload_mask = 8;

	private const int prerendercomplete_mask = 16;

	private const int savestatecomplete_mask = 32;

	private Hashtable contentTemplates;

	private PageTheme _pageTheme;

	private PageTheme _styleSheetPageTheme;

	private Stack dataItemCtx;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public HttpApplicationState Application => _application;

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected bool AspCompatMode
	{
		get
		{
			return false;
		}
		set
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool Buffer
	{
		get
		{
			return Response.BufferOutput;
		}
		set
		{
			Response.BufferOutput = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Cache Cache
	{
		get
		{
			if (_cache == null)
			{
				throw new HttpException("Cache is not available.");
			}
			return _cache;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DefaultValue("")]
	[WebSysDescription("Value do override the automatic browser detection and force the page to use the specified browser.")]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public string ClientTarget
	{
		get
		{
			if (clientTarget != null)
			{
				return clientTarget;
			}
			return string.Empty;
		}
		set
		{
			clientTarget = value;
			if (value == string.Empty)
			{
				clientTarget = null;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public int CodePage
	{
		get
		{
			return Response.ContentEncoding.CodePage;
		}
		set
		{
			Response.ContentEncoding = Encoding.GetEncoding(value);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string ContentType
	{
		get
		{
			return Response.ContentType;
		}
		set
		{
			Response.ContentType = value;
		}
	}

	protected internal override HttpContext Context
	{
		get
		{
			if (_context == null)
			{
				return HttpContext.Current;
			}
			return _context;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string Culture
	{
		get
		{
			return Thread.CurrentThread.CurrentCulture.Name;
		}
		set
		{
			Thread.CurrentThread.CurrentCulture = GetPageCulture(value, Thread.CurrentThread.CurrentCulture);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DefaultValue("true")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual bool EnableEventValidation
	{
		get
		{
			return _eventValidation;
		}
		set
		{
			if (IsInited)
			{
				throw new InvalidOperationException("The 'EnableEventValidation' property can be set only in the Page_init, the Page directive or in the <pages> configuration section.");
			}
			_eventValidation = value;
		}
	}

	[Browsable(false)]
	public override bool EnableViewState
	{
		get
		{
			return _viewState;
		}
		set
		{
			_viewState = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public bool EnableViewStateMac
	{
		get
		{
			return _viewStateMac;
		}
		set
		{
			_viewStateMac = value;
		}
	}

	internal bool EnableViewStateMacInternal
	{
		get
		{
			return _viewStateMac;
		}
		set
		{
			_viewStateMac = value;
		}
	}

	[Browsable(false)]
	[WebSysDescription("The URL of a page used for error redirection.")]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string ErrorPage
	{
		get
		{
			return _errorPage;
		}
		set
		{
			HttpContext context = Context;
			_errorPage = value;
			if (context != null)
			{
				context.ErrorPage = value;
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete("The recommended alternative is HttpResponse.AddFileDependencies. http://go.microsoft.com/fwlink/?linkid=14202")]
	protected ArrayList FileDependencies
	{
		set
		{
			if (Response != null)
			{
				Response.AddFileDependencies(value);
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public override string ID
	{
		get
		{
			return base.ID;
		}
		set
		{
			base.ID = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsPostBack => isPostBack;

	public bool IsPostBackEventControlRegistered => requiresRaiseEvent != null;

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public bool IsReusable => false;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsValid
	{
		get
		{
			if (!is_validated)
			{
				throw new HttpException(Locale.GetText("Page.IsValid cannot be called before validation has taken place. It should be queried in the event handler for a control that has CausesValidation=True and initiated the postback, or after a call to Page.Validate."));
			}
			foreach (IValidator validator in Validators)
			{
				if (!validator.IsValid)
				{
					return false;
				}
			}
			return true;
		}
	}

	[Browsable(false)]
	public IDictionary Items
	{
		get
		{
			if (items == null)
			{
				items = new Hashtable();
			}
			return items;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public int LCID
	{
		get
		{
			return Thread.CurrentThread.CurrentCulture.LCID;
		}
		set
		{
			Thread.CurrentThread.CurrentCulture = new CultureInfo(value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool MaintainScrollPositionOnPostBack
	{
		get
		{
			return _maintainScrollPositionOnPostBack;
		}
		set
		{
			_maintainScrollPositionOnPostBack = value;
		}
	}

	public PageAdapter PageAdapter => Adapter as PageAdapter;

	internal string WebFormScriptReference
	{
		get
		{
			if (_webFormScriptReference == null)
			{
				_webFormScriptReference = (IsMultiForm ? theForm : "window");
			}
			return _webFormScriptReference;
		}
	}

	internal string ValidationStartupScript
	{
		get
		{
			if (_validationStartupScript == null)
			{
				_validationStartupScript = "\n" + WebFormScriptReference + ".Page_ValidationActive = false;\n" + WebFormScriptReference + ".ValidatorOnLoad();\n" + WebFormScriptReference + ".ValidatorOnSubmit = function () {\n\tif (this.Page_ValidationActive) {\n\t\treturn this.ValidatorCommonOnSubmit();\n\t}\n\treturn true;\n};\n";
			}
			return _validationStartupScript;
		}
	}

	internal string ValidationOnSubmitStatement
	{
		get
		{
			if (_validationOnSubmitStatement == null)
			{
				_validationOnSubmitStatement = "if (!" + WebFormScriptReference + ".ValidatorOnSubmit()) return false;";
			}
			return _validationOnSubmitStatement;
		}
	}

	internal string ValidationInitializeScript
	{
		get
		{
			if (_validationInitializeScript == null)
			{
				_validationInitializeScript = "WebFormValidation_Initialize(" + WebFormScriptReference + ");";
			}
			return _validationInitializeScript;
		}
	}

	internal IScriptManager ScriptManager => (IScriptManager)Items[typeof(IScriptManager)];

	internal string theForm => "theForm";

	internal bool IsMultiForm => false;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public HttpRequest Request
	{
		get
		{
			if (_request == null)
			{
				throw new HttpException("Request is not available in this context.");
			}
			return RequestInternal;
		}
	}

	internal HttpRequest RequestInternal => _request;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public HttpResponse Response
	{
		get
		{
			if (_response == null)
			{
				throw new HttpException("Response is not available in this context.");
			}
			return _response;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public string ResponseEncoding
	{
		get
		{
			return Response.ContentEncoding.WebName;
		}
		set
		{
			Response.ContentEncoding = Encoding.GetEncoding(value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public HttpServerUtility Server => Context.Server;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual HttpSessionState Session
	{
		get
		{
			if (_session != null)
			{
				return _session;
			}
			try
			{
				_session = Context.Session;
			}
			catch
			{
			}
			if (_session == null)
			{
				throw new HttpException("Session state can only be used when enableSessionState is set to true, either in a configuration file or in the Page directive.");
			}
			return _session;
		}
	}

	[Filterable(false)]
	[Obsolete("The recommended alternative is Page.SetFocus and Page.MaintainScrollPositionOnPostBack. http://go.microsoft.com/fwlink/?linkid=14202")]
	[Browsable(false)]
	public bool SmartNavigation
	{
		get
		{
			return _smartNavigation;
		}
		set
		{
			_smartNavigation = value;
		}
	}

	[Browsable(false)]
	[Filterable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string StyleSheetTheme
	{
		get
		{
			return _styleSheetTheme;
		}
		set
		{
			_styleSheetTheme = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual string Theme
	{
		get
		{
			return _theme;
		}
		set
		{
			_theme = value;
		}
	}

	public Control AutoPostBackControl
	{
		get
		{
			return _autoPostBackControl;
		}
		set
		{
			_autoPostBackControl = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public RouteData RouteData
	{
		get
		{
			if (_request == null)
			{
				return null;
			}
			return _request.RequestContext?.RouteData;
		}
	}

	[Localizable(true)]
	[Bindable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string MetaDescription
	{
		get
		{
			if (_metaDescription == null)
			{
				if (htmlHeader == null)
				{
					if (frameworkInitialized)
					{
						throw new InvalidOperationException("A server-side head element is required to set this property.");
					}
					return string.Empty;
				}
				return htmlHeader.Description;
			}
			return _metaDescription;
		}
		set
		{
			if (htmlHeader == null)
			{
				if (frameworkInitialized)
				{
					throw new InvalidOperationException("A server-side head element is required to set this property.");
				}
				_metaDescription = value;
			}
			else
			{
				htmlHeader.Description = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Bindable(true)]
	[Localizable(true)]
	public string MetaKeywords
	{
		get
		{
			if (_metaKeywords == null)
			{
				if (htmlHeader == null)
				{
					if (frameworkInitialized)
					{
						throw new InvalidOperationException("A server-side head element is required to set this property.");
					}
					return string.Empty;
				}
				return htmlHeader.Keywords;
			}
			return _metaDescription;
		}
		set
		{
			if (htmlHeader == null)
			{
				if (frameworkInitialized)
				{
					throw new InvalidOperationException("A server-side head element is required to set this property.");
				}
				_metaKeywords = value;
			}
			else
			{
				htmlHeader.Keywords = value;
			}
		}
	}

	[Bindable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Localizable(true)]
	public string Title
	{
		get
		{
			if (_title == null)
			{
				if (htmlHeader != null && htmlHeader.Title != null)
				{
					return htmlHeader.Title;
				}
				return string.Empty;
			}
			return _title;
		}
		set
		{
			if (htmlHeader != null)
			{
				htmlHeader.Title = value;
			}
			else
			{
				_title = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public TraceContext Trace => Context.Trace;

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool TraceEnabled
	{
		get
		{
			return Trace.IsEnabled;
		}
		set
		{
			Trace.IsEnabled = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public TraceMode TraceModeValue
	{
		get
		{
			return Trace.TraceMode;
		}
		set
		{
			Trace.TraceMode = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected int TransactionMode
	{
		get
		{
			return _transactionMode;
		}
		set
		{
			_transactionMode = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public string UICulture
	{
		get
		{
			return Thread.CurrentThread.CurrentUICulture.Name;
		}
		set
		{
			Thread.CurrentThread.CurrentUICulture = GetPageCulture(value, Thread.CurrentThread.CurrentUICulture);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IPrincipal User => Context.User;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ValidatorCollection Validators
	{
		get
		{
			if (_validators == null)
			{
				_validators = new ValidatorCollection();
			}
			return _validators;
		}
	}

	[MonoTODO("Use this when encrypting/decrypting ViewState")]
	[Browsable(false)]
	public string ViewStateUserKey
	{
		get
		{
			return viewStateUserKey;
		}
		set
		{
			viewStateUserKey = value;
		}
	}

	[Browsable(false)]
	public override bool Visible
	{
		get
		{
			return base.Visible;
		}
		set
		{
			base.Visible = value;
		}
	}

	internal string RawViewState
	{
		get
		{
			NameValueCollection requestValueCollection = _requestValueCollection;
			string text;
			if (requestValueCollection == null || (text = requestValueCollection["__VIEWSTATE"]) == null)
			{
				return null;
			}
			if (text == string.Empty)
			{
				return null;
			}
			return text;
		}
		set
		{
			_savedViewState = value;
		}
	}

	protected virtual PageStatePersister PageStatePersister
	{
		get
		{
			if (page_state_persister == null && PageAdapter != null)
			{
				page_state_persister = PageAdapter.GetStatePersister();
			}
			if (page_state_persister == null)
			{
				page_state_persister = new HiddenFieldPageStatePersister(this);
			}
			return page_state_persister;
		}
	}

	public ClientScriptManager ClientScript => scriptManager;

	public HtmlForm Form => _form;

	public string ClientQueryString => Request.UrlComponents.Query;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Page PreviousPage
	{
		get
		{
			if (_doLoadPreviousPage)
			{
				_doLoadPreviousPage = false;
				LoadPreviousPageReference();
			}
			return previousPage;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsCallback => isCallback;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsCrossPagePostBack => isCrossPagePostBack;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new virtual char IdSeparator => base.IdSeparator;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public HtmlHead Header => htmlHeader;

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected bool AsyncMode
	{
		get
		{
			return asyncMode;
		}
		set
		{
			asyncMode = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public TimeSpan AsyncTimeout
	{
		get
		{
			return asyncTimeout;
		}
		set
		{
			asyncTimeout = value;
		}
	}

	public bool IsAsync => AsyncMode;

	protected internal virtual string UniqueFilePathSuffix
	{
		get
		{
			if (string.IsNullOrEmpty(uniqueFilePathSuffix))
			{
				uniqueFilePathSuffix = "__ufps=" + AppRelativeVirtualPath.GetHashCode().ToString("x");
			}
			return uniqueFilePathSuffix;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[MonoTODO("Actually use the value in code.")]
	public int MaxPageStateFieldLength
	{
		get
		{
			return maxPageStateFieldLength;
		}
		set
		{
			maxPageStateFieldLength = value;
		}
	}

	private List<PageAsyncTask> ParallelTasks
	{
		get
		{
			if (parallelTasks == null)
			{
				parallelTasks = new List<PageAsyncTask>();
			}
			return parallelTasks;
		}
	}

	private List<PageAsyncTask> SerialTasks
	{
		get
		{
			if (serialTasks == null)
			{
				serialTasks = new List<PageAsyncTask>();
			}
			return serialTasks;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("0")]
	public ViewStateEncryptionMode ViewStateEncryptionMode
	{
		get
		{
			return viewStateEncryptionMode;
		}
		set
		{
			viewStateEncryptionMode = value;
		}
	}

	internal bool NeedViewStateEncryption
	{
		get
		{
			if (ViewStateEncryptionMode != ViewStateEncryptionMode.Always)
			{
				if (ViewStateEncryptionMode == ViewStateEncryptionMode.Auto)
				{
					return controlRegisteredForViewStateEncryption;
				}
				return false;
			}
			return true;
		}
	}

	[DefaultValue("")]
	public virtual string MasterPageFile
	{
		get
		{
			return masterPageFile;
		}
		set
		{
			masterPageFile = value;
			masterPage = null;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public MasterPage Master
	{
		get
		{
			if (Context == null || string.IsNullOrEmpty(masterPageFile))
			{
				return null;
			}
			if (masterPage == null)
			{
				masterPage = MasterPage.CreateMasterPage(this, Context, masterPageFile, contentTemplates);
			}
			return masterPage;
		}
	}

	internal PageTheme PageTheme => _pageTheme;

	internal PageTheme StyleSheetPageTheme => _styleSheetPageTheme;

	public ModelBindingExecutionContext ModelBindingExecutionContext
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ModelStateDictionary ModelState
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public bool SkipFormActionValidation
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

	public UnobtrusiveValidationMode UnobtrusiveValidationMode
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

	public override ValidateRequestMode ValidateRequestMode
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

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public event EventHandler InitComplete
	{
		add
		{
			event_mask |= 1;
			Events.AddHandler(InitCompleteEvent, value);
		}
		remove
		{
			Events.RemoveHandler(InitCompleteEvent, value);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public event EventHandler LoadComplete
	{
		add
		{
			event_mask |= 2;
			Events.AddHandler(LoadCompleteEvent, value);
		}
		remove
		{
			Events.RemoveHandler(LoadCompleteEvent, value);
		}
	}

	public event EventHandler PreInit
	{
		add
		{
			event_mask |= 4;
			Events.AddHandler(PreInitEvent, value);
		}
		remove
		{
			Events.RemoveHandler(PreInitEvent, value);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public event EventHandler PreLoad
	{
		add
		{
			event_mask |= 8;
			Events.AddHandler(PreLoadEvent, value);
		}
		remove
		{
			Events.RemoveHandler(PreLoadEvent, value);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public event EventHandler PreRenderComplete
	{
		add
		{
			event_mask |= 16;
			Events.AddHandler(PreRenderCompleteEvent, value);
		}
		remove
		{
			Events.RemoveHandler(PreRenderCompleteEvent, value);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public event EventHandler SaveStateComplete
	{
		add
		{
			event_mask |= 32;
			Events.AddHandler(SaveStateCompleteEvent, value);
		}
		remove
		{
			Events.RemoveHandler(SaveStateCompleteEvent, value);
		}
	}

	public Page()
	{
		scriptManager = new ClientScriptManager(this);
		Page = this;
		ID = "__Page";
		if (WebConfigurationManager.GetSection("system.web/pages") is PagesSection pagesSection)
		{
			asyncTimeout = pagesSection.AsyncTimeout;
			viewStateEncryptionMode = pagesSection.ViewStateEncryptionMode;
			_viewState = pagesSection.EnableViewState;
			_viewStateMac = pagesSection.EnableViewStateMac;
		}
		else
		{
			asyncTimeout = TimeSpan.FromSeconds(45.0);
			viewStateEncryptionMode = ViewStateEncryptionMode.Auto;
			_viewState = true;
		}
		ViewStateMode = ViewStateMode.Enabled;
	}

	private void InitializeStyleSheet()
	{
		if (_styleSheetTheme == null && WebConfigurationManager.GetSection("system.web/pages") is PagesSection pagesSection)
		{
			_styleSheetTheme = pagesSection.StyleSheetTheme;
		}
		if (!string.IsNullOrEmpty(_styleSheetTheme))
		{
			string virtualPath = "~/App_Themes/" + _styleSheetTheme;
			_styleSheetPageTheme = BuildManager.CreateInstanceFromVirtualPath(virtualPath, typeof(PageTheme)) as PageTheme;
		}
	}

	private void InitializeTheme()
	{
		if (_theme == null && WebConfigurationManager.GetSection("system.web/pages") is PagesSection pagesSection)
		{
			_theme = pagesSection.Theme;
		}
		if (!string.IsNullOrEmpty(_theme))
		{
			string virtualPath = "~/App_Themes/" + _theme;
			_pageTheme = BuildManager.CreateInstanceFromVirtualPath(virtualPath, typeof(PageTheme)) as PageTheme;
			if (_pageTheme != null)
			{
				_pageTheme.SetPage(this);
			}
		}
	}

	private CultureInfo GetPageCulture(string culture, CultureInfo deflt)
	{
		if (culture == null)
		{
			return deflt;
		}
		CultureInfo cultureInfo = null;
		if (culture.StartsWith("auto", StringComparison.InvariantCultureIgnoreCase))
		{
			string[] userLanguages = Request.UserLanguages;
			try
			{
				if (userLanguages != null && userLanguages.Length != 0)
				{
					cultureInfo = CultureInfo.CreateSpecificCulture(userLanguages[0]);
				}
			}
			catch
			{
			}
			if (cultureInfo == null)
			{
				cultureInfo = deflt;
			}
		}
		else
		{
			cultureInfo = CultureInfo.CreateSpecificCulture(culture);
		}
		return cultureInfo;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected IAsyncResult AspCompatBeginProcessRequest(HttpContext context, AsyncCallback cb, object extraData)
	{
		throw new NotImplementedException();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[MonoNotSupported("Mono does not support classic ASP compatibility mode.")]
	protected void AspCompatEndProcessRequest(IAsyncResult result)
	{
		throw new NotImplementedException();
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual HtmlTextWriter CreateHtmlTextWriter(TextWriter tw)
	{
		if (Request.BrowserMightHaveSpecialWriter)
		{
			return Request.Browser.CreateHtmlTextWriter(tw);
		}
		return new HtmlTextWriter(tw);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void DesignerInitialize()
	{
		InitRecursive(null);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected internal virtual NameValueCollection DeterminePostBackMode()
	{
		if (_context.IsProcessingInclude)
		{
			return null;
		}
		HttpRequest request = Request;
		if (request == null)
		{
			return null;
		}
		NameValueCollection nameValueCollection = null;
		if (string.Compare(Request.HttpMethod, "POST", ignoreCase: true, Helpers.InvariantCulture) == 0)
		{
			nameValueCollection = request.Form;
		}
		else
		{
			string queryStringRaw = Request.QueryStringRaw;
			if (queryStringRaw == null || queryStringRaw.Length == 0)
			{
				return null;
			}
			nameValueCollection = request.QueryString;
		}
		WebROCollection webROCollection = (WebROCollection)nameValueCollection;
		allow_load = !webROCollection.GotID;
		if (allow_load)
		{
			webROCollection.ID = GetTypeHashCode();
		}
		else
		{
			allow_load = webROCollection.ID == GetTypeHashCode();
		}
		if (nameValueCollection != null && nameValueCollection["__VIEWSTATE"] == null && nameValueCollection["__EVENTTARGET"] == null)
		{
			return null;
		}
		return nameValueCollection;
	}

	public override Control FindControl(string id)
	{
		if (id == ID)
		{
			return this;
		}
		return base.FindControl(id);
	}

	private Control FindControl(string id, bool decode)
	{
		return FindControl(id);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Obsolete("The recommended alternative is ClientScript.GetPostBackEventReference. http://go.microsoft.com/fwlink/?linkid=14202")]
	public string GetPostBackClientEvent(Control control, string argument)
	{
		return scriptManager.GetPostBackEventReference(control, argument);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Obsolete("The recommended alternative is ClientScript.GetPostBackClientHyperlink. http://go.microsoft.com/fwlink/?linkid=14202")]
	public string GetPostBackClientHyperlink(Control control, string argument)
	{
		return scriptManager.GetPostBackClientHyperlink(control, argument);
	}

	[Obsolete("The recommended alternative is ClientScript.GetPostBackEventReference. http://go.microsoft.com/fwlink/?linkid=14202")]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public string GetPostBackEventReference(Control control)
	{
		return scriptManager.GetPostBackEventReference(control, string.Empty);
	}

	[Obsolete("The recommended alternative is ClientScript.GetPostBackEventReference. http://go.microsoft.com/fwlink/?linkid=14202")]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public string GetPostBackEventReference(Control control, string argument)
	{
		return scriptManager.GetPostBackEventReference(control, argument);
	}

	internal void RequiresFormScriptDeclaration()
	{
		requiresFormScriptDeclaration = true;
	}

	internal void RequiresPostBackScript()
	{
		if (!requiresPostBackScript)
		{
			ClientScript.RegisterHiddenField("__EVENTTARGET", string.Empty);
			ClientScript.RegisterHiddenField("__EVENTARGUMENT", string.Empty);
			requiresPostBackScript = true;
			RequiresFormScriptDeclaration();
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual int GetTypeHashCode()
	{
		return 0;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[MonoTODO("The following properties of OutputCacheParameters are silently ignored: CacheProfile, SqlDependency")]
	protected internal virtual void InitOutputCache(OutputCacheParameters cacheSettings)
	{
		if (cacheSettings.Enabled)
		{
			InitOutputCache(cacheSettings.Duration, cacheSettings.VaryByContentEncoding, cacheSettings.VaryByHeader, cacheSettings.VaryByCustom, cacheSettings.Location, cacheSettings.VaryByParam);
			HttpCachePolicy httpCachePolicy = Response?.Cache;
			if (httpCachePolicy != null && cacheSettings.NoStore)
			{
				httpCachePolicy.SetNoStore();
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[MonoTODO("varyByContentEncoding is not currently used")]
	protected virtual void InitOutputCache(int duration, string varyByContentEncoding, string varyByHeader, string varyByCustom, OutputCacheLocation location, string varyByParam)
	{
		if (duration <= 0)
		{
			return;
		}
		HttpResponse response = Response;
		HttpCachePolicy cache = response.Cache;
		bool flag = false;
		DateTime lastModified = Context?.Timestamp ?? DateTime.Now;
		switch (location)
		{
		case OutputCacheLocation.Any:
			cache.SetCacheability(HttpCacheability.Public);
			cache.SetMaxAge(new TimeSpan(0, 0, duration));
			cache.SetLastModified(lastModified);
			flag = true;
			break;
		case OutputCacheLocation.Client:
			cache.SetCacheability(HttpCacheability.Private);
			cache.SetMaxAge(new TimeSpan(0, 0, duration));
			cache.SetLastModified(lastModified);
			break;
		case OutputCacheLocation.Downstream:
			cache.SetCacheability(HttpCacheability.Public);
			cache.SetMaxAge(new TimeSpan(0, 0, duration));
			cache.SetLastModified(lastModified);
			break;
		case OutputCacheLocation.Server:
			cache.SetCacheability(HttpCacheability.Server);
			flag = true;
			break;
		}
		if (flag)
		{
			if (varyByCustom != null)
			{
				cache.SetVaryByCustom(varyByCustom);
			}
			if (varyByParam != null && varyByParam.Length > 0)
			{
				string[] array = varyByParam.Split(';');
				foreach (string text in array)
				{
					cache.VaryByParams[text.Trim()] = true;
				}
				cache.VaryByParams.IgnoreParams = false;
			}
			else
			{
				cache.VaryByParams.IgnoreParams = true;
			}
			if (varyByHeader != null && varyByHeader.Length > 0)
			{
				string[] array = varyByHeader.Split(';');
				foreach (string text2 in array)
				{
					cache.VaryByHeaders[text2.Trim()] = true;
				}
			}
			if (PageAdapter != null)
			{
				if (PageAdapter.CacheVaryByParams != null)
				{
					StringEnumerator enumerator = PageAdapter.CacheVaryByParams.GetEnumerator();
					try
					{
						while (enumerator.MoveNext())
						{
							string current = enumerator.Current;
							cache.VaryByParams[current] = true;
						}
					}
					finally
					{
						if (enumerator is IDisposable disposable)
						{
							disposable.Dispose();
						}
					}
				}
				if (PageAdapter.CacheVaryByHeaders != null)
				{
					StringEnumerator enumerator = PageAdapter.CacheVaryByHeaders.GetEnumerator();
					try
					{
						while (enumerator.MoveNext())
						{
							string current2 = enumerator.Current;
							cache.VaryByHeaders[current2] = true;
						}
					}
					finally
					{
						if (enumerator is IDisposable disposable2)
						{
							disposable2.Dispose();
						}
					}
				}
			}
		}
		response.IsCached = true;
		cache.Duration = duration;
		cache.SetExpires(lastModified.AddSeconds(duration));
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual void InitOutputCache(int duration, string varyByHeader, string varyByCustom, OutputCacheLocation location, string varyByParam)
	{
		InitOutputCache(duration, null, varyByHeader, varyByCustom, location, varyByParam);
	}

	[Obsolete("The recommended alternative is ClientScript.IsClientScriptBlockRegistered(string key). http://go.microsoft.com/fwlink/?linkid=14202")]
	public bool IsClientScriptBlockRegistered(string key)
	{
		return scriptManager.IsClientScriptBlockRegistered(key);
	}

	[Obsolete("The recommended alternative is ClientScript.IsStartupScriptRegistered(string key). http://go.microsoft.com/fwlink/?linkid=14202")]
	public bool IsStartupScriptRegistered(string key)
	{
		return scriptManager.IsStartupScriptRegistered(key);
	}

	public string MapPath(string virtualPath)
	{
		return Request.MapPath(virtualPath);
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (MaintainScrollPositionOnPostBack)
		{
			ClientScript.RegisterWebFormClientScript();
			ClientScript.RegisterHiddenField("__SCROLLPOSITIONX", Request["__SCROLLPOSITIONX"]);
			ClientScript.RegisterHiddenField("__SCROLLPOSITIONY", Request["__SCROLLPOSITIONY"]);
			StringBuilder stringBuilder = new StringBuilder();
			stringBuilder.AppendLine("<script type=\"text/javascript\">");
			stringBuilder.AppendLine("//<![CDATA[");
			stringBuilder.AppendLine(theForm + ".oldSubmit = " + theForm + ".submit;");
			stringBuilder.AppendLine(theForm + ".submit = function () { " + WebFormScriptReference + ".WebForm_SaveScrollPositionSubmit(); }");
			stringBuilder.AppendLine(theForm + ".oldOnSubmit = " + theForm + ".onsubmit;");
			stringBuilder.AppendLine(theForm + ".onsubmit = function () { " + WebFormScriptReference + ".WebForm_SaveScrollPositionOnSubmit(); }");
			if (IsPostBack)
			{
				stringBuilder.AppendLine(theForm + ".oldOnLoad = window.onload;");
				stringBuilder.AppendLine("window.onload = function () { " + WebFormScriptReference + ".WebForm_RestoreScrollPosition (); };");
			}
			stringBuilder.AppendLine("//]]>");
			stringBuilder.AppendLine("</script>");
			ClientScript.RegisterStartupScript(typeof(Page), "MaintainScrollPositionOnPostBackStartup", stringBuilder.ToString());
		}
		base.Render(writer);
	}

	private void RenderPostBackScript(HtmlTextWriter writer, string formUniqueID)
	{
		writer.WriteLine();
		ClientScriptManager.WriteBeginScriptBlock(writer);
		RenderClientScriptFormDeclaration(writer, formUniqueID);
		writer.WriteLine(WebFormScriptReference + "._form = " + theForm + ";");
		writer.WriteLine(WebFormScriptReference + ".__doPostBack = function (eventTarget, eventArgument) {");
		writer.WriteLine("\tif(" + theForm + ".onsubmit && " + theForm + ".onsubmit() == false) return;");
		writer.WriteLine("\t" + theForm + ".__EVENTTARGET.value = eventTarget;");
		writer.WriteLine("\t" + theForm + ".__EVENTARGUMENT.value = eventArgument;");
		writer.WriteLine("\t" + theForm + ".submit();");
		writer.WriteLine("}");
		ClientScriptManager.WriteEndScriptBlock(writer);
	}

	private void RenderClientScriptFormDeclaration(HtmlTextWriter writer, string formUniqueID)
	{
		if (!formScriptDeclarationRendered)
		{
			if (PageAdapter != null)
			{
				writer.WriteLine("\tvar {0} = {1};\n", theForm, PageAdapter.GetPostBackFormReference(formUniqueID));
			}
			else
			{
				writer.WriteLine("\tvar {0};\n\tif (document.getElementById) {{ {0} = document.getElementById ('{1}'); }}", theForm, formUniqueID);
				writer.WriteLine("\telse {{ {0} = document.{1}; }}", theForm, formUniqueID);
			}
			formScriptDeclarationRendered = true;
		}
	}

	internal void OnFormRender(HtmlTextWriter writer, string formUniqueID)
	{
		if (renderingForm)
		{
			throw new HttpException("Only 1 HtmlForm is allowed per page.");
		}
		renderingForm = true;
		writer.WriteLine();
		if (requiresFormScriptDeclaration || (scriptManager != null && scriptManager.ScriptsPresent) || PageAdapter != null)
		{
			ClientScriptManager.WriteBeginScriptBlock(writer);
			RenderClientScriptFormDeclaration(writer, formUniqueID);
			ClientScriptManager.WriteEndScriptBlock(writer);
		}
		if (handleViewState)
		{
			scriptManager.RegisterHiddenField("__VIEWSTATE", _savedViewState);
		}
		scriptManager.WriteHiddenFields(writer);
		if (requiresPostBackScript)
		{
			RenderPostBackScript(writer, formUniqueID);
			postBackScriptRendered = true;
		}
		scriptManager.WriteWebFormClientScript(writer);
		scriptManager.WriteClientScriptBlocks(writer);
	}

	internal IStateFormatter GetFormatter()
	{
		return new ObjectStateFormatter(this);
	}

	internal string GetSavedViewState()
	{
		return _savedViewState;
	}

	internal void OnFormPostRender(HtmlTextWriter writer, string formUniqueID)
	{
		scriptManager.SaveEventValidationState();
		scriptManager.WriteExpandoAttributes(writer);
		scriptManager.WriteHiddenFields(writer);
		if (!postBackScriptRendered && requiresPostBackScript)
		{
			RenderPostBackScript(writer, formUniqueID);
		}
		scriptManager.WriteWebFormClientScript(writer);
		scriptManager.WriteArrayDeclares(writer);
		scriptManager.WriteStartupScriptBlocks(writer);
		renderingForm = false;
		postBackScriptRendered = false;
	}

	private void ProcessPostData(NameValueCollection data, bool second)
	{
		NameValueCollection postCollection = ((_requestValueCollection == null) ? new NameValueCollection(SecureHashCodeProvider.DefaultInvariant, CaseInsensitiveComparer.DefaultInvariant) : _requestValueCollection);
		if (data != null && data.Count > 0)
		{
			Dictionary<string, string> dictionary = new Dictionary<string, string>(StringComparer.Ordinal);
			string[] allKeys = data.AllKeys;
			foreach (string text in allKeys)
			{
				switch (text)
				{
				case "__VIEWSTATE":
				case "__EVENTTARGET":
				case "__EVENTARGUMENT":
				case "__EVENTVALIDATION":
					continue;
				}
				if (dictionary.ContainsKey(text))
				{
					continue;
				}
				dictionary.Add(text, text);
				Control control = FindControl(text, decode: true);
				if (control != null)
				{
					IPostBackDataHandler postBackDataHandler = control as IPostBackDataHandler;
					IPostBackEventHandler postBackEventHandler = control as IPostBackEventHandler;
					if (postBackDataHandler == null)
					{
						if (postBackEventHandler != null)
						{
							formPostedRequiresRaiseEvent = postBackEventHandler;
						}
						continue;
					}
					if (postBackDataHandler.LoadPostData(text, postCollection))
					{
						if (requiresPostDataChanged == null)
						{
							requiresPostDataChanged = new List<IPostBackDataHandler>();
						}
						requiresPostDataChanged.Add(postBackDataHandler);
					}
					if (_requiresPostBackCopy != null)
					{
						_requiresPostBackCopy.Remove(text);
					}
				}
				else if (!second)
				{
					if (secondPostData == null)
					{
						secondPostData = new NameValueCollection(SecureHashCodeProvider.DefaultInvariant, CaseInsensitiveComparer.DefaultInvariant);
					}
					secondPostData.Add(text, data[text]);
				}
			}
		}
		List<string> list = null;
		if (_requiresPostBackCopy != null && _requiresPostBackCopy.Count > 0)
		{
			string[] allKeys = _requiresPostBackCopy.ToArray();
			foreach (string text2 in allKeys)
			{
				if (FindControl(text2, decode: true) is IPostBackDataHandler postBackDataHandler2)
				{
					_requiresPostBackCopy.Remove(text2);
					if (postBackDataHandler2.LoadPostData(text2, postCollection))
					{
						if (requiresPostDataChanged == null)
						{
							requiresPostDataChanged = new List<IPostBackDataHandler>();
						}
						requiresPostDataChanged.Add(postBackDataHandler2);
					}
				}
				else if (!second)
				{
					if (list == null)
					{
						list = new List<string>();
					}
					list.Add(text2);
				}
			}
		}
		_requiresPostBackCopy = (second ? null : list);
		if (second)
		{
			secondPostData = null;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void ProcessRequest(HttpContext context)
	{
		SetContext(context);
		if (clientTarget != null)
		{
			Request.ClientTarget = clientTarget;
		}
		WireupAutomaticEvents();
		_appCulture = Thread.CurrentThread.CurrentCulture;
		_appUICulture = Thread.CurrentThread.CurrentUICulture;
		FrameworkInitialize();
		frameworkInitialized = true;
		context.ErrorPage = _errorPage;
		try
		{
			InternalProcessRequest();
		}
		catch (ThreadAbortException ex)
		{
			if (FlagEnd.Value == ex.ExceptionState)
			{
				Thread.ResetAbort();
				return;
			}
			throw;
		}
		catch (Exception e)
		{
			ProcessException(e);
		}
		finally
		{
			ProcessUnload();
		}
	}

	private void ProcessException(Exception e)
	{
		Trace.Warn("Unhandled Exception", e.ToString(), e);
		_context.AddError(e);
		OnError(EventArgs.Empty);
		if (_context.HasError(e))
		{
			_context.ClearError(e);
			throw new HttpUnhandledException(null, e);
		}
	}

	private void ProcessUnload()
	{
		try
		{
			RenderTrace();
			UnloadRecursive(dispose: true);
		}
		catch
		{
		}
		if (!Thread.CurrentThread.CurrentCulture.Equals(_appCulture))
		{
			Thread.CurrentThread.CurrentCulture = _appCulture;
		}
		if (!Thread.CurrentThread.CurrentUICulture.Equals(_appUICulture))
		{
			Thread.CurrentThread.CurrentUICulture = _appUICulture;
		}
		_appCulture = null;
		_appUICulture = null;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected IAsyncResult AsyncPageBeginProcessRequest(HttpContext context, AsyncCallback callback, object extraData)
	{
		ProcessRequest(context);
		DummyAsyncResult dummyAsyncResult = new DummyAsyncResult(isCompleted: true, completedSynchronously: true, extraData);
		callback?.Invoke(dummyAsyncResult);
		return dummyAsyncResult;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected void AsyncPageEndProcessRequest(IAsyncResult result)
	{
	}

	private void InternalProcessRequest()
	{
		if (PageAdapter != null)
		{
			_requestValueCollection = PageAdapter.DeterminePostBackMode();
		}
		else
		{
			_requestValueCollection = DeterminePostBackMode();
		}
		if (_requestValueCollection != null)
		{
			if (!isCrossPagePostBack && _requestValueCollection["__PREVIOUSPAGE"] != null && _requestValueCollection["__PREVIOUSPAGE"] != Request.FilePath)
			{
				_doLoadPreviousPage = true;
			}
			else
			{
				isCallback = _requestValueCollection["__CALLBACKPARAM"] != null;
				isPostBack = true;
			}
			string text = _requestValueCollection["__LASTFOCUS"];
			if (!string.IsNullOrEmpty(text))
			{
				_focusedControlID = UniqueID2ClientID(text);
			}
		}
		if (!isCrossPagePostBack && _context.PreviousHandler is Page)
		{
			previousPage = (Page)_context.PreviousHandler;
		}
		Trace.Write("aspx.page", "Begin PreInit");
		OnPreInit(EventArgs.Empty);
		Trace.Write("aspx.page", "End PreInit");
		InitializeTheme();
		ApplyMasterPage();
		Trace.Write("aspx.page", "Begin Init");
		InitRecursive(null);
		Trace.Write("aspx.page", "End Init");
		Trace.Write("aspx.page", "Begin InitComplete");
		OnInitComplete(EventArgs.Empty);
		Trace.Write("aspx.page", "End InitComplete");
		renderingForm = false;
		RestorePageState();
		ProcessPostData();
		ProcessRaiseEvents();
		if (!ProcessLoadComplete())
		{
			RenderPage();
		}
	}

	private void RestorePageState()
	{
		if (IsPostBack || IsCallback)
		{
			if (_requestValueCollection != null)
			{
				scriptManager.RestoreEventValidationState(_requestValueCollection["__EVENTVALIDATION"]);
			}
			Trace.Write("aspx.page", "Begin LoadViewState");
			LoadPageViewState();
			Trace.Write("aspx.page", "End LoadViewState");
		}
	}

	private void ProcessPostData()
	{
		if (IsPostBack || IsCallback)
		{
			Trace.Write("aspx.page", "Begin ProcessPostData");
			ProcessPostData(_requestValueCollection, second: false);
			Trace.Write("aspx.page", "End ProcessPostData");
		}
		ProcessLoad();
		if (IsPostBack || IsCallback)
		{
			Trace.Write("aspx.page", "Begin ProcessPostData Second Try");
			ProcessPostData(secondPostData, second: true);
			Trace.Write("aspx.page", "End ProcessPostData Second Try");
		}
	}

	private void ProcessLoad()
	{
		Trace.Write("aspx.page", "Begin PreLoad");
		OnPreLoad(EventArgs.Empty);
		Trace.Write("aspx.page", "End PreLoad");
		Trace.Write("aspx.page", "Begin Load");
		LoadRecursive();
		Trace.Write("aspx.page", "End Load");
	}

	private void ProcessRaiseEvents()
	{
		if (IsPostBack || IsCallback)
		{
			Trace.Write("aspx.page", "Begin Raise ChangedEvents");
			RaiseChangedEvents();
			Trace.Write("aspx.page", "End Raise ChangedEvents");
			Trace.Write("aspx.page", "Begin Raise PostBackEvent");
			RaisePostBackEvents();
			Trace.Write("aspx.page", "End Raise PostBackEvent");
		}
	}

	private bool ProcessLoadComplete()
	{
		Trace.Write("aspx.page", "Begin LoadComplete");
		OnLoadComplete(EventArgs.Empty);
		Trace.Write("aspx.page", "End LoadComplete");
		if (IsCrossPagePostBack)
		{
			return true;
		}
		if (IsCallback)
		{
			string value = ProcessCallbackData();
			HtmlTextWriter htmlTextWriter = new HtmlTextWriter(Response.Output);
			htmlTextWriter.Write(value);
			htmlTextWriter.Flush();
			return true;
		}
		Trace.Write("aspx.page", "Begin PreRender");
		PreRenderRecursiveInternal();
		Trace.Write("aspx.page", "End PreRender");
		ExecuteRegisteredAsyncTasks();
		Trace.Write("aspx.page", "Begin PreRenderComplete");
		OnPreRenderComplete(EventArgs.Empty);
		Trace.Write("aspx.page", "End PreRenderComplete");
		Trace.Write("aspx.page", "Begin SaveViewState");
		SavePageViewState();
		Trace.Write("aspx.page", "End SaveViewState");
		Trace.Write("aspx.page", "Begin SaveStateComplete");
		OnSaveStateComplete(EventArgs.Empty);
		Trace.Write("aspx.page", "End SaveStateComplete");
		return false;
	}

	internal void RenderPage()
	{
		scriptManager.ResetEventValidationState();
		Trace.Write("aspx.page", "Begin Render");
		HtmlTextWriter writer = CreateHtmlTextWriter(Response.Output);
		RenderControl(writer);
		Trace.Write("aspx.page", "End Render");
	}

	internal void SetContext(HttpContext context)
	{
		_context = context;
		_application = context.Application;
		_response = context.Response;
		_request = context.Request;
		_cache = context.Cache;
	}

	private void RenderTrace()
	{
		TraceManager traceManager = HttpRuntime.TraceManager;
		if ((!Trace.HaveTrace || Trace.IsEnabled) && (Trace.HaveTrace || traceManager.Enabled))
		{
			Trace.SaveData();
			if ((Trace.HaveTrace || !traceManager.Enabled || traceManager.PageOutput) && (!traceManager.LocalOnly || Context.Request.IsLocal))
			{
				HtmlTextWriter output = new HtmlTextWriter(Response.Output);
				Trace.Render(output);
			}
		}
	}

	private void RaisePostBackEvents()
	{
		if (requiresRaiseEvent != null)
		{
			RaisePostBackEvent(requiresRaiseEvent, null);
			return;
		}
		if (formPostedRequiresRaiseEvent != null)
		{
			RaisePostBackEvent(formPostedRequiresRaiseEvent, null);
			return;
		}
		NameValueCollection requestValueCollection = _requestValueCollection;
		if (requestValueCollection == null)
		{
			return;
		}
		string text = requestValueCollection["__EVENTTARGET"];
		if (string.IsNullOrEmpty(text))
		{
			if (AutoPostBackControl is IPostBackEventHandler sourceControl)
			{
				RaisePostBackEvent(sourceControl, null);
			}
			else if (formPostedRequiresRaiseEvent != null)
			{
				RaisePostBackEvent(formPostedRequiresRaiseEvent, null);
			}
			else
			{
				Validate();
			}
			return;
		}
		IPostBackEventHandler postBackEventHandler = FindControl(text, decode: true) as IPostBackEventHandler;
		if (postBackEventHandler == null)
		{
			postBackEventHandler = AutoPostBackControl as IPostBackEventHandler;
		}
		if (postBackEventHandler != null)
		{
			string eventArgument = requestValueCollection["__EVENTARGUMENT"];
			RaisePostBackEvent(postBackEventHandler, eventArgument);
		}
	}

	internal void RaiseChangedEvents()
	{
		if (requiresPostDataChanged == null)
		{
			return;
		}
		foreach (IPostBackDataHandler item in requiresPostDataChanged)
		{
			item.RaisePostDataChangedEvent();
		}
		requiresPostDataChanged = null;
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void RaisePostBackEvent(IPostBackEventHandler sourceControl, string eventArgument)
	{
		sourceControl.RaisePostBackEvent(eventArgument);
	}

	[Obsolete("The recommended alternative is ClientScript.RegisterArrayDeclaration(string arrayName, string arrayValue). http://go.microsoft.com/fwlink/?linkid=14202")]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public void RegisterArrayDeclaration(string arrayName, string arrayValue)
	{
		scriptManager.RegisterArrayDeclaration(arrayName, arrayValue);
	}

	[Obsolete("The recommended alternative is ClientScript.RegisterClientScriptBlock(Type type, string key, string script). http://go.microsoft.com/fwlink/?linkid=14202")]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public virtual void RegisterClientScriptBlock(string key, string script)
	{
		scriptManager.RegisterClientScriptBlock(key, script);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Obsolete]
	public virtual void RegisterHiddenField(string hiddenFieldName, string hiddenFieldInitialValue)
	{
		scriptManager.RegisterHiddenField(hiddenFieldName, hiddenFieldInitialValue);
	}

	[MonoTODO("Not implemented, Used in HtmlForm")]
	internal void RegisterClientScriptFile(string a, string b, string c)
	{
		throw new NotImplementedException();
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Obsolete("The recommended alternative is ClientScript.RegisterOnSubmitStatement(Type type, string key, string script). http://go.microsoft.com/fwlink/?linkid=14202")]
	public void RegisterOnSubmitStatement(string key, string script)
	{
		scriptManager.RegisterOnSubmitStatement(key, script);
	}

	internal string GetSubmitStatements()
	{
		return scriptManager.WriteSubmitStatements();
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public void RegisterRequiresPostBack(Control control)
	{
		if (!(control is IPostBackDataHandler))
		{
			throw new HttpException("The control to register does not implement the IPostBackDataHandler interface.");
		}
		if (_requiresPostBack == null)
		{
			_requiresPostBack = new List<string>();
		}
		string item = control.UniqueID;
		if (!_requiresPostBack.Contains(item))
		{
			_requiresPostBack.Add(item);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public virtual void RegisterRequiresRaiseEvent(IPostBackEventHandler control)
	{
		requiresRaiseEvent = control;
	}

	[Obsolete("The recommended alternative is ClientScript.RegisterStartupScript(Type type, string key, string script). http://go.microsoft.com/fwlink/?linkid=14202")]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public virtual void RegisterStartupScript(string key, string script)
	{
		scriptManager.RegisterStartupScript(key, script);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public void RegisterViewStateHandler()
	{
		handleViewState = true;
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual void SavePageStateToPersistenceMedium(object state)
	{
		PageStatePersister pageStatePersister = PageStatePersister;
		if (pageStatePersister != null)
		{
			if (state is Pair pair)
			{
				pageStatePersister.ViewState = pair.First;
				pageStatePersister.ControlState = pair.Second;
			}
			else
			{
				pageStatePersister.ViewState = state;
			}
			pageStatePersister.Save();
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected virtual object LoadPageStateFromPersistenceMedium()
	{
		PageStatePersister pageStatePersister = PageStatePersister;
		if (pageStatePersister == null)
		{
			return null;
		}
		pageStatePersister.Load();
		return new Pair(pageStatePersister.ViewState, pageStatePersister.ControlState);
	}

	internal void LoadPageViewState()
	{
		if (LoadPageStateFromPersistenceMedium() is Pair pair && (allow_load || isCrossPagePostBack))
		{
			LoadPageControlState(pair.Second);
			if (pair.First is Pair pair2)
			{
				LoadViewStateRecursive(pair2.First);
				_requiresPostBackCopy = pair2.Second as List<string>;
			}
		}
	}

	internal void SavePageViewState()
	{
		if (handleViewState)
		{
			object second = SavePageControlState();
			Pair first = null;
			object obj = null;
			if (EnableViewState && ViewStateMode == ViewStateMode.Enabled)
			{
				obj = SaveViewStateRecursive();
			}
			object obj2 = ((_requiresPostBack != null && _requiresPostBack.Count > 0) ? _requiresPostBack : null);
			if (obj != null || obj2 != null)
			{
				first = new Pair(obj, obj2);
			}
			Pair pair = new Pair();
			pair.First = first;
			pair.Second = second;
			if (pair.First == null && pair.Second == null)
			{
				SavePageStateToPersistenceMedium(null);
			}
			else
			{
				SavePageStateToPersistenceMedium(pair);
			}
		}
	}

	public virtual void Validate()
	{
		is_validated = true;
		ValidateCollection(_validators);
	}

	internal bool AreValidatorsUplevel()
	{
		return AreValidatorsUplevel(string.Empty);
	}

	internal bool AreValidatorsUplevel(string valGroup)
	{
		bool result = false;
		foreach (IValidator validator in Validators)
		{
			if (validator is BaseValidator baseValidator && !(valGroup != baseValidator.ValidationGroup) && baseValidator.GetRenderUplevel())
			{
				result = true;
				break;
			}
		}
		return result;
	}

	private bool ValidateCollection(ValidatorCollection validators)
	{
		if (validators == null || validators.Count == 0)
		{
			return true;
		}
		bool result = true;
		foreach (IValidator validator in validators)
		{
			validator.Validate();
			if (!validator.IsValid)
			{
				result = false;
			}
		}
		return result;
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public virtual void VerifyRenderingInServerForm(Control control)
	{
		if (Context == null || IsCallback || renderingForm)
		{
			return;
		}
		throw new HttpException("Control '" + control.ClientID + "' of type '" + control.GetType().Name + "' must be placed inside a form tag with runat=server.");
	}

	protected override void FrameworkInitialize()
	{
		base.FrameworkInitialize();
		InitializeStyleSheet();
	}

	protected virtual void OnInitComplete(EventArgs e)
	{
		if ((event_mask & 1) != 0)
		{
			((EventHandler)Events[InitCompleteEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnLoadComplete(EventArgs e)
	{
		if ((event_mask & 2) != 0)
		{
			((EventHandler)Events[LoadCompleteEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnPreInit(EventArgs e)
	{
		if ((event_mask & 4) != 0)
		{
			((EventHandler)Events[PreInitEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnPreLoad(EventArgs e)
	{
		if ((event_mask & 8) != 0)
		{
			((EventHandler)Events[PreLoadEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnPreRenderComplete(EventArgs e)
	{
		if ((event_mask & 0x10) != 0)
		{
			((EventHandler)Events[PreRenderCompleteEvent])?.Invoke(this, e);
		}
		if (Form == null || !Form.DetermineRenderUplevel())
		{
			return;
		}
		string defaultButton = Form.DefaultButton;
		if (string.IsNullOrEmpty(_focusedControlID))
		{
			_focusedControlID = Form.DefaultFocus;
			if (string.IsNullOrEmpty(_focusedControlID))
			{
				_focusedControlID = defaultButton;
			}
		}
		if (!string.IsNullOrEmpty(_focusedControlID))
		{
			ClientScript.RegisterWebFormClientScript();
			ClientScript.RegisterStartupScript(typeof(Page), "HtmlForm-DefaultButton-StartupScript", "\n" + WebFormScriptReference + ".WebForm_AutoFocus('" + _focusedControlID + "');\n", addScriptTags: true);
		}
		if (Form.SubmitDisabledControls && _hasEnabledControlArray)
		{
			ClientScript.RegisterWebFormClientScript();
			ClientScript.RegisterOnSubmitStatement(typeof(Page), "HtmlForm-SubmitDisabledControls-SubmitStatement", WebFormScriptReference + ".WebForm_ReEnableControls();");
		}
	}

	internal void RegisterEnabledControl(Control control)
	{
		if (Form != null && Page.Form.SubmitDisabledControls && Page.Form.DetermineRenderUplevel())
		{
			_hasEnabledControlArray = true;
			Page.ClientScript.RegisterArrayDeclaration("__enabledControlArray", "'" + control.ClientID + "'");
		}
	}

	protected virtual void OnSaveStateComplete(EventArgs e)
	{
		if ((event_mask & 0x20) != 0)
		{
			((EventHandler)Events[SaveStateCompleteEvent])?.Invoke(this, e);
		}
	}

	internal void RegisterForm(HtmlForm form)
	{
		_form = form;
	}

	private string ProcessCallbackData()
	{
		ICallbackEventHandler callbackTarget = GetCallbackTarget();
		string callbackEventError = string.Empty;
		ProcessRaiseCallbackEvent(callbackTarget, ref callbackEventError);
		return ProcessGetCallbackResult(callbackTarget, callbackEventError);
	}

	private ICallbackEventHandler GetCallbackTarget()
	{
		string text = _requestValueCollection["__CALLBACKID"];
		if (text == null || text.Length == 0)
		{
			throw new HttpException("Callback target not provided.");
		}
		return (FindControl(text, decode: true) as ICallbackEventHandler) ?? throw new HttpException($"Invalid callback target '{text}'.");
	}

	private void ProcessRaiseCallbackEvent(ICallbackEventHandler target, ref string callbackEventError)
	{
		string eventArgument = _requestValueCollection["__CALLBACKPARAM"];
		try
		{
			target.RaiseCallbackEvent(eventArgument);
		}
		catch (Exception ex)
		{
			callbackEventError = "e" + (RuntimeHelpers.DebuggingEnabled ? ex.ToString() : ex.Message);
		}
	}

	private string ProcessGetCallbackResult(ICallbackEventHandler target, string callbackEventError)
	{
		string callbackResult;
		try
		{
			callbackResult = target.GetCallbackResult();
		}
		catch (Exception ex)
		{
			return "e" + (RuntimeHelpers.DebuggingEnabled ? ex.ToString() : ex.Message);
		}
		string eventValidationStateFormatted = ClientScript.GetEventValidationStateFormatted();
		return callbackEventError + ((eventValidationStateFormatted == null) ? "0" : eventValidationStateFormatted.Length.ToString()) + "|" + eventValidationStateFormatted + callbackResult;
	}

	internal void SetHeader(HtmlHead header)
	{
		htmlHeader = header;
		if (header != null)
		{
			if (_title != null)
			{
				htmlHeader.Title = _title;
				_title = null;
			}
			if (_metaDescription != null)
			{
				htmlHeader.Description = _metaDescription;
				_metaDescription = null;
			}
			if (_metaKeywords != null)
			{
				htmlHeader.Keywords = _metaKeywords;
				_metaKeywords = null;
			}
		}
	}

	public void AddOnPreRenderCompleteAsync(BeginEventHandler beginHandler, EndEventHandler endHandler)
	{
		AddOnPreRenderCompleteAsync(beginHandler, endHandler, null);
	}

	public void AddOnPreRenderCompleteAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		if (!IsAsync)
		{
			throw new InvalidOperationException("AddOnPreRenderCompleteAsync called and Page.IsAsync == false");
		}
		if (IsPrerendered)
		{
			throw new InvalidOperationException("AddOnPreRenderCompleteAsync can only be called before and during PreRender.");
		}
		if (beginHandler == null)
		{
			throw new ArgumentNullException("beginHandler");
		}
		if (endHandler == null)
		{
			throw new ArgumentNullException("endHandler");
		}
		RegisterAsyncTask(new PageAsyncTask(beginHandler, endHandler, null, state, executeInParallel: false));
	}

	public void RegisterAsyncTask(PageAsyncTask task)
	{
		if (task == null)
		{
			throw new ArgumentNullException("task");
		}
		if (task.ExecuteInParallel)
		{
			ParallelTasks.Add(task);
		}
		else
		{
			SerialTasks.Add(task);
		}
	}

	public void ExecuteRegisteredAsyncTasks()
	{
		if ((parallelTasks == null || parallelTasks.Count == 0) && (serialTasks == null || serialTasks.Count == 0))
		{
			return;
		}
		if (parallelTasks != null)
		{
			DateTime now = DateTime.Now;
			List<PageAsyncTask> list = parallelTasks;
			parallelTasks = null;
			List<IAsyncResult> list2 = new List<IAsyncResult>();
			foreach (PageAsyncTask item in list)
			{
				IAsyncResult asyncResult = item.BeginHandler(this, EventArgs.Empty, EndAsyncTaskCallback, item);
				if (asyncResult.CompletedSynchronously)
				{
					item.EndHandler(asyncResult);
				}
				else
				{
					list2.Add(asyncResult);
				}
			}
			if (list2.Count > 0)
			{
				WaitHandle[] array = new WaitHandle[list2.Count];
				int num = 0;
				for (num = 0; num < list2.Count; num++)
				{
					array[num] = list2[num].AsyncWaitHandle;
				}
				if (!WaitHandle.WaitAll(array, AsyncTimeout, exitContext: false))
				{
					for (num = 0; num < list2.Count; num++)
					{
						if (!list2[num].IsCompleted)
						{
							list[num].TimeoutHandler(list2[num]);
						}
					}
				}
			}
			TimeSpan timeSpan = DateTime.Now - now;
			if (timeSpan <= AsyncTimeout)
			{
				AsyncTimeout -= timeSpan;
			}
			else
			{
				AsyncTimeout = TimeSpan.FromTicks(0L);
			}
		}
		if (serialTasks != null)
		{
			List<PageAsyncTask> list3 = serialTasks;
			serialTasks = null;
			foreach (PageAsyncTask item2 in list3)
			{
				DateTime now2 = DateTime.Now;
				IAsyncResult asyncResult2 = item2.BeginHandler(this, EventArgs.Empty, EndAsyncTaskCallback, item2);
				if (asyncResult2.CompletedSynchronously)
				{
					item2.EndHandler(asyncResult2);
				}
				else if (!asyncResult2.AsyncWaitHandle.WaitOne(AsyncTimeout, exitContext: false) && !asyncResult2.IsCompleted)
				{
					item2.TimeoutHandler(asyncResult2);
				}
				TimeSpan timeSpan2 = DateTime.Now - now2;
				if (timeSpan2 <= AsyncTimeout)
				{
					AsyncTimeout -= timeSpan2;
				}
				else
				{
					AsyncTimeout = TimeSpan.FromTicks(0L);
				}
			}
		}
		AsyncTimeout = TimeSpan.FromSeconds(45.0);
	}

	private void EndAsyncTaskCallback(IAsyncResult result)
	{
		((PageAsyncTask)result.AsyncState).EndHandler(result);
	}

	public static HtmlTextWriter CreateHtmlTextWriterFromType(TextWriter tw, Type writerType)
	{
		if (!typeof(HtmlTextWriter).IsAssignableFrom(writerType))
		{
			throw new HttpException($"Type '{writerType.FullName}' cannot be assigned to HtmlTextWriter");
		}
		if (writerType.GetConstructor(new Type[1] { typeof(TextWriter) }) == null)
		{
			throw new HttpException($"Type '{writerType.FullName}' does not have a consturctor that takes a TextWriter as parameter");
		}
		return (HtmlTextWriter)Activator.CreateInstance(writerType, tw);
	}

	public void RegisterRequiresViewStateEncryption()
	{
		controlRegisteredForViewStateEncryption = true;
	}

	private void ApplyMasterPage()
	{
		if (masterPageFile != null && masterPageFile.Length > 0)
		{
			MasterPage master = Master;
			if (master != null)
			{
				Dictionary<string, bool> appliedMasterPageFiles = new Dictionary<string, bool>(StringComparer.Ordinal);
				MasterPage.ApplyMasterPageRecursive(Request.CurrentExecutionFilePath, HostingEnvironment.VirtualPathProvider, master, appliedMasterPageFiles);
				master.Page = this;
				Controls.Clear();
				Controls.Add(master);
			}
		}
	}

	public void SetFocus(string clientID)
	{
		if (string.IsNullOrEmpty(clientID))
		{
			throw new ArgumentNullException("control");
		}
		if (IsPrerendered)
		{
			throw new InvalidOperationException("SetFocus can only be called before and during PreRender.");
		}
		if (Form == null)
		{
			throw new InvalidOperationException("A form tag with runat=server must exist on the Page to use SetFocus() or the Focus property.");
		}
		_focusedControlID = clientID;
	}

	public void SetFocus(Control control)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control");
		}
		SetFocus(control.ClientID);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public void RegisterRequiresControlState(Control control)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control");
		}
		if (RequiresControlState(control))
		{
			return;
		}
		if (requireStateControls == null)
		{
			requireStateControls = new List<Control>();
		}
		requireStateControls.Add(control);
		int num = requireStateControls.Count - 1;
		if (_savedControlState == null || num >= _savedControlState.Length)
		{
			return;
		}
		for (Control parent = control.Parent; parent != null; parent = parent.Parent)
		{
			if (parent.IsChildControlStateCleared)
			{
				return;
			}
		}
		object obj = _savedControlState[num];
		if (obj != null)
		{
			control.LoadControlState(obj);
		}
	}

	public bool RequiresControlState(Control control)
	{
		if (requireStateControls == null)
		{
			return false;
		}
		return requireStateControls.Contains(control);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public void UnregisterRequiresControlState(Control control)
	{
		if (requireStateControls != null)
		{
			requireStateControls.Remove(control);
		}
	}

	public ValidatorCollection GetValidators(string validationGroup)
	{
		if (validationGroup == string.Empty)
		{
			validationGroup = null;
		}
		ValidatorCollection validatorCollection = new ValidatorCollection();
		if (_validators == null)
		{
			return validatorCollection;
		}
		foreach (IValidator validator in _validators)
		{
			if (BelongsToGroup(validator, validationGroup))
			{
				validatorCollection.Add(validator);
			}
		}
		return validatorCollection;
	}

	private bool BelongsToGroup(IValidator v, string validationGroup)
	{
		BaseValidator baseValidator = v as BaseValidator;
		if (validationGroup == null)
		{
			if (baseValidator != null)
			{
				return string.IsNullOrEmpty(baseValidator.ValidationGroup);
			}
			return true;
		}
		if (baseValidator != null)
		{
			return baseValidator.ValidationGroup == validationGroup;
		}
		return false;
	}

	public virtual void Validate(string validationGroup)
	{
		is_validated = true;
		ValidateCollection(GetValidators(validationGroup));
	}

	private object SavePageControlState()
	{
		int num = ((requireStateControls != null) ? requireStateControls.Count : 0);
		if (num == 0)
		{
			return null;
		}
		object[] array = new object[num];
		object[] array2 = new object[num];
		bool flag = true;
		TraceContext traceContext = ((Context != null && Context.Trace.IsEnabled) ? Context.Trace : null);
		for (int i = 0; i < num; i++)
		{
			Control control = requireStateControls[i];
			object obj = (array[i] = control.SaveControlState());
			if (obj != null)
			{
				flag = false;
			}
			traceContext?.SaveControlState(control, obj);
			ControlAdapter controlAdapter = control.Adapter;
			if (controlAdapter != null)
			{
				array2[i] = controlAdapter.SaveAdapterControlState();
				if (array2[i] != null)
				{
					flag = false;
				}
			}
		}
		if (flag)
		{
			return null;
		}
		return new Pair(array, array2);
	}

	private void LoadPageControlState(object data)
	{
		_savedControlState = null;
		if (data == null)
		{
			return;
		}
		Pair pair = (Pair)data;
		_savedControlState = (object[])pair.First;
		object[] array = (object[])pair.Second;
		if (requireStateControls == null)
		{
			return;
		}
		int num = Math.Min(requireStateControls.Count, (_savedControlState != null) ? _savedControlState.Length : requireStateControls.Count);
		for (int i = 0; i < num; i++)
		{
			Control control = requireStateControls[i];
			control.LoadControlState((_savedControlState != null) ? _savedControlState[i] : null);
			if (control.Adapter != null)
			{
				control.Adapter.LoadAdapterControlState((array != null) ? array[i] : null);
			}
		}
	}

	private void LoadPreviousPageReference()
	{
		if (_requestValueCollection != null)
		{
			string text = _requestValueCollection["__PREVIOUSPAGE"];
			if (text != null)
			{
				IHttpHandler httpHandler = BuildManager.CreateInstanceFromVirtualPath(text, typeof(IHttpHandler)) as IHttpHandler;
				previousPage = (Page)httpHandler;
				previousPage.isCrossPagePostBack = true;
				Server.Execute(httpHandler, null, preserveForm: true, _context.Request.CurrentExecutionFilePath, null, isTransfer: false, isInclude: false);
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected internal void AddContentTemplate(string templateName, ITemplate template)
	{
		if (contentTemplates == null)
		{
			contentTemplates = new Hashtable();
		}
		contentTemplates[templateName] = template;
	}

	internal void PushDataItemContext(object o)
	{
		if (dataItemCtx == null)
		{
			dataItemCtx = new Stack();
		}
		dataItemCtx.Push(o);
	}

	internal void PopDataItemContext()
	{
		if (dataItemCtx == null)
		{
			throw new InvalidOperationException();
		}
		dataItemCtx.Pop();
	}

	public object GetDataItem()
	{
		if (dataItemCtx == null || dataItemCtx.Count == 0)
		{
			throw new InvalidOperationException("No data item");
		}
		return dataItemCtx.Peek();
	}

	private void AddStyleSheets(PageTheme theme, ref List<string> links)
	{
		if (theme == null)
		{
			return;
		}
		string[] array = theme?.GetStyleSheets();
		if (array != null && array.Length != 0)
		{
			if (links == null)
			{
				links = new List<string>();
			}
			links.AddRange(array);
		}
	}

	protected internal override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		List<string> links = null;
		AddStyleSheets(StyleSheetPageTheme, ref links);
		AddStyleSheets(PageTheme, ref links);
		if (links != null)
		{
			HtmlHead header = Header;
			if (links != null && header == null)
			{
				throw new InvalidOperationException("Using themed css files requires a header control on the page.");
			}
			ControlCollection controls = header.Controls;
			for (int num = links.Count - 1; num >= 0; num--)
			{
				string href = links[num];
				HtmlLink htmlLink = new HtmlLink();
				htmlLink.Href = href;
				htmlLink.Attributes["type"] = "text/css";
				htmlLink.Attributes["rel"] = "stylesheet";
				controls.AddAt(0, htmlLink);
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[MonoDocumentationNote("Not implemented.  Only used by .net aspx parser")]
	protected object GetWrappedFileDependencies(string[] virtualFileDependencies)
	{
		return virtualFileDependencies;
	}

	[MonoDocumentationNote("Does nothing.  Used by .net aspx parser")]
	protected virtual void InitializeCulture()
	{
	}

	[MonoDocumentationNote("Does nothing. Used by .net aspx parser")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	protected internal void AddWrappedFileDependencies(object virtualFileDependencies)
	{
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected internal virtual NameValueCollection DeterminePostBackModeUnvalidated()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual bool TryUpdateModel<TModel>(TModel model)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual bool TryUpdateModel<TModel>(TModel model, IValueProvider valueProvider)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual void UpdateModel<TModel>(TModel model)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void UpdateModel<TModel>(TModel model, IValueProvider valueProvider)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
