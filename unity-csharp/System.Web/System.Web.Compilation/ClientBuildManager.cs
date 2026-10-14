using System.CodeDom;
using System.CodeDom.Compiler;
using System.Collections;
using System.ComponentModel;
using System.IO;
using System.Web.Hosting;
using System.Web.Util;
using Unity;

namespace System.Web.Compilation;

public sealed class ClientBuildManager : MarshalByRefObject, IDisposable
{
	private static readonly object appDomainShutdownEvent = new object();

	private static readonly object appDomainStartedEvent = new object();

	private static readonly object appDomainUnloadedEvent = new object();

	private string virt_dir;

	private string phys_src_dir;

	private BareApplicationHost host;

	private ApplicationManager manager;

	private string app_id;

	private string cache_path;

	private EventHandlerList events;

	private static string[] shutdown_directories = new string[5] { "bin", "App_GlobalResources", "App_Code", "App_WebReferences", "App_Browsers" };

	private BareApplicationHost Host
	{
		get
		{
			if (host != null)
			{
				return host;
			}
			int num = virt_dir.GetHashCode();
			if (app_id != null)
			{
				num ^= int.Parse(app_id);
			}
			app_id = num.ToString(Helpers.InvariantCulture);
			host = manager.CreateHostWithCheck(app_id, virt_dir, phys_src_dir);
			cache_path = "";
			int num2 = virt_dir.GetHashCode() << 5 + phys_src_dir.GetHashCode();
			cache_path = Path.Combine(cache_path, num2.ToString(Helpers.InvariantCulture));
			Directory.CreateDirectory(cache_path);
			OnAppDomainStarted();
			return host;
		}
	}

	public string CodeGenDir => Host.GetCodeGenDir();

	public bool IsHostCreated => host != null;

	public event BuildManagerHostUnloadEventHandler AppDomainShutdown
	{
		add
		{
			events.AddHandler(appDomainShutdownEvent, value);
		}
		remove
		{
			events.RemoveHandler(appDomainShutdownEvent, value);
		}
	}

	public event EventHandler AppDomainStarted
	{
		add
		{
			events.AddHandler(appDomainStartedEvent, value);
		}
		remove
		{
			events.RemoveHandler(appDomainStartedEvent, value);
		}
	}

	public event BuildManagerHostUnloadEventHandler AppDomainUnloaded
	{
		add
		{
			events.AddHandler(appDomainUnloadedEvent, value);
		}
		remove
		{
			events.RemoveHandler(appDomainUnloadedEvent, value);
		}
	}

	public ClientBuildManager(string appVirtualDir, string appPhysicalSourceDir)
	{
		events = new EventHandlerList();
		base._002Ector();
		if (appVirtualDir == null || appVirtualDir == "")
		{
			throw new ArgumentNullException("appVirtualDir");
		}
		if (appPhysicalSourceDir == null || appPhysicalSourceDir == "")
		{
			throw new ArgumentNullException("appPhysicalSourceDir");
		}
		virt_dir = appVirtualDir;
		phys_src_dir = appPhysicalSourceDir;
		manager = ApplicationManager.GetApplicationManager();
	}

	public ClientBuildManager(string appVirtualDir, string appPhysicalSourceDir, string appPhysicalTargetDir)
		: this(appVirtualDir, appPhysicalSourceDir)
	{
		if (appPhysicalTargetDir == null || appPhysicalTargetDir == "")
		{
			throw new ArgumentNullException("appPhysicalTargetDir");
		}
	}

	public ClientBuildManager(string appVirtualDir, string appPhysicalSourceDir, string appPhysicalTargetDir, ClientBuildManagerParameter parameter)
		: this(appVirtualDir, appPhysicalSourceDir, appPhysicalTargetDir)
	{
	}

	private void OnAppDomainStarted()
	{
		if (events[appDomainStartedEvent] is EventHandler eventHandler)
		{
			eventHandler(this, EventArgs.Empty);
		}
	}

	private void OnAppDomainShutdown(ApplicationShutdownReason reason)
	{
		if (events[appDomainShutdownEvent] is BuildManagerHostUnloadEventHandler buildManagerHostUnloadEventHandler)
		{
			BuildManagerHostUnloadEventArgs e = new BuildManagerHostUnloadEventArgs(reason);
			buildManagerHostUnloadEventHandler(this, e);
		}
	}

	[MonoTODO("Not implemented")]
	public void CompileApplicationDependencies()
	{
		throw new NotImplementedException();
	}

	public void CompileFile(string virtualPath)
	{
		CompileFile(virtualPath, null);
	}

	[MonoTODO("Not implemented")]
	public void CompileFile(string virtualPath, ClientBuildManagerCallback callback)
	{
		throw new NotImplementedException();
	}

	public IRegisteredObject CreateObject(Type type, bool failIfExists)
	{
		return manager.CreateObject(app_id, type, virt_dir, phys_src_dir, failIfExists);
	}

	[MonoTODO("Currently does not return the GeneratedCode")]
	public string GenerateCode(string virtualPath, string virtualFileString, out IDictionary linePragmasTable)
	{
		if (string.IsNullOrEmpty(virtualPath))
		{
			throw new ArgumentNullException("virtualPath");
		}
		GenerateCodeCompileUnit(virtualPath, virtualFileString, out var _, out var _, out linePragmasTable);
		return null;
	}

	[MonoTODO("Not implemented")]
	public CodeCompileUnit GenerateCodeCompileUnit(string virtualPath, string virtualFileString, out Type codeDomProviderType, out CompilerParameters compilerParameters, out IDictionary linePragmasTable)
	{
		throw new NotImplementedException();
	}

	public CodeCompileUnit GenerateCodeCompileUnit(string virtualPath, out Type codeDomProviderType, out CompilerParameters compilerParameters, out IDictionary linePragmasTable)
	{
		return GenerateCodeCompileUnit(virtualPath, out codeDomProviderType, out compilerParameters, out linePragmasTable);
	}

	public string[] GetAppDomainShutdownDirectories()
	{
		return shutdown_directories;
	}

	[MonoTODO("Not implemented")]
	public IDictionary GetBrowserDefinitions()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public void GetCodeDirectoryInformation(string virtualCodeDir, out Type codeDomProviderType, out CompilerParameters compilerParameters, out string generatedFilesDir)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public Type GetCompiledType(string virtualPath)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public void GetCompilerParameters(string virtualPath, out Type codeDomProviderType, out CompilerParameters compilerParameters)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public string GetGeneratedFileVirtualPath(string filePath)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public string GetGeneratedSourceFile(string virtualPath)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public string[] GetTopLevelAssemblyReferences(string virtualPath)
	{
		throw new NotImplementedException();
	}

	public string[] GetVirtualCodeDirectories()
	{
		throw new NotImplementedException();
	}

	public override object InitializeLifetimeService()
	{
		return null;
	}

	[MonoTODO("Not implemented")]
	public bool IsCodeAssembly(string assemblyName)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public void PrecompileApplication()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public void PrecompileApplication(ClientBuildManagerCallback callback)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public void PrecompileApplication(ClientBuildManagerCallback callback, bool forceCleanBuild)
	{
		throw new NotImplementedException();
	}

	public bool Unload()
	{
		if (host != null)
		{
			host.Shutdown();
			OnAppDomainShutdown(ApplicationShutdownReason.None);
			host = null;
		}
		return true;
	}

	void IDisposable.Dispose()
	{
		Unload();
	}

	public ClientBuildManager(string appVirtualDir, string appPhysicalSourceDir, string appPhysicalTargetDir, ClientBuildManagerParameter parameter, TypeDescriptionProvider typeDescriptionProvider)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
