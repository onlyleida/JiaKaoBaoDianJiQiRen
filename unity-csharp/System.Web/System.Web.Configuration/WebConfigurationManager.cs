using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Configuration.Internal;
using System.Reflection;
using System.Threading;
using System.Web.Hosting;
using System.Web.Util;
using Mono.Web.Util;

namespace System.Web.Configuration;

public static class WebConfigurationManager
{
	private sealed class ConfigPath
	{
		public string Path;

		public bool InAnotherApp;

		public ConfigPath(string path, bool inAnotherApp)
		{
			Path = path;
			InAnotherApp = inAnotherApp;
		}
	}

	private const int SAVE_LOCATIONS_CHECK_INTERVAL = 6000;

	private const int SECTION_CACHE_LOCK_TIMEOUT = 200;

	private static readonly char[] pathTrimChars;

	private static readonly object suppressAppReloadLock;

	private static readonly object saveLocationsCacheLock;

	private static readonly object getSectionLock;

	private static readonly ReaderWriterLockSlim sectionCacheLock;

	private static IInternalConfigConfigurationFactory configFactory;

	private static Hashtable configurations;

	private static Hashtable configPaths;

	private static bool suppressAppReload;

	private static Dictionary<string, DateTime> saveLocationsCache;

	private static Timer saveLocationsTimer;

	private static ArrayList extra_assemblies;

	private const int DEFAULT_SECTION_CACHE_SIZE = 100;

	private const string CACHE_SIZE_OVERRIDING_KEY = "MONO_ASPNET_WEBCONFIG_CACHESIZE";

	private static LruCache<int, object> sectionCache;

	internal static IConfigurationSystem oldConfig;

	private static Web20DefaultConfig config;

	private const BindingFlags privStatic = BindingFlags.Static | BindingFlags.NonPublic;

	private static readonly object lockobj;

	internal static ArrayList ExtraAssemblies
	{
		get
		{
			if (extra_assemblies == null)
			{
				extra_assemblies = new ArrayList();
			}
			return extra_assemblies;
		}
	}

	public static NameValueCollection AppSettings => ConfigurationManager.AppSettings;

	public static ConnectionStringSettingsCollection ConnectionStrings => ConfigurationManager.ConnectionStrings;

	internal static IInternalConfigConfigurationFactory ConfigurationFactory => configFactory;

	static WebConfigurationManager()
	{
		pathTrimChars = new char[1] { '/' };
		suppressAppReloadLock = new object();
		saveLocationsCacheLock = new object();
		getSectionLock = new object();
		configurations = Hashtable.Synchronized(new Hashtable());
		configPaths = Hashtable.Synchronized(new Hashtable());
		extra_assemblies = null;
		lockobj = new object();
		int num = 100;
		bool flag = false;
		if (int.TryParse(Environment.GetEnvironmentVariable("MONO_ASPNET_WEBCONFIG_CACHESIZE"), out var result))
		{
			num = result;
			flag = true;
			Console.WriteLine("WebConfigurationManager's LRUcache Size overriden to: {0} (via {1})", result, "MONO_ASPNET_WEBCONFIG_CACHESIZE");
		}
		sectionCache = new LruCache<int, object>(num);
		string text = "WebConfigurationManager's LRUcache evictions count reached its max size";
		if (!flag)
		{
			text += string.Format("{0}Cache Size: {1} (overridable via {2})", Environment.NewLine, num, "MONO_ASPNET_WEBCONFIG_CACHESIZE");
		}
		sectionCache.EvictionWarning = text;
		configFactory = ConfigurationManager.ConfigurationFactory;
		System.Configuration.Configuration.SaveStart += ConfigurationSaveHandler;
		System.Configuration.Configuration.SaveEnd += ConfigurationSaveHandler;
		Type type = Type.GetType("System.Configuration.CustomizableFileSettingsProvider, System", throwOnError: false);
		if (type != null)
		{
			FieldInfo field = type.GetField("webConfigurationFileMapType", BindingFlags.Static | BindingFlags.NonPublic);
			if (field != null && field.FieldType == Type.GetType("System.Type"))
			{
				field.SetValue(null, typeof(ApplicationSettingsConfigurationFileMap));
			}
		}
		sectionCacheLock = new ReaderWriterLockSlim();
	}

