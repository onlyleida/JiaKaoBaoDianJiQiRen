using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Security.Permissions;
using System.Security.Principal;
using System.Threading;
using System.Web.Caching;
using System.Web.Compilation;
using System.Web.Configuration;
using System.Web.Hosting;
using System.Web.SessionState;
using System.Web.Util;
using Unity;

namespace System.Web;

[ToolboxItem(false)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HttpApplication : IHttpAsyncHandler, IHttpHandler, IComponent, IDisposable
{
	private class Tim
	{
		private string name;

		private DateTime start;

		public string Name
		{
			get
			{
				return name;
			}
			set
			{
				name = value;
			}
		}

		public Tim()
		{
		}

		public Tim(string name)
		{
			this.name = name;
		}

		public void Start()
		{
			start = DateTime.UtcNow;
		}

		public void Stop()
		{
			Console.WriteLine("{0}: {1}ms", name, (DateTime.UtcNow - start).TotalMilliseconds);
		}
	}

	private static readonly object disposedEvent = new object();

	private static readonly object errorEvent = new object();

	internal static PerformanceCounter requests_total_counter = new PerformanceCounter("ASP.NET", "Requests Total");

	internal static readonly string[] BinDirs = new string[2] { "Bin", "bin" };

	private object this_lock = new object();

	private HttpContext context;

	private HttpSessionState session;

	private ISite isite;

	private volatile HttpModuleCollection modcoll;

	private string assemblyLocation;

	private IHttpHandlerFactory factory;

	private bool autoCulture;

	private bool autoUICulture;

	private bool stop_processing;

	private bool in_application_start;

	private IEnumerator pipeline;

	private ManualResetEvent done;

	private AsyncRequestState begin_iar;

	private AsyncInvoker current_ai;

	private EventHandlerList events;

	private EventHandlerList nonApplicationEvents = new EventHandlerList();

	private CultureInfo app_culture;

	private CultureInfo appui_culture;

	private CultureInfo prev_app_culture;

	private CultureInfo prev_appui_culture;

	private IPrincipal prev_user;

	private static string binDirectory;

	private static volatile Exception initialization_exception;

	private bool removeConfigurationFromCache;

	private bool fullInitComplete;

	private static DynamicModuleManager dynamicModuleManeger = new DynamicModuleManager();

	private bool must_yield;

	private bool in_begin;

	private static object PreSendRequestHeadersEvent = new object();

	private static object PreSendRequestContentEvent = new object();

	private static object AcquireRequestStateEvent = new object();

	private static object AuthenticateRequestEvent = new object();

	private static object AuthorizeRequestEvent = new object();

	private static object BeginRequestEvent = new object();

	private static object EndRequestEvent = new object();

	private static object PostRequestHandlerExecuteEvent = new object();

	private static object PreRequestHandlerExecuteEvent = new object();

	private static object ReleaseRequestStateEvent = new object();

	private static object ResolveRequestCacheEvent = new object();

	private static object UpdateRequestCacheEvent = new object();

	private static object PostAuthenticateRequestEvent = new object();

	private static object PostAuthorizeRequestEvent = new object();

	private static object PostResolveRequestCacheEvent = new object();

	private static object PostMapRequestHandlerEvent = new object();

	private static object PostAcquireRequestStateEvent = new object();

	private static object PostReleaseRequestStateEvent = new object();

	private static object PostUpdateRequestCacheEvent = new object();

	private static object LogRequestEvent = new object();

	private static object MapRequestHandlerEvent = new object();

	private static object PostLogRequestEvent = new object();

	private Tim tim;

	private const string HANDLER_CACHE = "@@HttpHandlerCache@@";

	internal bool InApplicationStart
	{
		get
		{
			return in_application_start;
		}
		set
		{
			in_application_start = value;
		}
	}

	internal string AssemblyLocation
	{
		get
		{
			if (assemblyLocation == null)
			{
				assemblyLocation = GetType().Assembly.Location;
			}
			return assemblyLocation;
		}
	}

	internal static Exception InitializationException => initialization_exception;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public HttpApplicationState Application => HttpApplicationFactory.ApplicationState;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public HttpContext Context => context;

	protected EventHandlerList Events
	{
		get
		{
			if (events == null)
			{
				events = new EventHandlerList();
			}
			return events;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public HttpModuleCollection Modules
	{
		[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.High)]
		get
		{
			if (modcoll == null)
			{
				modcoll = new HttpModuleCollection();
			}
			return modcoll;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public HttpRequest Request
	{
		get
		{
			if (context == null)
			{
				throw HttpException.NewWithCode(Locale.GetText("No context is available."), 3001);
			}
			if (!HttpApplicationFactory.ContextAvailable)
			{
				throw HttpException.NewWithCode(Locale.GetText("Request is not available in this context."), 3001);
			}
			return context.Request;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public HttpResponse Response
	{
		get
		{
			if (context == null)
			{
				throw HttpException.NewWithCode(Locale.GetText("No context is available."), 3001);
			}
			if (!HttpApplicationFactory.ContextAvailable)
			{
				throw HttpException.NewWithCode(Locale.GetText("Response is not available in this context."), 3001);
			}
			return context.Response;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public HttpServerUtility Server
	{
		get
		{
			if (context != null)
			{
				return context.Server;
			}
			return new HttpServerUtility(null);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public HttpSessionState Session
	{
		get
		{
			if (session != null)
			{
				return session;
			}
			if (context == null)
			{
				throw HttpException.NewWithCode(Locale.GetText("No context is available."), 3001);
			}
			return context.Session ?? throw HttpException.NewWithCode(Locale.GetText("Session state is not available in the context."), 3001);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ISite Site
	{
		get
		{
			return isite;
		}
		set
		{
			isite = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public IPrincipal User
	{
		get
		{
			if (context == null)
			{
				throw new HttpException(Locale.GetText("No context is available."));
			}
			if (context.User == null)
			{
				throw new HttpException(Locale.GetText("No currently authenticated user."));
			}
			return context.User;
		}
	}

	internal bool RequestCompleted
	{
		set
		{
			stop_processing = value;
		}
	}

	bool IHttpHandler.IsReusable => true;

	internal static string BinDirectory
	{
		get
		{
			if (binDirectory == null)
			{
				string applicationBase = AppDomain.CurrentDomain.SetupInformation.ApplicationBase;
				string[] binDirs = BinDirs;
				foreach (string path in binDirs)
				{
					string path2 = Path.Combine(applicationBase, path);
					if (Directory.Exists(path2))
					{
						binDirectory = path2;
						break;
					}
				}
			}
			return binDirectory;
		}
	}

	internal static string[] BinDirectoryAssemblies
	{
		get
		{
			ArrayList arrayList = null;
			string text = BinDirectory;
			if (text != null)
			{
				arrayList = new ArrayList();
				string[] files = Directory.GetFiles(text, "*.dll");
				arrayList.AddRange(files);
			}
			if (arrayList == null)
			{
				return new string[0];
			}
			return (string[])arrayList.ToArray(typeof(string));
		}
	}

	public virtual event EventHandler Disposed
	{
		add
		{
			nonApplicationEvents.AddHandler(disposedEvent, value);
		}
		remove
		{
			nonApplicationEvents.RemoveHandler(disposedEvent, value);
		}
	}

	public virtual event EventHandler Error
	{
		add
		{
			nonApplicationEvents.AddHandler(errorEvent, value);
		}
		remove
		{
			nonApplicationEvents.RemoveHandler(errorEvent, value);
		}
	}

	public event EventHandler PreSendRequestHeaders
	{
		add
		{
			AddEventHandler(PreSendRequestHeadersEvent, value);
		}
		remove
		{
			RemoveEventHandler(PreSendRequestHeadersEvent, value);
		}
	}

	public event EventHandler PreSendRequestContent
	{
		add
		{
			AddEventHandler(PreSendRequestContentEvent, value);
		}
		remove
		{
			RemoveEventHandler(PreSendRequestContentEvent, value);
		}
	}

	public event EventHandler AcquireRequestState
	{
		add
		{
			AddEventHandler(AcquireRequestStateEvent, value);
		}
		remove
		{
			RemoveEventHandler(AcquireRequestStateEvent, value);
		}
	}

	public event EventHandler AuthenticateRequest
	{
		add
		{
			AddEventHandler(AuthenticateRequestEvent, value);
		}
		remove
		{
			RemoveEventHandler(AuthenticateRequestEvent, value);
		}
	}

	public event EventHandler AuthorizeRequest
	{
		add
		{
			AddEventHandler(AuthorizeRequestEvent, value);
		}
		remove
		{
			RemoveEventHandler(AuthorizeRequestEvent, value);
		}
	}

	public event EventHandler BeginRequest
	{
		add
		{
			if (!InApplicationStart)
			{
				AddEventHandler(BeginRequestEvent, value);
			}
		}
		remove
		{
			if (!InApplicationStart)
			{
				RemoveEventHandler(BeginRequestEvent, value);
			}
		}
	}

	public event EventHandler EndRequest
	{
		add
		{
			if (!InApplicationStart)
			{
				AddEventHandler(EndRequestEvent, value);
			}
		}
		remove
		{
			if (!InApplicationStart)
			{
				RemoveEventHandler(EndRequestEvent, value);
			}
		}
	}

	public event EventHandler PostRequestHandlerExecute
	{
		add
		{
			AddEventHandler(PostRequestHandlerExecuteEvent, value);
		}
		remove
		{
			RemoveEventHandler(PostRequestHandlerExecuteEvent, value);
		}
	}

	public event EventHandler PreRequestHandlerExecute
	{
		add
		{
			AddEventHandler(PreRequestHandlerExecuteEvent, value);
		}
		remove
		{
			RemoveEventHandler(PreRequestHandlerExecuteEvent, value);
		}
	}

	public event EventHandler ReleaseRequestState
	{
		add
		{
			AddEventHandler(ReleaseRequestStateEvent, value);
		}
		remove
		{
			RemoveEventHandler(ReleaseRequestStateEvent, value);
		}
	}

	public event EventHandler ResolveRequestCache
	{
		add
		{
			AddEventHandler(ResolveRequestCacheEvent, value);
		}
		remove
		{
			RemoveEventHandler(ResolveRequestCacheEvent, value);
		}
	}

	public event EventHandler UpdateRequestCache
	{
		add
		{
			AddEventHandler(UpdateRequestCacheEvent, value);
		}
		remove
		{
			RemoveEventHandler(UpdateRequestCacheEvent, value);
		}
	}

	public event EventHandler PostAuthenticateRequest
	{
		add
		{
			AddEventHandler(PostAuthenticateRequestEvent, value);
		}
		remove
		{
			RemoveEventHandler(PostAuthenticateRequestEvent, value);
		}
	}

	public event EventHandler PostAuthorizeRequest
	{
		add
		{
			AddEventHandler(PostAuthorizeRequestEvent, value);
		}
		remove
		{
			RemoveEventHandler(PostAuthorizeRequestEvent, value);
		}
	}

	public event EventHandler PostResolveRequestCache
	{
		add
		{
			AddEventHandler(PostResolveRequestCacheEvent, value);
		}
		remove
		{
			RemoveEventHandler(PostResolveRequestCacheEvent, value);
		}
	}

	public event EventHandler PostMapRequestHandler
	{
		add
		{
			AddEventHandler(PostMapRequestHandlerEvent, value);
		}
		remove
		{
			RemoveEventHandler(PostMapRequestHandlerEvent, value);
		}
	}

	public event EventHandler PostAcquireRequestState
	{
		add
		{
			AddEventHandler(PostAcquireRequestStateEvent, value);
		}
		remove
		{
			RemoveEventHandler(PostAcquireRequestStateEvent, value);
		}
	}

	public event EventHandler PostReleaseRequestState
	{
		add
		{
			AddEventHandler(PostReleaseRequestStateEvent, value);
		}
		remove
		{
			RemoveEventHandler(PostReleaseRequestStateEvent, value);
		}
	}

	public event EventHandler PostUpdateRequestCache
	{
		add
		{
			AddEventHandler(PostUpdateRequestCacheEvent, value);
		}
		remove
		{
			RemoveEventHandler(PostUpdateRequestCacheEvent, value);
		}
	}

	public event EventHandler LogRequest
	{
		add
		{
			AddEventHandler(LogRequestEvent, value);
		}
		remove
		{
			RemoveEventHandler(LogRequestEvent, value);
		}
	}

	public event EventHandler MapRequestHandler
	{
		add
		{
			AddEventHandler(MapRequestHandlerEvent, value);
		}
		remove
		{
			RemoveEventHandler(MapRequestHandlerEvent, value);
		}
	}

	public event EventHandler PostLogRequest
	{
		add
		{
			AddEventHandler(PostLogRequestEvent, value);
		}
		remove
		{
			RemoveEventHandler(PostLogRequestEvent, value);
		}
	}

	internal event EventHandler DefaultAuthentication;

	public event EventHandler RequestCompleted
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public HttpApplication()
	{
		done = new ManualResetEvent(initialState: false);
	}

	internal void InitOnce(bool full_init)
	{
		if (initialization_exception != null || modcoll != null)
		{
			return;
		}
		lock (this_lock)
		{
			if (initialization_exception != null || modcoll != null)
			{
				return;
			}
			bool flag = context == null;
			try
			{
				HttpModulesSection httpModulesSection = (HttpModulesSection)WebConfigurationManager.GetWebApplicationSection("system.web/httpModules");
				HttpContext current = HttpContext.Current;
				HttpContext.Current = new HttpContext(new SimpleWorkerRequest(string.Empty, string.Empty, new StringWriter()));
				if (context == null)
				{
					context = HttpContext.Current;
				}
				HttpModuleCollection httpModuleCollection = httpModulesSection.LoadModules(this);
				HttpModuleCollection httpModuleCollection2 = CreateDynamicModules();
				for (int i = 0; i < httpModuleCollection2.Count; i++)
				{
					httpModuleCollection.AddModule(httpModuleCollection2.GetKey(i), httpModuleCollection2.Get(i));
				}
				Interlocked.CompareExchange(ref modcoll, httpModuleCollection, null);
				HttpContext.Current = current;
				if (full_init)
				{
					HttpApplicationFactory.AttachEvents(this);
					Init();
					fullInitComplete = true;
				}
			}
			catch (Exception ex)
			{
				Exception ex2 = (initialization_exception = ex);
				Console.Error.WriteLine("Exception while initOnce: " + ex2.ToString());
				Console.Error.WriteLine("Please restart your app to unlock it");
			}
			finally
			{
				if (flag)
				{
					context = null;
				}
			}
		}
	}

	internal void TriggerPreSendRequestHeaders()
	{
		if (Events[PreSendRequestHeadersEvent] is EventHandler eventHandler)
		{
			eventHandler(this, EventArgs.Empty);
		}
	}

	internal void TriggerPreSendRequestContent()
	{
		if (Events[PreSendRequestContentEvent] is EventHandler eventHandler)
		{
			eventHandler(this, EventArgs.Empty);
		}
	}

	public void AddOnAcquireRequestStateAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(bh, eh, this);
		AcquireRequestState += asyncInvoker.Invoke;
	}

	public void AddOnAuthenticateRequestAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(bh, eh, this);
		AuthenticateRequest += asyncInvoker.Invoke;
	}

	public void AddOnAuthorizeRequestAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(bh, eh, this);
		AuthorizeRequest += asyncInvoker.Invoke;
	}

	public void AddOnBeginRequestAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(bh, eh, this);
		BeginRequest += asyncInvoker.Invoke;
	}

	public void AddOnEndRequestAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(bh, eh, this);
		EndRequest += asyncInvoker.Invoke;
	}

	public void AddOnPostRequestHandlerExecuteAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(bh, eh, this);
		PostRequestHandlerExecute += asyncInvoker.Invoke;
	}

	public void AddOnPreRequestHandlerExecuteAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(bh, eh, this);
		PreRequestHandlerExecute += asyncInvoker.Invoke;
	}

	public void AddOnReleaseRequestStateAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(bh, eh, this);
		ReleaseRequestState += asyncInvoker.Invoke;
	}

	public void AddOnResolveRequestCacheAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(bh, eh, this);
		ResolveRequestCache += asyncInvoker.Invoke;
	}

	public void AddOnUpdateRequestCacheAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(bh, eh, this);
		UpdateRequestCache += asyncInvoker.Invoke;
	}

	public void AddOnPostAuthenticateRequestAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AddOnPostAuthenticateRequestAsync(bh, eh, null);
	}

	public void AddOnPostAuthenticateRequestAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		PostAuthenticateRequest += asyncInvoker.Invoke;
	}

	public void AddOnPostAuthorizeRequestAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AddOnPostAuthorizeRequestAsync(bh, eh, null);
	}

	public void AddOnPostAuthorizeRequestAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		PostAuthorizeRequest += asyncInvoker.Invoke;
	}

	public void AddOnPostResolveRequestCacheAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AddOnPostResolveRequestCacheAsync(bh, eh, null);
	}

	public void AddOnPostResolveRequestCacheAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		PostResolveRequestCache += asyncInvoker.Invoke;
	}

	public void AddOnPostMapRequestHandlerAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AddOnPostMapRequestHandlerAsync(bh, eh, null);
	}

	public void AddOnPostMapRequestHandlerAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		PostMapRequestHandler += asyncInvoker.Invoke;
	}

	public void AddOnPostAcquireRequestStateAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AddOnPostAcquireRequestStateAsync(bh, eh, null);
	}

	public void AddOnPostAcquireRequestStateAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		PostAcquireRequestState += asyncInvoker.Invoke;
	}

	public void AddOnPostReleaseRequestStateAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AddOnPostReleaseRequestStateAsync(bh, eh, null);
	}

	public void AddOnPostReleaseRequestStateAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		PostReleaseRequestState += asyncInvoker.Invoke;
	}

	public void AddOnPostUpdateRequestCacheAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AddOnPostUpdateRequestCacheAsync(bh, eh, null);
	}

	public void AddOnPostUpdateRequestCacheAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		PostUpdateRequestCache += asyncInvoker.Invoke;
	}

	public void AddOnAcquireRequestStateAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		AcquireRequestState += asyncInvoker.Invoke;
	}

	public void AddOnAuthenticateRequestAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		AuthenticateRequest += asyncInvoker.Invoke;
	}

	public void AddOnAuthorizeRequestAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		AuthorizeRequest += asyncInvoker.Invoke;
	}

	public void AddOnBeginRequestAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		BeginRequest += asyncInvoker.Invoke;
	}

	public void AddOnEndRequestAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		EndRequest += asyncInvoker.Invoke;
	}

	public void AddOnPostRequestHandlerExecuteAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		PostRequestHandlerExecute += asyncInvoker.Invoke;
	}

	public void AddOnPreRequestHandlerExecuteAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		PreRequestHandlerExecute += asyncInvoker.Invoke;
	}

	public void AddOnReleaseRequestStateAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		ReleaseRequestState += asyncInvoker.Invoke;
	}

	public void AddOnResolveRequestCacheAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		ResolveRequestCache += asyncInvoker.Invoke;
	}

	public void AddOnUpdateRequestCacheAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		UpdateRequestCache += asyncInvoker.Invoke;
	}

	public void AddOnLogRequestAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AddOnLogRequestAsync(bh, eh, null);
	}

	public void AddOnLogRequestAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		LogRequest += asyncInvoker.Invoke;
	}

	public void AddOnMapRequestHandlerAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AddOnMapRequestHandlerAsync(bh, eh, null);
	}

	public void AddOnMapRequestHandlerAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		MapRequestHandler += asyncInvoker.Invoke;
	}

	public void AddOnPostLogRequestAsync(BeginEventHandler bh, EndEventHandler eh)
	{
		AddOnPostLogRequestAsync(bh, eh, null);
	}

	public void AddOnPostLogRequestAsync(BeginEventHandler beginHandler, EndEventHandler endHandler, object state)
	{
		AsyncInvoker asyncInvoker = new AsyncInvoker(beginHandler, endHandler, this, state);
		PostLogRequest += asyncInvoker.Invoke;
	}

	private void AddEventHandler(object key, EventHandler handler)
	{
		if (!fullInitComplete)
		{
			Events.AddHandler(key, handler);
		}
	}

	private void RemoveEventHandler(object key, EventHandler handler)
	{
		if (!fullInitComplete)
		{
			Events.RemoveHandler(key, handler);
		}
	}

	public void CompleteRequest()
	{
		stop_processing = true;
	}

	internal void DisposeInternal()
	{
		Dispose();
		HttpModuleCollection httpModuleCollection = new HttpModuleCollection();
		Interlocked.Exchange(ref modcoll, httpModuleCollection);
		if (httpModuleCollection != null)
		{
			for (int num = httpModuleCollection.Count - 1; num >= 0; num--)
			{
				httpModuleCollection.Get(num).Dispose();
			}
			httpModuleCollection = null;
		}
		if (nonApplicationEvents[disposedEvent] is EventHandler eventHandler)
		{
			eventHandler(this, EventArgs.Empty);
		}
		done.Close();
		done = null;
	}

	public virtual void Dispose()
	{
	}

	public virtual string GetOutputCacheProviderName(HttpContext context)
	{
		return OutputCache.DefaultProviderName;
	}

	public virtual string GetVaryByCustomString(HttpContext context, string custom)
	{
		if (custom == null)
		{
			throw new NullReferenceException();
		}
		if (string.Compare(custom, "browser", ignoreCase: true, Helpers.InvariantCulture) == 0)
		{
			return context.Request.Browser.Type;
		}
		return null;
	}

	private bool ShouldHandleException(Exception e)
	{
		if (e is ParseException)
		{
			return false;
		}
		return true;
	}

	internal void ProcessError(Exception e)
	{
		bool flag = context.Error == null;
		context.AddError(e);
		if (flag && ShouldHandleException(e) && nonApplicationEvents[errorEvent] is EventHandler eventHandler)
		{
			try
			{
				eventHandler(this, EventArgs.Empty);
				if (stop_processing)
				{
					context.ClearError();
				}
			}
			catch (ThreadAbortException ex)
			{
				context.ClearError();
				if (FlagEnd.Value == ex.ExceptionState || HttpRuntime.DomainUnloading)
				{
					Thread.ResetAbort();
				}
				else
				{
					context.AddError(ex);
				}
			}
			catch (Exception errorInfo)
			{
				context.AddError(errorInfo);
			}
		}
		stop_processing = true;
		if (e is HttpException ex2 && ex2.GetHttpCode() == 404)
		{
			removeConfigurationFromCache = true;
		}
	}

	internal void Tick()
	{
		try
		{
			if (pipeline.MoveNext() && (bool)pipeline.Current)
			{
				PipelineDone();
			}
		}
		catch (ThreadAbortException ex)
		{
			object exceptionState = ex.ExceptionState;
			Thread.ResetAbort();
			if (exceptionState is StepTimeout)
			{
				ProcessError(HttpException.NewWithCode("The request timed out.", 2002));
			}
			else
			{
				context.ClearError();
				if (FlagEnd.Value != exceptionState && !HttpRuntime.DomainUnloading)
				{
					context.AddError(ex);
				}
			}
			stop_processing = true;
			PipelineDone();
		}
		catch (Exception ex2)
		{
			if (ex2.InnerException is ThreadAbortException ex3 && FlagEnd.Value == ex3.ExceptionState && !HttpRuntime.DomainUnloading)
			{
				context.ClearError();
				Thread.ResetAbort();
			}
			else
			{
				ProcessError(ex2);
			}
			stop_processing = true;
			PipelineDone();
		}
	}

	private void Resume()
	{
		if (in_begin)
		{
			must_yield = false;
		}
		else
		{
			Tick();
		}
	}

	private void async_callback_completed_cb(IAsyncResult ar)
	{
		if (current_ai.end != null)
		{
			try
			{
				current_ai.end(ar);
			}
			catch (Exception e)
			{
				ProcessError(e);
			}
		}
		Resume();
	}

	private void async_handler_complete_cb(IAsyncResult ar)
	{
		IHttpAsyncHandler httpAsyncHandler = ((ar != null) ? (ar.AsyncState as IHttpAsyncHandler) : null);
		try
		{
			httpAsyncHandler?.EndProcessRequest(ar);
		}
		catch (Exception e)
		{
			ProcessError(e);
		}
		Resume();
	}

	private IEnumerable RunHooks(Delegate list)
	{
		Delegate[] invocationList = list.GetInvocationList();
		Delegate[] array = invocationList;
		for (int i = 0; i < array.Length; i++)
		{
			EventHandler d = (EventHandler)array[i];
			if (d.Target != null && d.Target is AsyncInvoker)
			{
				current_ai = (AsyncInvoker)d.Target;
				try
				{
					must_yield = true;
					in_begin = true;
					context.BeginTimeoutPossible();
					current_ai.begin(this, EventArgs.Empty, async_callback_completed_cb, current_ai.data);
				}
				finally
				{
					in_begin = false;
					context.EndTimeoutPossible();
				}
				if (must_yield)
				{
					yield return stop_processing;
				}
				else if (stop_processing)
				{
					yield return true;
				}
			}
			else
			{
				try
				{
					context.BeginTimeoutPossible();
					d(this, EventArgs.Empty);
				}
				finally
				{
					context.EndTimeoutPossible();
				}
				if (stop_processing)
				{
					yield return true;
				}
			}
		}
	}

	private static void FinalErrorWrite(HttpResponse response, string error)
	{
		try
		{
			response.Write(error);
			response.Flush(final_flush: true);
		}
		catch
		{
			response.Close();
		}
	}

	private void OutputPage()
	{
		if (context.Error == null)
		{
			try
			{
				context.Response.Flush(final_flush: true);
			}
			catch (Exception errorInfo)
			{
				context.AddError(errorInfo);
			}
		}
		Exception ex = context.Error;
		if (ex == null)
		{
			return;
		}
		HttpResponse response = context.Response;
		if (!response.HeadersSent)
		{
			response.ClearHeaders();
			response.ClearContent();
			if (ex is HttpException)
			{
				response.StatusCode = ((HttpException)ex).GetHttpCode();
			}
			else
			{
				ex = HttpException.NewWithCode(string.Empty, ex, 3009);
				response.StatusCode = 500;
			}
			HttpException httpEx = (HttpException)ex;
			if (!RedirectCustomError(ref httpEx))
			{
				FinalErrorWrite(response, httpEx.GetHtmlErrorMessage());
			}
			else
			{
				response.Flush(final_flush: true);
			}
		}
		else
		{
			if (!(ex is HttpException))
			{
				ex = HttpException.NewWithCode(string.Empty, ex, 3009);
			}
			FinalErrorWrite(response, ((HttpException)ex).GetHtmlErrorMessage());
		}
	}

	private void PipelineDone()
	{
		try
		{
			if (Events[EndRequestEvent] is EventHandler eventHandler)
			{
				eventHandler(this, EventArgs.Empty);
			}
		}
		catch (Exception e)
		{
			ProcessError(e);
		}
		try
		{
			OutputPage();
		}
		catch (ThreadAbortException e2)
		{
			ProcessError(e2);
			Thread.ResetAbort();
		}
		catch (Exception ex)
		{
			Console.WriteLine("Internal error: OutputPage threw an exception " + ex);
		}
		finally
		{
			context.WorkerRequest.EndOfRequest();
			if (factory != null && context.Handler != null)
			{
				factory.ReleaseHandler(context.Handler);
				context.Handler = null;
				factory = null;
			}
			context.PopHandler();
			pipeline = null;
			current_ai = null;
		}
		PostDone();
		if (begin_iar != null)
		{
			begin_iar.Complete();
		}
		else
		{
			done.Set();
		}
		requests_total_counter.Increment();
	}

	[Conditional("PIPELINE_TIMER")]
	private void StartTimer(string name)
	{
		if (tim == null)
		{
			tim = new Tim();
		}
		tim.Name = name;
		tim.Start();
	}

	[Conditional("PIPELINE_TIMER")]
	private void StopTimer()
	{
		tim.Stop();
	}

	private IEnumerator Pipeline()
	{
		if (stop_processing)
		{
			yield return true;
		}
		context.Request?.Validate();
		context.MapRequestHandlerDone = false;
		Delegate obj = Events[BeginRequestEvent];
		if ((object)obj != null)
		{
			foreach (bool item in RunHooks(obj))
			{
				yield return item;
			}
		}
		obj = Events[AuthenticateRequestEvent];
		if ((object)obj != null)
		{
			foreach (bool item2 in RunHooks(obj))
			{
				yield return item2;
			}
		}
		if (DefaultAuthentication != null)
		{
			foreach (bool item3 in RunHooks(DefaultAuthentication))
			{
				yield return item3;
			}
		}
		obj = Events[PostAuthenticateRequestEvent];
		if ((object)obj != null)
		{
			foreach (bool item4 in RunHooks(obj))
			{
				yield return item4;
			}
		}
		obj = Events[AuthorizeRequestEvent];
		if ((object)obj != null)
		{
			foreach (bool item5 in RunHooks(obj))
			{
				yield return item5;
			}
		}
		obj = Events[PostAuthorizeRequestEvent];
		if ((object)obj != null)
		{
			foreach (bool item6 in RunHooks(obj))
			{
				yield return item6;
			}
		}
		obj = Events[ResolveRequestCacheEvent];
		if ((object)obj != null)
		{
			foreach (bool item7 in RunHooks(obj))
			{
				yield return item7;
			}
		}
		obj = Events[PostResolveRequestCacheEvent];
		if ((object)obj != null)
		{
			foreach (bool item8 in RunHooks(obj))
			{
				yield return item8;
			}
		}
		obj = Events[MapRequestHandlerEvent];
		if ((object)obj != null)
		{
			foreach (bool item9 in RunHooks(obj))
			{
				yield return item9;
			}
		}
		context.MapRequestHandlerDone = true;
		IHttpHandler handler = null;
		try
		{
			handler = GetHandler(context, context.Request.CurrentExecutionFilePath);
			context.Handler = handler;
			context.PushHandler(handler);
		}
		catch (FileNotFoundException ex)
		{
			if (context.Request.IsLocal)
			{
				ProcessError(HttpException.NewWithCode(404, $"File not found {ex.FileName}", ex, context.Request.FilePath, 3001));
			}
			else
			{
				ProcessError(HttpException.NewWithCode(404, "File not found: " + Path.GetFileName(ex.FileName), context.Request.FilePath, 3001));
			}
		}
		catch (DirectoryNotFoundException innerException)
		{
			if (!context.Request.IsLocal)
			{
				innerException = null;
			}
			ProcessError(HttpException.NewWithCode(404, "Directory not found", innerException, 3001));
		}
		catch (Exception e)
		{
			ProcessError(e);
		}
		if (stop_processing)
		{
			yield return true;
		}
		obj = Events[PostMapRequestHandlerEvent];
		if ((object)obj != null)
		{
			foreach (bool item10 in RunHooks(obj))
			{
				yield return item10;
			}
		}
		obj = Events[AcquireRequestStateEvent];
		if ((object)obj != null)
		{
			foreach (bool item11 in RunHooks(obj))
			{
				yield return item11;
			}
		}
		obj = Events[PostAcquireRequestStateEvent];
		if ((object)obj != null)
		{
			foreach (bool item12 in RunHooks(obj))
			{
				yield return item12;
			}
		}
		obj = Events[PreRequestHandlerExecuteEvent];
		if ((object)obj != null)
		{
			foreach (bool item13 in RunHooks(obj))
			{
				if (!item13)
				{
					continue;
				}
				goto IL_09db;
			}
		}
		IHttpHandler handler2 = context.Handler;
		if (handler2 != null && handler != handler2)
		{
			context.PopHandler();
			handler = handler2;
			context.PushHandler(handler);
		}
		try
		{
			context.BeginTimeoutPossible();
			if (handler == null)
			{
				throw new InvalidOperationException("No handler for the current request.");
			}
			if (handler is IHttpAsyncHandler httpAsyncHandler)
			{
				must_yield = true;
				in_begin = true;
				httpAsyncHandler.BeginProcessRequest(context, async_handler_complete_cb, handler);
			}
			else
			{
				must_yield = false;
				handler.ProcessRequest(context);
			}
			if (context.Error != null)
			{
				throw new TargetInvocationException(context.Error);
			}
		}
		finally
		{
			in_begin = false;
			context.EndTimeoutPossible();
		}
		if (must_yield)
		{
			yield return stop_processing;
		}
		else if (stop_processing)
		{
			goto IL_09db;
		}
		obj = Events[PostRequestHandlerExecuteEvent];
		if ((object)obj != null)
		{
			{
				IEnumerator enumerator2 = RunHooks(obj).GetEnumerator();
				try
				{
					while (enumerator2.MoveNext() && !(bool)enumerator2.Current)
					{
					}
				}
				finally
				{
					IDisposable disposable = enumerator2 as IDisposable;
					if (disposable != null)
					{
						disposable.Dispose();
					}
				}
			}
		}
		goto IL_09db;
		IL_09db:
		obj = Events[ReleaseRequestStateEvent];
		if ((object)obj != null)
		{
			foreach (bool item14 in RunHooks(obj))
			{
				_ = item14;
			}
		}
		if (stop_processing)
		{
			yield return true;
		}
		obj = Events[PostReleaseRequestStateEvent];
		if ((object)obj != null)
		{
			foreach (bool item15 in RunHooks(obj))
			{
				yield return item15;
			}
		}
		if (context.Error == null)
		{
			context.Response.DoFilter(close: true);
		}
		obj = Events[UpdateRequestCacheEvent];
		if ((object)obj != null)
		{
			foreach (bool item16 in RunHooks(obj))
			{
				yield return item16;
			}
		}
		obj = Events[PostUpdateRequestCacheEvent];
		if ((object)obj != null)
		{
			foreach (bool item17 in RunHooks(obj))
			{
				yield return item17;
			}
		}
		obj = Events[LogRequestEvent];
		if ((object)obj != null)
		{
			foreach (bool item18 in RunHooks(obj))
			{
				yield return item18;
			}
		}
		obj = Events[PostLogRequestEvent];
		if ((object)obj != null)
		{
			foreach (bool item19 in RunHooks(obj))
			{
				yield return item19;
			}
		}
		PipelineDone();
	}

	internal CultureInfo GetThreadCulture(HttpRequest request, CultureInfo culture, bool isAuto)
	{
		if (!isAuto)
		{
			return culture;
		}
		CultureInfo cultureInfo = null;
		string[] userLanguages = request.UserLanguages;
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
			cultureInfo = culture;
		}
		return cultureInfo;
	}

	private void PreStart()
	{
		GlobalizationSection globalizationSection = (GlobalizationSection)WebConfigurationManager.GetSection("system.web/globalization");
		app_culture = globalizationSection.GetCulture();
		autoCulture = globalizationSection.IsAutoCulture;
		appui_culture = globalizationSection.GetUICulture();
		autoUICulture = globalizationSection.IsAutoUICulture;
		context.StartTimeoutTimer();
		Thread currentThread = Thread.CurrentThread;
		if (app_culture != null)
		{
			prev_app_culture = currentThread.CurrentCulture;
			CultureInfo threadCulture = GetThreadCulture(Request, app_culture, autoCulture);
			if (!threadCulture.Equals(Helpers.InvariantCulture))
			{
				currentThread.CurrentCulture = threadCulture;
			}
		}
		if (appui_culture != null)
		{
			prev_appui_culture = currentThread.CurrentUICulture;
			CultureInfo threadCulture2 = GetThreadCulture(Request, appui_culture, autoUICulture);
			if (!threadCulture2.Equals(Helpers.InvariantCulture))
			{
				currentThread.CurrentUICulture = threadCulture2;
			}
		}
		prev_user = Thread.CurrentPrincipal;
	}

	private void PostDone()
	{
		if (removeConfigurationFromCache)
		{
			WebConfigurationManager.RemoveConfigurationFromCache(context);
			removeConfigurationFromCache = false;
		}
		Thread currentThread = Thread.CurrentThread;
		if (Thread.CurrentPrincipal != prev_user)
		{
			Thread.CurrentPrincipal = prev_user;
		}
		if (prev_appui_culture != null && prev_appui_culture != currentThread.CurrentUICulture)
		{
			currentThread.CurrentUICulture = prev_appui_culture;
		}
		if (prev_app_culture != null && prev_app_culture != currentThread.CurrentCulture)
		{
			currentThread.CurrentCulture = prev_app_culture;
		}
		if (context == null)
		{
			context = HttpContext.Current;
		}
		context.StopTimeoutTimer();
		context.Request.ReleaseResources();
		context.Response.ReleaseResources();
		context = null;
		session = null;
		HttpContext.Current = null;
	}

	private void Start(object x)
	{
		if (x is CultureInfo[] array && array.Length == 2)
		{
			Thread currentThread = Thread.CurrentThread;
			currentThread.CurrentCulture = array[0];
			currentThread.CurrentUICulture = array[1];
		}
		InitOnce(full_init: true);
		if (initialization_exception != null)
		{
			Exception innerException = initialization_exception;
			HttpException ex = HttpException.NewWithCode(string.Empty, innerException, 3001);
			context.Response.StatusCode = 500;
			FinalErrorWrite(context.Response, ex.GetHtmlErrorMessage());
			PipelineDone();
		}
		else
		{
			HttpContext.Current = Context;
			PreStart();
			pipeline = Pipeline();
			Tick();
		}
	}

	internal static Hashtable GetHandlerCache()
	{
		Cache internalCache = HttpRuntime.InternalCache;
		Hashtable hashtable = internalCache["@@HttpHandlerCache@@"] as Hashtable;
		if (hashtable == null)
		{
			hashtable = new Hashtable();
			internalCache.Insert("@@HttpHandlerCache@@", hashtable);
		}
		return hashtable;
	}

	internal static void ClearHandlerCache()
	{
		GetHandlerCache().Clear();
	}

	private object LocateHandler(HttpRequest req, string verb, string url)
	{
		Hashtable handlerCache = GetHandlerCache();
		string key = verb + url;
		object obj = handlerCache[key];
		if (obj != null)
		{
			return obj;
		}
		obj = (WebConfigurationManager.GetSection("system.web/httpHandlers", req.Path, req.Context) as HttpHandlersSection).LocateHandler(verb, url, out var allowCache);
		IHttpHandler httpHandler = obj as IHttpHandler;
		if (allowCache && httpHandler != null && httpHandler.IsReusable)
		{
			handlerCache[key] = obj;
		}
		return obj;
	}

	internal IHttpHandler GetHandler(HttpContext context, string url)
	{
		return GetHandler(context, url, ignoreContextHandler: false);
	}

	internal IHttpHandler GetHandler(HttpContext context, string url, bool ignoreContextHandler)
	{
		if (!ignoreContextHandler && context.Handler != null)
		{
			return context.Handler;
		}
		HttpRequest request = context.Request;
		string requestType = request.RequestType;
		IHttpHandler httpHandler = null;
		object obj = LocateHandler(request, requestType, url);
		factory = obj as IHttpHandlerFactory;
		if (factory == null)
		{
			return (IHttpHandler)obj;
		}
		return factory.GetHandler(context, requestType, url, request.MapPath(url));
	}

	void IHttpHandler.ProcessRequest(HttpContext context)
	{
		begin_iar = null;
		this.context = context;
		done.Reset();
		Start(null);
		done.WaitOne();
	}

	internal void SetContext(HttpContext context)
	{
		this.context = context;
	}

	internal void SetSession(HttpSessionState session)
	{
		this.session = session;
	}

	IAsyncResult IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, object extraData)
	{
		this.context = context;
		done.Reset();
		begin_iar = new AsyncRequestState(done, cb, extraData);
		_ = new CultureInfo[2]
		{
			Thread.CurrentThread.CurrentCulture,
			Thread.CurrentThread.CurrentUICulture
		};
		if (Thread.CurrentThread.IsThreadPoolThread)
		{
			Start(null);
		}
		else
		{
			ThreadPool.QueueUserWorkItem((object x) =>
			{
				try
				{
					Start(x);
				}
				catch (Exception value)
				{
					Console.Error.WriteLine(value);
				}
			});
		}
		return begin_iar;
	}

	void IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
	{
		if (!result.IsCompleted)
		{
			result.AsyncWaitHandle.WaitOne();
		}
		begin_iar = null;
	}

	public virtual void Init()
	{
	}

	public static void RegisterModule(Type moduleType)
	{
		if (!((HttpRuntimeSection)WebConfigurationManager.GetSection("system.web/httpRuntime")).AllowDynamicModuleRegistration)
		{
			throw new InvalidOperationException("The Application has requested to register a dynamic Module, but dynamic module registration is disabled in web.config.");
		}
		dynamicModuleManeger.Add(moduleType);
	}

	private HttpModuleCollection CreateDynamicModules()
	{
		HttpModuleCollection httpModuleCollection = new HttpModuleCollection();
		foreach (DynamicModuleInfo item in dynamicModuleManeger.LockAndGetModules())
		{
			IHttpModule httpModule = CreateModuleInstance(item.Type);
			httpModule.Init(this);
			httpModuleCollection.AddModule(item.Name, httpModule);
		}
		return httpModuleCollection;
	}

	private IHttpModule CreateModuleInstance(Type type)
	{
		return (IHttpModule)Activator.CreateInstance(type, BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, null, null);
	}

	internal void ClearError()
	{
		context.ClearError();
	}

	private bool RedirectErrorPage(string error_page)
	{
		if (context.Request.QueryString["aspxerrorpath"] != null)
		{
			return false;
		}
		Response.Redirect(error_page + "?aspxerrorpath=" + Request.Path, endResponse: false);
		return true;
	}

	private bool RedirectCustomError(ref HttpException httpEx)
	{
		try
		{
			if (!context.IsCustomErrorEnabledUnsafe)
			{
				return false;
			}
			CustomErrorsSection customErrorsSection = (CustomErrorsSection)WebConfigurationManager.GetSection("system.web/customErrors");
			if (customErrorsSection == null)
			{
				if (context.ErrorPage != null)
				{
					return RedirectErrorPage(context.ErrorPage);
				}
				return false;
			}
			string text = customErrorsSection.Errors[context.Response.StatusCode.ToString()]?.Redirect;
			if (text == null)
			{
				text = context.ErrorPage;
				if (text == null)
				{
					text = customErrorsSection.DefaultRedirect;
				}
			}
			if (text == null)
			{
				return false;
			}
			if (customErrorsSection.RedirectMode == CustomErrorsRedirectMode.ResponseRewrite)
			{
				context.Server.Execute(text);
				return true;
			}
			return RedirectErrorPage(text);
		}
		catch (Exception innerException)
		{
			httpEx = HttpException.NewWithCode(500, string.Empty, innerException, 3009);
			return false;
		}
	}

	internal static Type LoadType(string typeName)
	{
		return LoadType(typeName, throwOnMissing: false);
	}

	internal static Type LoadType(string typeName, bool throwOnMissing)
	{
		Type type = Type.GetType(typeName);
		if (type != null)
		{
			return type;
		}
		Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
		for (int i = 0; i < assemblies.Length; i++)
		{
			type = assemblies[i].GetType(typeName, throwOnError: false);
			if (type != null)
			{
				return type;
			}
		}
		IList topLevelAssemblies = BuildManager.TopLevelAssemblies;
		if (topLevelAssemblies != null && topLevelAssemblies.Count > 0)
		{
			foreach (Assembly item in topLevelAssemblies)
			{
				if (!(item == null))
				{
					type = item.GetType(typeName, throwOnError: false);
					if (type != null)
					{
						return type;
					}
				}
			}
		}
		Exception inner = null;
		try
		{
			type = null;
			type = LoadTypeFromBin(typeName);
		}
		catch (Exception ex)
		{
			inner = ex;
		}
		if (type != null)
		{
			return type;
		}
		if (throwOnMissing)
		{
			throw new TypeLoadException($"Type '{typeName}' cannot be found", inner);
		}
		return null;
	}

	internal static Type LoadType<TBaseType>(string typeName, bool throwOnMissing)
	{
		Type type = LoadType(typeName, throwOnMissing);
		if (typeof(TBaseType).IsAssignableFrom(type))
		{
			return type;
		}
		if (throwOnMissing)
		{
			throw new TypeLoadException($"Type '{typeName}' found but it doesn't derive from base type '{typeof(TBaseType)}'.");
		}
		return null;
	}

	internal static Type LoadTypeFromBin(string typeName)
	{
		Type type = null;
		string[] binDirectoryAssemblies = BinDirectoryAssemblies;
		foreach (string assemblyFile in binDirectoryAssemblies)
		{
			Assembly assembly = null;
			try
			{
				assembly = Assembly.LoadFrom(assemblyFile);
			}
			catch (FileLoadException)
			{
				continue;
			}
			catch (BadImageFormatException)
			{
				continue;
			}
			type = assembly.GetType(typeName, throwOnError: false);
			if (!(type == null))
			{
				return type;
			}
		}
		return null;
	}

	public void OnExecuteRequestStep(Action<HttpContextBase, Action> callback)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
