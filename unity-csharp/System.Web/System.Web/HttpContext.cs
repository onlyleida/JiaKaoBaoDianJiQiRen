using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Reflection;
using System.Runtime.Remoting.Messaging;
using System.Security.Permissions;
using System.Security.Principal;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Caching;
using System.Web.Compilation;
using System.Web.Configuration;
using System.Web.Instrumentation;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.Util;
using System.Web.WebSockets;
using Unity;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpContext : IServiceProvider
{
	internal HttpWorkerRequest WorkerRequest;

	private HttpApplication app_instance;

	private HttpRequest request;

	private HttpResponse response;

	private HttpSessionState session_state;

	private HttpServerUtility server;

	private TraceContext trace_context;

	private IHttpHandler handler;

	private string error_page;

	private bool skip_authorization;

	private IPrincipal user;

	private object errors;

	private Hashtable items;

	private object config_timeout;

	private int timeout_possible;

	private DateTime time_stamp = DateTime.UtcNow;

	private Timer timer;

	private Thread thread;

	private bool _isProcessingInclude;

	[ThreadStatic]
	private static ResourceProviderFactory provider_factory;

	[ThreadStatic]
	private static DefaultResourceProviderFactory default_provider_factory;

	[ThreadStatic]
	private static Dictionary<string, IResourceProvider> resource_providers;

	internal static Assembly AppGlobalResourcesAssembly;

	private ProfileBase profile;

	private LinkedList<IHttpHandler> handlers;

	private static DefaultResourceProviderFactory DefaultProviderFactory
	{
		get
		{
			if (default_provider_factory == null)
			{
				default_provider_factory = new DefaultResourceProviderFactory();
			}
			return default_provider_factory;
		}
	}

	internal bool IsProcessingInclude
	{
		get
		{
			return _isProcessingInclude;
		}
		set
		{
			_isProcessingInclude = value;
		}
	}

	public Exception[] AllErrors
	{
		get
		{
			if (errors == null)
			{
				return null;
			}
			if (errors is Exception)
			{
				return new Exception[1] { (Exception)errors };
			}
			return (Exception[])((ArrayList)errors).ToArray(typeof(Exception));
		}
	}

	public HttpApplicationState Application => HttpApplicationFactory.ApplicationState;

	public HttpApplication ApplicationInstance
	{
		get
		{
			return app_instance;
		}
		set
		{
			app_instance = value;
		}
	}

	public Cache Cache => HttpRuntime.Cache;

	internal Cache InternalCache => HttpRuntime.InternalCache;

	public static HttpContext Current
	{
		get
		{
			return (HttpContext)CallContext.GetData("c");
		}
		set
		{
			CallContext.SetData("c", value);
		}
	}

	public Exception Error
	{
		get
		{
			if (errors == null || errors is Exception)
			{
				return (Exception)errors;
			}
			return (Exception)((ArrayList)errors)[0];
		}
	}

	public IHttpHandler Handler
	{
		get
		{
			return handler;
		}
		set
		{
			handler = value;
		}
	}

	public bool IsCustomErrorEnabled
	{
		get
		{
			try
			{
				return IsCustomErrorEnabledUnsafe;
			}
			catch
			{
				return false;
			}
		}
	}

	internal bool IsCustomErrorEnabledUnsafe
	{
		get
		{
			CustomErrorsSection customErrorsSection = (CustomErrorsSection)WebConfigurationManager.GetSection("system.web/customErrors");
			if (customErrorsSection.Mode == CustomErrorsMode.On)
			{
				return true;
			}
			if (customErrorsSection.Mode == CustomErrorsMode.RemoteOnly)
			{
				return !Request.IsLocal;
			}
			return false;
		}
	}

	public bool IsDebuggingEnabled => RuntimeHelpers.DebuggingEnabled;

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

	public HttpRequest Request => request;

	public HttpResponse Response => response;

	public HttpServerUtility Server
	{
		get
		{
			if (server == null)
			{
				server = new HttpServerUtility(this);
			}
			return server;
		}
	}

	public HttpSessionState Session => session_state;

	public bool SkipAuthorization
	{
		get
		{
			return skip_authorization;
		}
		[SecurityPermission(SecurityAction.Demand, ControlPrincipal = true)]
		set
		{
			skip_authorization = value;
		}
	}

	public DateTime Timestamp => time_stamp.ToLocalTime();

	public TraceContext Trace
	{
		get
		{
			if (trace_context == null)
			{
				trace_context = new TraceContext(this);
			}
			return trace_context;
		}
	}

	public IPrincipal User
	{
		get
		{
			return user;
		}
		[SecurityPermission(SecurityAction.Demand, ControlPrincipal = true)]
		set
		{
			user = value;
		}
	}

	internal bool MapRequestHandlerDone { get; set; }

	public RequestNotification CurrentNotification
	{
		get
		{
			throw new PlatformNotSupportedException("This property is not supported on Mono.");
		}
	}

	public bool IsPostNotification
	{
		get
		{
			throw new PlatformNotSupportedException("This property is not supported on Mono.");
		}
	}

	public IHttpHandler CurrentHandler => GetCurrentHandler();

	public IHttpHandler PreviousHandler => GetPreviousHandler();

	internal bool ProfileInitialized => profile != null;

	public ProfileBase Profile
	{
		get
		{
			if (profile == null)
			{
				if (Request.IsAuthenticated)
				{
					profile = ProfileBase.Create(User.Identity.Name);
				}
				else
				{
					profile = ProfileBase.Create(Request.AnonymousID, isAuthenticated: false);
				}
			}
			return profile;
		}
		internal set
		{
			profile = value;
		}
	}

	internal string ErrorPage
	{
		get
		{
			return error_page;
		}
		set
		{
			error_page = value;
		}
	}

	internal TimeSpan ConfigTimeout
	{
		get
		{
			if (config_timeout == null)
			{
				config_timeout = HttpRuntime.Section.ExecutionTimeout;
			}
			return (TimeSpan)config_timeout;
		}
		set
		{
			config_timeout = value;
			if (timer != null)
			{
				long num = Math.Max((long)(value - (DateTime.UtcNow - time_stamp)).TotalMilliseconds, 0L);
				if (num > 4294967294u)
				{
					num = 4294967294L;
				}
				timer.Change(num, -1L);
			}
		}
	}

	internal SessionStateBehavior SessionStateBehavior { get; private set; }

	internal bool TimeoutPossible => Interlocked.CompareExchange(ref timeout_possible, 1, 1) == 1;

	public bool AllowAsyncDuringSyncStages
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

	public AsyncPreloadModeFlags AsyncPreloadMode
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

	public bool IsWebSocketRequest
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public bool IsWebSocketRequestUpgrading
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public PageInstrumentationService PageInstrumentation
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public bool ThreadAbortOnTimeout
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

	public string WebSocketNegotiatedProtocol
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public IList<string> WebSocketRequestedProtocols
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<string>)0;
		}
	}

	public HttpContext(HttpWorkerRequest wr)
	{
		WorkerRequest = wr;
		request = new HttpRequest(WorkerRequest, this);
		response = new HttpResponse(WorkerRequest, this);
		SessionStateBehavior = SessionStateBehavior.Default;
	}

	public HttpContext(HttpRequest request, HttpResponse response)
	{
		this.request = request;
		this.response = response;
		this.request.Context = this;
		this.response.Context = this;
		SessionStateBehavior = SessionStateBehavior.Default;
	}

	internal void PushHandler(IHttpHandler handler)
	{
		if (handler != null)
		{
			if (handlers == null)
			{
				handlers = new LinkedList<IHttpHandler>();
			}
			handlers.AddLast(handler);
		}
	}

	internal void PopHandler()
	{
		if (handlers != null && handlers.Count != 0)
		{
			handlers.RemoveLast();
		}
	}

	private IHttpHandler GetCurrentHandler()
	{
		if (handlers == null || handlers.Count == 0)
		{
			return null;
		}
		return handlers.Last.Value;
	}

	private IHttpHandler GetPreviousHandler()
	{
		if (handlers == null || handlers.Count <= 1)
		{
			return null;
		}
		return handlers.Last.Previous?.Value;
	}

	public void AddError(Exception errorInfo)
	{
		if (errors == null)
		{
			errors = errorInfo;
			return;
		}
		ArrayList arrayList;
		if (errors is Exception)
		{
			arrayList = new ArrayList();
			arrayList.Add(errors);
			errors = arrayList;
		}
		else
		{
			arrayList = (ArrayList)errors;
		}
		arrayList.Add(errorInfo);
	}

	internal void ClearError(Exception e)
	{
		if (errors == e)
		{
			errors = null;
		}
	}

	internal bool HasError(Exception e)
	{
		if (errors == e)
		{
			return true;
		}
		if (!(errors is ArrayList))
		{
			return false;
		}
		return ((ArrayList)errors).Contains(e);
	}

	public void ClearError()
	{
		errors = null;
	}

	[Obsolete("The recommended alternative is System.Web.Configuration.WebConfigurationManager.GetWebApplicationSection in System.Web.dll. http://go.microsoft.com/fwlink/?linkid=14202")]
	public static object GetAppConfig(string name)
	{
		return ConfigurationSettings.GetConfig(name);
	}

	[Obsolete("The recommended alternative is System.Web.HttpContext.GetSection in System.Web.dll. http://go.microsoft.com/fwlink/?linkid=14202")]
	public object GetConfig(string name)
	{
		return GetSection(name);
	}

	public static object GetGlobalResourceObject(string classKey, string resourceKey)
	{
		return GetGlobalResourceObject(classKey, resourceKey, Thread.CurrentThread.CurrentUICulture);
	}

	private static bool EnsureProviderFactory()
	{
		if (resource_providers == null)
		{
			resource_providers = new Dictionary<string, IResourceProvider>();
		}
		if (provider_factory != null)
		{
			return true;
		}
		if (!(WebConfigurationManager.GetSection("system.web/globalization") is GlobalizationSection { ResourceProviderFactoryType: var text }))
		{
			return false;
		}
		bool flag = false;
		if (string.IsNullOrEmpty(text))
		{
			flag = true;
			text = typeof(DefaultResourceProviderFactory).AssemblyQualifiedName;
		}
		ResourceProviderFactory resourceProviderFactory = Activator.CreateInstance(HttpApplication.LoadType(text, throwOnMissing: true)) as ResourceProviderFactory;
		if ((resourceProviderFactory == null) & flag)
		{
			return false;
		}
		provider_factory = resourceProviderFactory;
		if (flag)
		{
			default_provider_factory = resourceProviderFactory as DefaultResourceProviderFactory;
		}
		return true;
	}

	internal static IResourceProvider GetResourceProvider(string virtualPath, bool isLocal)
	{
		if (!EnsureProviderFactory())
		{
			return null;
		}
		IResourceProvider value = null;
		if (!resource_providers.TryGetValue(virtualPath, out value))
		{
			value = ((!isLocal) ? provider_factory.CreateGlobalResourceProvider(virtualPath) : provider_factory.CreateLocalResourceProvider(virtualPath));
			if (value == null)
			{
				value = ((!isLocal) ? DefaultProviderFactory.CreateGlobalResourceProvider(virtualPath) : DefaultProviderFactory.CreateLocalResourceProvider(virtualPath));
				if (value == null)
				{
					return null;
				}
			}
			resource_providers.Add(virtualPath, value);
		}
		return value;
	}

	private static object GetGlobalObjectFromFactory(string classKey, string resourceKey, CultureInfo culture)
	{
		return GetResourceProvider(classKey, isLocal: false)?.GetObject(resourceKey, culture);
	}

	public static object GetGlobalResourceObject(string classKey, string resourceKey, CultureInfo culture)
	{
		return GetGlobalObjectFromFactory("Resources." + classKey, resourceKey, culture);
	}

	public static object GetLocalResourceObject(string virtualPath, string resourceKey)
	{
		return GetLocalResourceObject(virtualPath, resourceKey, Thread.CurrentThread.CurrentUICulture);
	}

	private static object GetLocalObjectFromFactory(string virtualPath, string resourceKey, CultureInfo culture)
	{
		return GetResourceProvider(virtualPath, isLocal: true)?.GetObject(resourceKey, culture);
	}

	public static object GetLocalResourceObject(string virtualPath, string resourceKey, CultureInfo culture)
	{
		if (!VirtualPathUtility.IsAbsolute(virtualPath))
		{
			throw new ArgumentException("The specified virtualPath was not rooted.");
		}
		return GetLocalObjectFromFactory(virtualPath, resourceKey, culture);
	}

	public object GetSection(string sectionName)
	{
		return WebConfigurationManager.GetSection(sectionName);
	}

	object IServiceProvider.GetService(Type service)
	{
		if (service == typeof(HttpWorkerRequest))
		{
			return WorkerRequest;
		}
		if (service == typeof(HttpApplication))
		{
			return ApplicationInstance;
		}
		if (service == typeof(HttpRequest))
		{
			return Request;
		}
		if (service == typeof(HttpResponse))
		{
			return Response;
		}
		if (service == typeof(HttpSessionState))
		{
			return Session;
		}
		if (service == typeof(HttpApplicationState))
		{
			return Application;
		}
		if (service == typeof(IPrincipal))
		{
			return User;
		}
		if (service == typeof(Cache))
		{
			return Cache;
		}
		if (service == typeof(HttpContext))
		{
			return Current;
		}
		if (service == typeof(IHttpHandler))
		{
			return Handler;
		}
		if (service == typeof(HttpServerUtility))
		{
			return Server;
		}
		if (service == typeof(TraceContext))
		{
			return Trace;
		}
		return null;
	}

	public void RemapHandler(IHttpHandler handler)
	{
		if (MapRequestHandlerDone)
		{
			throw new InvalidOperationException("The RemapHandler method was called after the MapRequestHandler event occurred.");
		}
		Handler = handler;
	}

	public void RewritePath(string path)
	{
		RewritePath(path, rebaseClientPath: true);
	}

	public void RewritePath(string filePath, string pathInfo, string queryString)
	{
		RewritePath(filePath, pathInfo, queryString, setClientFilePath: false);
	}

	public void RewritePath(string path, bool rebaseClientPath)
	{
		int num = path.IndexOf('?');
		if (num != -1)
		{
			RewritePath(path.Substring(0, num), string.Empty, path.Substring(num + 1), rebaseClientPath);
		}
		else
		{
			RewritePath(path, null, null, rebaseClientPath);
		}
	}

	public void RewritePath(string filePath, string pathInfo, string queryString, bool setClientFilePath)
	{
		if (filePath == null)
		{
			throw new ArgumentNullException("filePath");
		}
		if (!VirtualPathUtility.IsValidVirtualPath(filePath))
		{
			throw new HttpException("'" + HttpUtility.HtmlEncode(filePath) + "' is not a valid virtual path.");
		}
		filePath = VirtualPathUtility.Canonize(filePath);
		bool flag = VirtualPathUtility.IsAppRelative(filePath);
		bool flag2 = !flag && VirtualPathUtility.IsAbsolute(filePath);
		HttpRequest httpRequest = Request;
		if (httpRequest == null)
		{
			return;
		}
		if (flag | flag2)
		{
			if (flag)
			{
				filePath = VirtualPathUtility.ToAbsolute(filePath);
			}
		}
		else
		{
			filePath = VirtualPathUtility.AppendTrailingSlash(httpRequest.BaseVirtualDir) + filePath;
		}
		if (!StrUtils.StartsWith(filePath, HttpRuntime.AppDomainAppVirtualPath))
		{
			throw new HttpException(404, "The virtual path '" + HttpUtility.HtmlEncode(filePath) + "' maps to another application.", filePath);
		}
		httpRequest.SetCurrentExePath(filePath);
		httpRequest.SetFilePath(filePath);
		if (setClientFilePath)
		{
			httpRequest.ClientFilePath = filePath;
		}
		if (pathInfo != null)
		{
			httpRequest.SetPathInfo(pathInfo);
		}
		if (queryString != null)
		{
			httpRequest.QueryStringRaw = queryString;
		}
	}

	public void SetSessionStateBehavior(SessionStateBehavior sessionStateBehavior)
	{
		SessionStateBehavior = sessionStateBehavior;
	}

	internal void SetSession(HttpSessionState state)
	{
		session_state = state;
	}

	private void TimeoutReached(object state)
	{
		HttpRuntime.QueuePendingRequest(started_internally: false);
		if (Interlocked.CompareExchange(ref timeout_possible, 0, 0) == 0)
		{
			if (timer != null)
			{
				timer.Change(2000, 0);
			}
		}
		else
		{
			StopTimeoutTimer();
			thread.Abort(new StepTimeout());
		}
	}

	internal void StartTimeoutTimer()
	{
		thread = Thread.CurrentThread;
		timer = new Timer(TimeoutReached, null, (int)ConfigTimeout.TotalMilliseconds, -1);
	}

	internal void StopTimeoutTimer()
	{
		if (timer != null)
		{
			timer.Dispose();
			timer = null;
		}
	}

	internal void BeginTimeoutPossible()
	{
		timeout_possible = 1;
	}

	internal void EndTimeoutPossible()
	{
		Interlocked.CompareExchange(ref timeout_possible, 0, 1);
	}

	public void AcceptWebSocketRequest(Func<AspNetWebSocketContext, Task> userFunc)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void AcceptWebSocketRequest(Func<AspNetWebSocketContext, Task> userFunc, AspNetWebSocketOptions options)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ISubscriptionToken AddOnRequestCompleted(Action<HttpContext> callback)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public ISubscriptionToken DisposeOnPipelineCompleted(IDisposable target)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