	private static void ReenableWatcherOnConfigLocation(object state)
	{
		string text = state as string;
		if (string.IsNullOrEmpty(text))
		{
			return;
		}
		DateTime value;
		lock (saveLocationsCacheLock)
		{
			if (!saveLocationsCache.TryGetValue(text, out value))
			{
				value = DateTime.MinValue;
			}
		}
		DateTime now = DateTime.Now;
		if (value == DateTime.MinValue || now.Subtract(value).TotalMilliseconds >= 6000.0)
		{
			saveLocationsTimer.Dispose();
			saveLocationsTimer = null;
			HttpApplicationFactory.EnableWatcher(VirtualPathUtility.RemoveTrailingSlash(HttpRuntime.AppDomainAppPath), "?eb.?onfig");
		}
		else
		{
			saveLocationsTimer.Change(6000, 6000);
		}
	}

	private static void ConfigurationSaveHandler(System.Configuration.Configuration sender, ConfigurationSaveEventArgs args)
	{
		try
		{
			sectionCacheLock.EnterWriteLock();
			sectionCache.Clear();
		}
		finally
		{
			sectionCacheLock.ExitWriteLock();
		}
		lock (suppressAppReloadLock)
		{
			string webConfigFileName = WebConfigurationHost.GetWebConfigFileName(HttpRuntime.AppDomainAppPath);
			if (string.Compare(args.StreamPath, webConfigFileName, StringComparison.OrdinalIgnoreCase) != 0)
			{
				return;
			}
			SuppressAppReload(args.Start);
			if (!args.Start)
			{
				return;
			}
			HttpApplicationFactory.DisableWatcher(VirtualPathUtility.RemoveTrailingSlash(HttpRuntime.AppDomainAppPath), "?eb.?onfig");
			lock (saveLocationsCacheLock)
			{
				if (saveLocationsCache == null)
				{
					saveLocationsCache = new Dictionary<string, DateTime>(StringComparer.Ordinal);
				}
				if (saveLocationsCache.ContainsKey(webConfigFileName))
				{
					saveLocationsCache[webConfigFileName] = DateTime.Now;
				}
				else
				{
					saveLocationsCache.Add(webConfigFileName, DateTime.Now);
				}
				if (saveLocationsTimer == null)
				{
					saveLocationsTimer = new Timer(ReenableWatcherOnConfigLocation, webConfigFileName, 6000, 6000);
				}
			}
		}
	}

	public static System.Configuration.Configuration OpenMachineConfiguration()
	{
		return ConfigurationManager.OpenMachineConfiguration();
	}

	[MonoLimitation("locationSubPath is not handled")]
	public static System.Configuration.Configuration OpenMachineConfiguration(string locationSubPath)
	{
		return OpenMachineConfiguration();
	}

	[MonoLimitation("Mono does not support remote configuration")]
	public static System.Configuration.Configuration OpenMachineConfiguration(string locationSubPath, string server)
	{
		if (server == null)
		{
			return OpenMachineConfiguration(locationSubPath);
		}
		throw new NotSupportedException("Mono doesn't support remote configuration");
	}

	[MonoLimitation("Mono does not support remote configuration")]
	public static System.Configuration.Configuration OpenMachineConfiguration(string locationSubPath, string server, IntPtr userToken)
	{
		if (server == null)
		{
			return OpenMachineConfiguration(locationSubPath);
		}
		throw new NotSupportedException("Mono doesn't support remote configuration");
	}

	[MonoLimitation("Mono does not support remote configuration")]
	public static System.Configuration.Configuration OpenMachineConfiguration(string locationSubPath, string server, string userName, string password)
	{
		if (server == null)
		{
			return OpenMachineConfiguration(locationSubPath);
		}
		throw new NotSupportedException("Mono doesn't support remote configuration");
	}

	public static System.Configuration.Configuration OpenWebConfiguration(string path)
	{
		return OpenWebConfiguration(path, null, null, null, null, null);
	}

	public static System.Configuration.Configuration OpenWebConfiguration(string path, string site)
	{
		return OpenWebConfiguration(path, site, null, null, null, null);
	}

	public static System.Configuration.Configuration OpenWebConfiguration(string path, string site, string locationSubPath)
	{
		return OpenWebConfiguration(path, site, locationSubPath, null, null, null);
	}

