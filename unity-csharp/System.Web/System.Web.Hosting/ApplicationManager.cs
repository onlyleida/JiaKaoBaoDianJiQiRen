using System.Collections.Generic;
using System.Security.Permissions;
using System.Threading;
using Unity;

namespace System.Web.Hosting;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class ApplicationManager : MarshalByRefObject
{
	private static ApplicationManager instance = new ApplicationManager();

	private int users;

	private Dictionary<string, BareApplicationHost> id_to_host;

	private ApplicationManager()
	{
		id_to_host = new Dictionary<string, BareApplicationHost>();
	}

	public void Close()
	{
		if (Interlocked.Decrement(ref users) == 0)
		{
			ShutdownAll();
		}
	}

	[MonoTODO("Need to take advantage of the configuration mapping capabilities of IApplicationHost")]
	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	public IRegisteredObject CreateObject(IApplicationHost appHost, Type type)
	{
		if (appHost == null)
		{
			throw new ArgumentNullException("appHost");
		}
		if (type == null)
		{
			throw new ArgumentNullException("type");
		}
		return CreateObject(appHost.GetSiteID(), type, appHost.GetVirtualPath(), appHost.GetPhysicalPath(), failIfExists: true, throwOnError: true);
	}

	public IRegisteredObject CreateObject(string appId, Type type, string virtualPath, string physicalPath, bool failIfExists)
	{
		return CreateObject(appId, type, virtualPath, physicalPath, failIfExists, throwOnError: true);
	}

	public IRegisteredObject CreateObject(string appId, Type type, string virtualPath, string physicalPath, bool failIfExists, bool throwOnError)
	{
		if (appId == null)
		{
			throw new ArgumentNullException("appId");
		}
		if (!VirtualPathUtility.IsAbsolute(virtualPath))
		{
			throw new ArgumentException("Relative path no allowed.", "virtualPath");
		}
		if (string.IsNullOrEmpty(physicalPath))
		{
			throw new ArgumentException("Cannot be null or empty", "physicalPath");
		}
		if (!typeof(IRegisteredObject).IsAssignableFrom(type))
		{
			throw new ArgumentException("Type '" + type.Name + "' does not implement IRegisteredObject.", "type");
		}
		BareApplicationHost bareApplicationHost = null;
		if (id_to_host.ContainsKey(appId))
		{
			bareApplicationHost = id_to_host[appId];
		}
		IRegisteredObject registeredObject = null;
		if (bareApplicationHost != null)
		{
			registeredObject = CheckIfExists(bareApplicationHost, type, failIfExists);
			if (registeredObject != null)
			{
				return registeredObject;
			}
		}
		try
		{
			if (bareApplicationHost == null)
			{
				bareApplicationHost = CreateHost(appId, virtualPath, physicalPath);
			}
			registeredObject = bareApplicationHost.CreateInstance(type);
		}
		catch (Exception)
		{
			if (throwOnError)
			{
				throw;
			}
		}
		if (registeredObject != null && bareApplicationHost.GetObject(type) == null)
		{
			bareApplicationHost.RegisterObject(registeredObject, auto_clean: true);
		}
		return registeredObject;
	}

	internal BareApplicationHost CreateHostWithCheck(string appId, string vpath, string ppath)
	{
		if (id_to_host.ContainsKey(appId))
		{
			throw new InvalidOperationException("Already have a host with the same appId");
		}
		return CreateHost(appId, vpath, ppath);
	}

	private BareApplicationHost CreateHost(string appId, string vpath, string ppath)
	{
		BareApplicationHost bareApplicationHost = (BareApplicationHost)ApplicationHost.CreateApplicationHost(typeof(BareApplicationHost), vpath, ppath);
		bareApplicationHost.Manager = this;
		bareApplicationHost.AppID = appId;
		id_to_host[appId] = bareApplicationHost;
		return bareApplicationHost;
	}

	internal void RemoveHost(string appId)
	{
		id_to_host.Remove(appId);
	}

	private IRegisteredObject CheckIfExists(BareApplicationHost host, Type type, bool failIfExists)
	{
		IRegisteredObject registeredObject = host.GetObject(type);
		if (registeredObject == null)
		{
			return null;
		}
		if (failIfExists)
		{
			throw new InvalidOperationException("Well known object of type '" + type.Name + "' already exists in this domain.");
		}
		return registeredObject;
	}

	public static ApplicationManager GetApplicationManager()
	{
		return instance;
	}

	public IRegisteredObject GetObject(string appId, Type type)
	{
		if (appId == null)
		{
			throw new ArgumentNullException("appId");
		}
		if (type == null)
		{
			throw new ArgumentNullException("type");
		}
		if (!id_to_host.ContainsKey(appId))
		{
			return null;
		}
		return id_to_host[appId].GetObject(type);
	}

	public ApplicationInfo[] GetRunningApplications()
	{
		Dictionary<string, BareApplicationHost>.KeyCollection keys = id_to_host.Keys;
		string[] array = new string[((ICollection<string>)keys).Count];
		((ICollection<string>)keys).CopyTo(array, 0);
		ApplicationInfo[] array2 = new ApplicationInfo[((ICollection<string>)keys).Count];
		int num = 0;
		string[] array3 = array;
		foreach (string text in array3)
		{
			BareApplicationHost bareApplicationHost = id_to_host[text];
			array2[num++] = new ApplicationInfo(text, bareApplicationHost.PhysicalPath, bareApplicationHost.VirtualPath);
		}
		return array2;
	}

	public override object InitializeLifetimeService()
	{
		return null;
	}

	public bool IsIdle()
	{
		throw new NotImplementedException();
	}

	public void Open()
	{
		Interlocked.Increment(ref users);
	}

	public void ShutdownAll()
	{
		Dictionary<string, BareApplicationHost>.KeyCollection keys = id_to_host.Keys;
		string[] array = new string[((ICollection<string>)keys).Count];
		((ICollection<string>)keys).CopyTo(array, 0);
		string[] array2 = array;
		foreach (string key in array2)
		{
			id_to_host[key].Shutdown();
		}
		id_to_host.Clear();
	}

	public void ShutdownApplication(string appId)
	{
		if (appId == null)
		{
			throw new ArgumentNullException("appId");
		}
		id_to_host[appId]?.Shutdown();
	}

	public void StopObject(string appId, Type type)
	{
		if (appId == null)
		{
			throw new ArgumentNullException("appId");
		}
		if (type == null)
		{
			throw new ArgumentNullException("type");
		}
		if (id_to_host.ContainsKey(appId))
		{
			id_to_host[appId]?.StopObject(type);
		}
	}

	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	public AppDomain GetAppDomain(string appId)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public AppDomain GetAppDomain(IApplicationHost appHost)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
