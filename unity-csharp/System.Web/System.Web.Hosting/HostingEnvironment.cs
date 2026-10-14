using System.Globalization;
using System.Security.Permissions;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Caching;
using System.Web.Configuration;
using Unity;

namespace System.Web.Hosting;

[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.Medium)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.High)]
public sealed class HostingEnvironment : MarshalByRefObject
{
	private static bool is_hosted;

	private static string site_name;

	private static ApplicationShutdownReason shutdown_reason;

	internal static BareApplicationHost Host;

	private static VirtualPathProvider vpath_provider = ((HttpRuntime.AppDomainAppVirtualPath == null) ? null : new DefaultVirtualPathProvider());

	private static int busy_count;

	private static BackgroundWorkScheduler _backgroundWorkScheduler = null;

	private static readonly Task<object> _completedTask = Task.FromResult<object>(null);

	internal static bool HaveCustomVPP { get; private set; }

	public static string ApplicationID => HttpRuntime.AppDomainAppId;

	public static string ApplicationPhysicalPath => HttpRuntime.AppDomainAppPath;

	public static string ApplicationVirtualPath => HttpRuntime.AppDomainAppVirtualPath;

	public static Cache Cache => HttpRuntime.Cache;

	public static Exception InitializationException => HttpApplication.InitializationException;

	public static bool IsHosted
	{
		get
		{
			return is_hosted;
		}
		internal set
		{
			is_hosted = value;
		}
	}

	public static ApplicationShutdownReason ShutdownReason => shutdown_reason;

	public static string SiteName
	{
		get
		{
			return site_name;
		}
		internal set
		{
			site_name = value;
		}
	}

	public static VirtualPathProvider VirtualPathProvider => vpath_provider;

	public static bool InClientBuildManager => false;

	public static IApplicationHost ApplicationHost
	{
		[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public static ApplicationMonitors ApplicationMonitors
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public static bool IsDevelopmentEnvironment
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public static int MaxConcurrentRequestsPerCPU
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public static int MaxConcurrentThreadsPerCPU
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public static event EventHandler StopListening
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

	public HostingEnvironment()
	{
		throw new InvalidOperationException();
	}

	public static void DecrementBusyCount()
	{
		Interlocked.Decrement(ref busy_count);
	}

	[MonoTODO("Not implemented")]
	public static IDisposable Impersonate()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public static IDisposable Impersonate(IntPtr token)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public static IDisposable Impersonate(IntPtr userToken, string virtualPath)
	{
		throw new NotImplementedException();
	}

	public static void IncrementBusyCount()
	{
		Interlocked.Increment(ref busy_count);
	}

	public override object InitializeLifetimeService()
	{
		return null;
	}

	public static void InitiateShutdown()
	{
		HttpRuntime.UnloadAppDomain();
	}

	public static string MapPath(string virtualPath)
	{
		if (virtualPath == null || virtualPath == "")
		{
			throw new ArgumentNullException("virtualPath");
		}
		return (HttpContext.Current?.Request)?.MapPath(virtualPath);
	}

	public static void RegisterObject(IRegisteredObject obj)
	{
		if (obj == null)
		{
			throw new ArgumentNullException("obj");
		}
		if (Host != null)
		{
			Host.RegisterObject(obj, auto_clean: false);
		}
	}

	public static void RegisterVirtualPathProvider(VirtualPathProvider virtualPathProvider)
	{
		if (HttpRuntime.AppDomainAppVirtualPath == null)
		{
			throw new InvalidOperationException();
		}
		if (virtualPathProvider == null)
		{
			throw new ArgumentNullException("virtualPathProvider");
		}
		VirtualPathProvider prev = vpath_provider;
		vpath_provider = virtualPathProvider;
		vpath_provider.InitializeAndSetPrevious(prev);
		if (!(virtualPathProvider is DefaultVirtualPathProvider))
		{
			HaveCustomVPP = true;
		}
		else
		{
			HaveCustomVPP = false;
		}
	}

	public static IDisposable SetCultures(string virtualPath)
	{
		GlobalizationSection obj = WebConfigurationManager.GetSection("system.web/globalization", virtualPath) as GlobalizationSection;
		IDisposable result = Thread.CurrentThread.CurrentCulture as IDisposable;
		string culture = obj.Culture;
		if (string.IsNullOrEmpty(culture))
		{
			return result;
		}
		Thread.CurrentThread.CurrentCulture = new CultureInfo(culture);
		return result;
	}

	public static IDisposable SetCultures()
	{
		return SetCultures("~/");
	}

	public static void UnregisterObject(IRegisteredObject obj)
	{
		if (obj == null)
		{
			throw new ArgumentNullException("obj");
		}
		if (Host != null)
		{
			Host.UnregisterObject(obj);
		}
	}

	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public static void QueueBackgroundWorkItem(Action<CancellationToken> workItem)
	{
		if (workItem == null)
		{
			throw new ArgumentNullException("workItem");
		}
		QueueBackgroundWorkItem((CancellationToken ct) =>
		{
			workItem(ct);
			return _completedTask;
		});
	}

	[SecurityPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public static void QueueBackgroundWorkItem(Func<CancellationToken, Task> workItem)
	{
		if (workItem == null)
		{
			throw new ArgumentNullException("workItem");
		}
		if (Host == null)
		{
			throw new InvalidOperationException();
		}
		QueueBackgroundWorkItemInternal(workItem);
	}

	private static void QueueBackgroundWorkItemInternal(Func<CancellationToken, Task> workItem)
	{
		BackgroundWorkScheduler backgroundWorkScheduler = Volatile.Read(ref _backgroundWorkScheduler);
		if (backgroundWorkScheduler == null)
		{
			BackgroundWorkScheduler backgroundWorkScheduler2 = new BackgroundWorkScheduler(UnregisterObject, WriteUnhandledException);
			backgroundWorkScheduler = Interlocked.CompareExchange(ref _backgroundWorkScheduler, backgroundWorkScheduler2, null) ?? backgroundWorkScheduler2;
			if (backgroundWorkScheduler == backgroundWorkScheduler2)
			{
				RegisterObject(backgroundWorkScheduler);
			}
		}
		backgroundWorkScheduler.ScheduleWorkItem(workItem);
	}

	private static void WriteUnhandledException(AppDomain appDomain, Exception exception)
	{
		Console.Error.WriteLine("Error in background work item: " + exception);
	}

	public static void MessageReceived()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