	public static System.Configuration.Configuration OpenWebConfiguration(string path, string site, string locationSubPath, string server)
	{
		return OpenWebConfiguration(path, site, locationSubPath, server, null, null);
	}

	public static System.Configuration.Configuration OpenWebConfiguration(string path, string site, string locationSubPath, string server, IntPtr userToken)
	{
		return OpenWebConfiguration(path, site, locationSubPath, server, null, null);
	}

	public static System.Configuration.Configuration OpenWebConfiguration(string path, string site, string locationSubPath, string server, string userName, string password)
	{
		return OpenWebConfiguration(path, site, locationSubPath, server, null, null, fweb: false);
	}

	private static System.Configuration.Configuration OpenWebConfiguration(string path, string site, string locationSubPath, string server, string userName, string password, bool fweb)
	{
		if (string.IsNullOrEmpty(path))
		{
			path = "/";
		}
		bool inAnotherApp = false;
		if (!fweb && !string.IsNullOrEmpty(path))
		{
			path = FindWebConfig(path, out inAnotherApp);
		}
		string key = path + site + locationSubPath + server + userName + password;
		System.Configuration.Configuration configuration = null;
		configuration = (System.Configuration.Configuration)configurations[key];
		if (configuration == null)
		{
			configuration = ConfigurationFactory.Create(typeof(WebConfigurationHost), null, path, site, locationSubPath, server, userName, password, inAnotherApp);
			configurations[key] = configuration;
		}
		return configuration;
	}

	public static System.Configuration.Configuration OpenMappedWebConfiguration(WebConfigurationFileMap fileMap, string path)
	{
		return ConfigurationFactory.Create(typeof(WebConfigurationHost), fileMap, path);
	}

	public static System.Configuration.Configuration OpenMappedWebConfiguration(WebConfigurationFileMap fileMap, string path, string site)
	{
		return ConfigurationFactory.Create(typeof(WebConfigurationHost), fileMap, path, site);
	}

	public static System.Configuration.Configuration OpenMappedWebConfiguration(WebConfigurationFileMap fileMap, string path, string site, string locationSubPath)
	{
		return ConfigurationFactory.Create(typeof(WebConfigurationHost), fileMap, path, site, locationSubPath);
	}

	public static System.Configuration.Configuration OpenMappedMachineConfiguration(ConfigurationFileMap fileMap)
	{
		return ConfigurationFactory.Create(typeof(WebConfigurationHost), fileMap);
	}

	public static System.Configuration.Configuration OpenMappedMachineConfiguration(ConfigurationFileMap fileMap, string locationSubPath)
	{
		return OpenMappedMachineConfiguration(fileMap);
	}

	internal static object SafeGetSection(string sectionName, Type configSectionType)
	{
		try
		{
			return GetSection(sectionName);
		}
		catch (Exception)
		{
			if (configSectionType != null)
			{
				return Activator.CreateInstance(configSectionType);
			}
			return null;
		}
	}

	internal static object SafeGetSection(string sectionName, string path, Type configSectionType)
	{
		try
		{
			return GetSection(sectionName, path);
		}
		catch (Exception)
		{
			if (configSectionType != null)
			{
				return Activator.CreateInstance(configSectionType);
			}
			return null;
		}
	}

	public static object GetSection(string sectionName)
	{
		HttpContext current = HttpContext.Current;
		return GetSection(sectionName, GetCurrentPath(current), current);
	}

	public static object GetSection(string sectionName, string path)
	{
		return GetSection(sectionName, path, HttpContext.Current);
	}

	private static bool LookUpLocation(string relativePath, ref System.Configuration.Configuration defaultConfiguration)
	{
		if (string.IsNullOrEmpty(relativePath))
		{
			return false;
		}
		System.Configuration.Configuration configuration = defaultConfiguration.FindLocationConfiguration(relativePath, defaultConfiguration);
		if (configuration == defaultConfiguration)
		{
			return false;
		}
		defaultConfiguration = configuration;
		return true;
	}

