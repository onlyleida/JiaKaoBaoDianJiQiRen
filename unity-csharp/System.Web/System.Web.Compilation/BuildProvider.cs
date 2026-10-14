using System.CodeDom;
using System.CodeDom.Compiler;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Web.Configuration;
using System.Web.Hosting;
using System.Web.Util;
using Unity;

namespace System.Web.Compilation;

public abstract class BuildProvider
{
	private static Dictionary<string, Type> registeredBuildProviderTypes;

	private ArrayList ref_assemblies;

	private ICollection vpath_deps;

	private CompilationSection compilationSection;

	private VirtualPath vpath;

	private CompilationSection CompilationConfig
	{
		get
		{
			if (compilationSection == null)
			{
				compilationSection = WebConfigurationManager.GetWebApplicationSection("system.web/compilation") as CompilationSection;
			}
			return compilationSection;
		}
	}

	internal virtual string LanguageName => CompilationConfig.DefaultLanguage;

	public virtual CompilerType CodeCompilerType => null;

	protected ICollection ReferencedAssemblies => ref_assemblies;

	protected internal string VirtualPath
	{
		get
		{
			if (vpath == null)
			{
				return null;
			}
			return vpath.Absolute;
		}
	}

	internal VirtualPath VirtualPathInternal => vpath;

	public virtual ICollection VirtualPathDependencies
	{
		get
		{
			if (vpath_deps == null)
			{
				vpath_deps = new OneNullCollection();
			}
			return vpath_deps;
		}
	}

	internal virtual CodeCompileUnit CodeUnit => null;

	protected BuildProvider()
	{
		ref_assemblies = new ArrayList();
	}

	internal void SetVirtualPath(VirtualPath virtualPath)
	{
		vpath = virtualPath;
	}

	internal virtual void GenerateCode()
	{
	}

	internal virtual IDictionary<string, bool> ExtractDependencies()
	{
		return null;
	}

	public virtual void GenerateCode(AssemblyBuilder assemblyBuilder)
	{
	}

	public virtual string GetCustomString(CompilerResults results)
	{
		return null;
	}

	protected CompilerType GetDefaultCompilerType()
	{
		return BuildManager.GetDefaultCompilerTypeForLanguage(CompilationConfig.DefaultLanguage, CompilationConfig);
	}

	protected CompilerType GetDefaultCompilerTypeForLanguage(string language)
	{
		return BuildManager.GetDefaultCompilerTypeForLanguage(language, null);
	}

	public virtual Type GetGeneratedType(CompilerResults results)
	{
		return null;
	}

	public virtual BuildProviderResultFlags GetResultFlags(CompilerResults results)
	{
		return BuildProviderResultFlags.Default;
	}

	protected TextReader OpenReader()
	{
		return OpenReader(VirtualPath);
	}

	protected TextReader OpenReader(string virtualPath)
	{
		return new StreamReader(OpenStream(virtualPath), WebEncoding.FileEncoding);
	}

	protected Stream OpenStream()
	{
		return OpenStream(VirtualPath);
	}

	protected Stream OpenStream(string virtualPath)
	{
		return VirtualPathProvider.OpenFile(virtualPath);
	}

	public static void RegisterBuildProvider(string extension, Type providerType)
	{
		if (string.IsNullOrEmpty(extension))
		{
			throw new ArgumentException("The string parameter 'extension' cannot be null or empty.", "extension");
		}
		if (providerType == null)
		{
			throw new ArgumentNullException("providerType");
		}
		if (!typeof(BuildProvider).IsAssignableFrom(providerType))
		{
			throw new ArgumentException("The parameter 'providerType' is invalid", "providerType");
		}
		BuildManager.AssertPreStartMethodsRunning();
		if (registeredBuildProviderTypes == null)
		{
			registeredBuildProviderTypes = new Dictionary<string, Type>(StringComparer.OrdinalIgnoreCase);
		}
		registeredBuildProviderTypes[extension] = providerType;
	}

	internal static Type GetProviderTypeForExtension(string extension)
	{
		if (string.IsNullOrEmpty(extension))
		{
			return null;
		}
		Type value = null;
		if (registeredBuildProviderTypes == null || !registeredBuildProviderTypes.TryGetValue(extension, out value) || value == null)
		{
			System.Web.Configuration.BuildProvider buildProvider = ((WebConfigurationManager.GetSection("system.web/compilation") is CompilationSection compilationSection) ? compilationSection.BuildProviders : null)?[extension];
			if (buildProvider != null)
			{
				value = HttpApplication.LoadType(buildProvider.Type);
			}
		}
		return value;
	}

	internal static BuildProvider GetProviderInstanceForExtension(string extension)
	{
		Type providerTypeForExtension = GetProviderTypeForExtension(extension);
		if (providerTypeForExtension == null)
		{
			return null;
		}
		return Activator.CreateInstance(providerTypeForExtension, null) as BuildProvider;
	}

	protected internal virtual CodeCompileUnit GetCodeCompileUnit(out IDictionary linePragmasTable)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual void ProcessCompileErrors(CompilerResults results)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
