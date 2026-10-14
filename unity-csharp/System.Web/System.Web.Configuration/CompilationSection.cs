using System.ComponentModel;
using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class CompilationSection : ConfigurationSection
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty compilersProp;

	private static ConfigurationProperty tempDirectoryProp;

	private static ConfigurationProperty debugProp;

	private static ConfigurationProperty strictProp;

	private static ConfigurationProperty explicitProp;

	private static ConfigurationProperty batchProp;

	private static ConfigurationProperty batchTimeoutProp;

	private static ConfigurationProperty maxBatchSizeProp;

	private static ConfigurationProperty maxBatchGeneratedFileSizeProp;

	private static ConfigurationProperty numRecompilesBeforeAppRestartProp;

	private static ConfigurationProperty defaultLanguageProp;

	private static ConfigurationProperty assembliesProp;

	private static ConfigurationProperty assemblyPostProcessorTypeProp;

	private static ConfigurationProperty buildProvidersProp;

	private static ConfigurationProperty expressionBuildersProp;

	private static ConfigurationProperty urlLinePragmasProp;

	private static ConfigurationProperty codeSubDirectoriesProp;

	private static ConfigurationProperty optimizeCompilationsProp;

	private static ConfigurationProperty targetFrameworkProp;

	[ConfigurationProperty("assemblies")]
	public AssemblyCollection Assemblies => (AssemblyCollection)base[assembliesProp];

	[ConfigurationProperty("assemblyPostProcessorType", DefaultValue = "")]
	public string AssemblyPostProcessorType
	{
		get
		{
			return (string)base[assemblyPostProcessorTypeProp];
		}
		set
		{
			base[assemblyPostProcessorTypeProp] = value;
		}
	}

	[ConfigurationProperty("batch", DefaultValue = "True")]
	public bool Batch
	{
		get
		{
			return (bool)base[batchProp];
		}
		set
		{
			base[batchProp] = value;
		}
	}

	[TypeConverter(typeof(TimeSpanSecondsOrInfiniteConverter))]
	[TimeSpanValidator(MinValueString = "00:00:00")]
	[ConfigurationProperty("batchTimeout", DefaultValue = "00:15:00")]
	public TimeSpan BatchTimeout
	{
		get
		{
			return (TimeSpan)base[batchTimeoutProp];
		}
		set
		{
			base[batchTimeoutProp] = value;
		}
	}

	[ConfigurationProperty("buildProviders")]
	public BuildProviderCollection BuildProviders => (BuildProviderCollection)base[buildProvidersProp];

	[ConfigurationProperty("codeSubDirectories")]
	public CodeSubDirectoriesCollection CodeSubDirectories => (CodeSubDirectoriesCollection)base[codeSubDirectoriesProp];

	[ConfigurationProperty("compilers")]
	public CompilerCollection Compilers => (CompilerCollection)base[compilersProp];

	[ConfigurationProperty("debug", DefaultValue = "False")]
	public bool Debug
	{
		get
		{
			return (bool)base[debugProp];
		}
		set
		{
			base[debugProp] = value;
		}
	}

	[ConfigurationProperty("defaultLanguage", DefaultValue = "vb")]
	public string DefaultLanguage
	{
		get
		{
			return (string)base[defaultLanguageProp];
		}
		set
		{
			base[defaultLanguageProp] = value;
		}
	}

	[ConfigurationProperty("explicit", DefaultValue = "True")]
	public bool Explicit
	{
		get
		{
			return (bool)base[explicitProp];
		}
		set
		{
			base[explicitProp] = value;
		}
	}

	[ConfigurationProperty("expressionBuilders")]
	public ExpressionBuilderCollection ExpressionBuilders => (ExpressionBuilderCollection)base[expressionBuildersProp];

	[ConfigurationProperty("maxBatchGeneratedFileSize", DefaultValue = "1000")]
	public int MaxBatchGeneratedFileSize
	{
		get
		{
			return (int)base[maxBatchGeneratedFileSizeProp];
		}
		set
		{
			base[maxBatchGeneratedFileSizeProp] = value;
		}
	}

	[ConfigurationProperty("maxBatchSize", DefaultValue = "1000")]
	public int MaxBatchSize
	{
		get
		{
			return (int)base[maxBatchSizeProp];
		}
		set
		{
			base[maxBatchSizeProp] = value;
		}
	}

	[ConfigurationProperty("numRecompilesBeforeAppRestart", DefaultValue = "15")]
	public int NumRecompilesBeforeAppRestart
	{
		get
		{
			return (int)base[numRecompilesBeforeAppRestartProp];
		}
		set
		{
			base[numRecompilesBeforeAppRestartProp] = value;
		}
	}

	[ConfigurationProperty("optimizeCompilations", DefaultValue = "False")]
	public bool OptimizeCompilations
	{
		get
		{
			return (bool)base[optimizeCompilationsProp];
		}
		set
		{
			base[optimizeCompilationsProp] = value;
		}
	}

	[ConfigurationProperty("strict", DefaultValue = "False")]
	public bool Strict
	{
		get
		{
			return (bool)base[strictProp];
		}
		set
		{
			base[strictProp] = value;
		}
	}

	[ConfigurationProperty("targetFramework", DefaultValue = null)]
	public string TargetFramework
	{
		get
		{
			return (string)base[targetFrameworkProp];
		}
		set
		{
			base[targetFrameworkProp] = value;
		}
	}

	[ConfigurationProperty("tempDirectory", DefaultValue = "")]
	public string TempDirectory
	{
		get
		{
			return (string)base[tempDirectoryProp];
		}
		set
		{
			base[tempDirectoryProp] = value;
		}
	}

	[ConfigurationProperty("urlLinePragmas", DefaultValue = "False")]
	public bool UrlLinePragmas
	{
		get
		{
			return (bool)base[urlLinePragmasProp];
		}
		set
		{
			base[urlLinePragmasProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public string ControlBuilderInterceptorType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool DisableObsoleteWarnings
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

	public bool EnablePrefetchOptimization
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

	public FolderLevelBuildProviderCollection FolderLevelBuildProviders
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int MaxConcurrentCompilations
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

	public ProfileGuidedOptimizationsFlags ProfileGuidedOptimizations
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

	static CompilationSection()
	{
		assembliesProp = new ConfigurationProperty("assemblies", typeof(AssemblyCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		assemblyPostProcessorTypeProp = new ConfigurationProperty("assemblyPostProcessorType", typeof(string), "");
		batchProp = new ConfigurationProperty("batch", typeof(bool), true);
		buildProvidersProp = new ConfigurationProperty("buildProviders", typeof(BuildProviderCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		batchTimeoutProp = new ConfigurationProperty("batchTimeout", typeof(TimeSpan), new TimeSpan(0, 15, 0), PropertyHelper.TimeSpanSecondsOrInfiniteConverter, PropertyHelper.PositiveTimeSpanValidator, ConfigurationPropertyOptions.None);
		codeSubDirectoriesProp = new ConfigurationProperty("codeSubDirectories", typeof(CodeSubDirectoriesCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		compilersProp = new ConfigurationProperty("compilers", typeof(CompilerCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		debugProp = new ConfigurationProperty("debug", typeof(bool), false);
		defaultLanguageProp = new ConfigurationProperty("defaultLanguage", typeof(string), "vb");
		expressionBuildersProp = new ConfigurationProperty("expressionBuilders", typeof(ExpressionBuilderCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		explicitProp = new ConfigurationProperty("explicit", typeof(bool), true);
		maxBatchSizeProp = new ConfigurationProperty("maxBatchSize", typeof(int), 1000);
		maxBatchGeneratedFileSizeProp = new ConfigurationProperty("maxBatchGeneratedFileSize", typeof(int), 3000);
		numRecompilesBeforeAppRestartProp = new ConfigurationProperty("numRecompilesBeforeAppRestart", typeof(int), 15);
		strictProp = new ConfigurationProperty("strict", typeof(bool), false);
		tempDirectoryProp = new ConfigurationProperty("tempDirectory", typeof(string), "");
		urlLinePragmasProp = new ConfigurationProperty("urlLinePragmas", typeof(bool), false);
		optimizeCompilationsProp = new ConfigurationProperty("optimizeCompilations", typeof(bool), false);
		targetFrameworkProp = new ConfigurationProperty("targetFramework", typeof(string), null);
		properties = new ConfigurationPropertyCollection();
		properties.Add(assembliesProp);
		properties.Add(assemblyPostProcessorTypeProp);
		properties.Add(batchProp);
		properties.Add(buildProvidersProp);
		properties.Add(batchTimeoutProp);
		properties.Add(codeSubDirectoriesProp);
		properties.Add(compilersProp);
		properties.Add(debugProp);
		properties.Add(defaultLanguageProp);
		properties.Add(expressionBuildersProp);
		properties.Add(explicitProp);
		properties.Add(maxBatchSizeProp);
		properties.Add(maxBatchGeneratedFileSizeProp);
		properties.Add(numRecompilesBeforeAppRestartProp);
		properties.Add(strictProp);
		properties.Add(tempDirectoryProp);
		properties.Add(urlLinePragmasProp);
		properties.Add(optimizeCompilationsProp);
		properties.Add(targetFrameworkProp);
	}

	protected override void PostDeserialize()
	{
		base.PostDeserialize();
	}

	[MonoTODO("why override this?")]
	protected internal override object GetRuntimeObject()
	{
		return this;
	}
}