	internal static object GetSection(string sectionName, string path, HttpContext context)
	{
		if (string.IsNullOrEmpty(sectionName))
		{
			return null;
		}
		System.Configuration.Configuration defaultConfiguration = OpenWebConfiguration(path, null, null, null, null, null, fweb: false);
		string configPath = defaultConfiguration.ConfigPath;
		int num = 0;
		bool flag = !string.IsNullOrEmpty(path);
		string text = null;
		if (flag)
		{
			text = "location_" + path;
		}
		num = sectionName.GetHashCode();
		if (configPath != null)
		{
			num ^= configPath.GetHashCode();
		}
		int key;
		try
		{
			sectionCacheLock.EnterWriteLock();
			object value;
			if (flag)
			{
				key = num ^ text.GetHashCode();
				if (sectionCache.TryGetValue(key, out value))
				{
					return value;
				}
				key = num ^ path.GetHashCode();
				if (sectionCache.TryGetValue(key, out value))
				{
					return value;
				}
			}
			if (sectionCache.TryGetValue(num, out value))
			{
				return value;
			}
		}
		finally
		{
			sectionCacheLock.ExitWriteLock();
		}
		string text2 = null;
		if (flag)
		{
			string relativePath;
			if (VirtualPathUtility.IsRooted(path))
			{
				if (path[0] == '~')
				{
					relativePath = ((path.Length > 1) ? path.Substring(2) : string.Empty);
				}
				else
				{
					relativePath = ((path[0] != '/') ? path : path.Substring(1));
				}
			}
			else
			{
				relativePath = path;
			}
			HttpRequest httpRequest = context?.Request;
			if (httpRequest != null)
			{
				string directory = VirtualPathUtility.GetDirectory(httpRequest.PathNoValidation);
				if (directory != null)
				{
					directory = directory.TrimEnd(pathTrimChars);
					if (string.Compare(defaultConfiguration.ConfigPath, directory, StringComparison.Ordinal) != 0 && LookUpLocation(directory.Trim(pathTrimChars), ref defaultConfiguration))
					{
						text2 = path;
					}
				}
			}
			text2 = ((!LookUpLocation(relativePath, ref defaultConfiguration)) ? path : text);
		}
		ConfigurationSection section;
		lock (getSectionLock)
		{
			section = defaultConfiguration.GetSection(sectionName);
		}
		if (section == null)
		{
			return null;
		}
		object obj = SettingsMappingManager.MapSection(section.GetRuntimeObject());
		key = ((text2 == null) ? num : (num ^ text2.GetHashCode()));
		AddSectionToCache(key, obj);
		return obj;
	}

	private static string MapPath(HttpRequest req, string virtualPath)
	{
		if (req != null)
		{
			return req.MapPath(virtualPath);
		}
		string appDomainAppVirtualPath = HttpRuntime.AppDomainAppVirtualPath;
		if (!string.IsNullOrEmpty(appDomainAppVirtualPath) && virtualPath.StartsWith(appDomainAppVirtualPath, StringComparison.Ordinal))
		{
			if (string.Compare(virtualPath, appDomainAppVirtualPath, StringComparison.Ordinal) == 0)
			{
				return HttpRuntime.AppDomainAppPath;
			}
			return UrlUtils.Combine(HttpRuntime.AppDomainAppPath, virtualPath.Substring(appDomainAppVirtualPath.Length));
		}
		return null;
	}

	private static string GetParentDir(string rootPath, string curPath)
	{
		int num = curPath.Length - 1;
		if (num > 0 && curPath[num] == '/')
		{
			curPath = curPath.Substring(0, num);
		}
		if (string.Compare(curPath, rootPath, StringComparison.Ordinal) == 0)
		{
			return null;
		}
		int num2 = curPath.LastIndexOf('/');
		return num2 switch
		{
			-1 => curPath, 
			0 => "/", 
			_ => curPath.Substring(0, num2), 
		};
	}

	internal static string FindWebConfig(string path)
	{
		bool inAnotherApp;
		return FindWebConfig(path, out inAnotherApp);
	}

	internal static string FindWebConfig(string path, out bool inAnotherApp)
	{
		inAnotherApp = false;
		if (string.IsNullOrEmpty(path))
		{
			return path;
		}
		if (HostingEnvironment.VirtualPathProvider != null && HostingEnvironment.VirtualPathProvider.DirectoryExists(path))
		{
			path = VirtualPathUtility.AppendTrailingSlash(path);
		}
		string appDomainAppVirtualPath = HttpRuntime.AppDomainAppVirtualPath;
		if (configPaths[path] is ConfigPath configPath)
		{
			inAnotherApp = configPath.InAnotherApp;
			return configPath.Path;
		}
		HttpRequest httpRequest = HttpContext.Current?.Request;
		string text = ((httpRequest != null) ? VirtualPathUtility.AppendTrailingSlash(MapPath(httpRequest, path)) : null);
		string appDomainAppPath = HttpRuntime.AppDomainAppPath;
		if (text != null && appDomainAppPath != null && !text.StartsWith(appDomainAppPath, StringComparison.Ordinal))
		{
			inAnotherApp = true;
		}
		string text2;
		if (inAnotherApp || path[path.Length - 1] == '/')
		{
			text2 = path;
		}
		else
		{
			text2 = VirtualPathUtility.GetDirectory(path, normalize: false);
			if (text2 == null)
			{
				return path;
			}
		}
		if (configPaths[text2] is ConfigPath configPath2)
		{
			inAnotherApp = configPath2.InAnotherApp;
			return configPath2.Path;
		}
		if (httpRequest == null)
		{
			return path;
		}
		ConfigPath configPath3 = new ConfigPath(path, inAnotherApp);
		while (string.Compare(configPath3.Path, appDomainAppVirtualPath, StringComparison.Ordinal) != 0)
		{
			text = MapPath(httpRequest, configPath3.Path);
			if (text == null)
			{
				configPath3.Path = appDomainAppVirtualPath;
				break;
			}
			if (WebConfigurationHost.GetWebConfigFileName(text) != null)
			{
				break;
			}
			configPath3.Path = GetParentDir(appDomainAppVirtualPath, configPath3.Path);
			if (configPath3.Path == null || configPath3.Path == "~")
			{
				configPath3.Path = appDomainAppVirtualPath;
				break;
			}
		}
		if (string.Compare(configPath3.Path, path, StringComparison.Ordinal) != 0)
		{
			configPaths[path] = configPath3;
		}
		else
		{
			configPaths[text2] = configPath3;
		}
		return configPath3.Path;
	}

	private static string GetCurrentPath(HttpContext ctx)
	{
		HttpRequest httpRequest = ctx?.Request;
		if (httpRequest == null)
		{
			return HttpRuntime.AppDomainAppVirtualPath;
		}
		return httpRequest.PathNoValidation;
	}

	internal static bool SuppressAppReload(bool newValue)
	{
		lock (suppressAppReloadLock)
		{
			bool result = suppressAppReload;
			suppressAppReload = newValue;
			return result;
		}
	}

	internal static void RemoveConfigurationFromCache(HttpContext ctx)
	{
		configurations.Remove(GetCurrentPath(ctx));
	}

	public static object GetWebApplicationSection(string sectionName)
	{
		string text = (HttpContext.Current?.Request)?.ApplicationPath;
		return GetSection(sectionName, string.IsNullOrEmpty(text) ? string.Empty : text);
	}

	private static void AddSectionToCache(int key, object section)
	{
		bool flag = false;
		try
		{
			if (sectionCacheLock.TryEnterWriteLock(200))
			{
				flag = true;
				if (!sectionCache.TryGetValue(key, out var value) || value == null)
				{
					sectionCache.Add(key, section);
				}
			}
		}
		finally
		{
			if (flag)
			{
				sectionCacheLock.ExitWriteLock();
			}
		}
	}

	internal static void Init()
	{
		lock (lockobj)
		{
			if (config == null)
			{
				Web20DefaultConfig instance = Web20DefaultConfig.GetInstance();
				MethodInfo method = typeof(ConfigurationSettings).GetMethod("ChangeConfigurationSystem", BindingFlags.Static | BindingFlags.NonPublic);
				if (method == null)
				{
					throw new ConfigurationException("Cannot find method CCS");
				}
				object[] parameters = new object[1] { instance };
				oldConfig = (IConfigurationSystem)method.Invoke(null, parameters);
				config = instance;
				config.Init();
				HttpConfigurationSystem httpConfigurationSystem = new HttpConfigurationSystem();
				MethodInfo method2 = typeof(ConfigurationManager).GetMethod("ChangeConfigurationSystem", BindingFlags.Static | BindingFlags.NonPublic);
				if (method2 == null)
				{
					throw new ConfigurationException("Cannot find method CCS");
				}
				object[] parameters2 = new object[1] { httpConfigurationSystem };
				method2.Invoke(null, parameters2);
			}
		}
	}
}
