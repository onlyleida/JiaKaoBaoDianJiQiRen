using System.Configuration;

namespace System.Web.Configuration;

public sealed class OutputCacheSection : ConfigurationSection
{
	private static ConfigurationProperty enableFragmentCacheProp;

	private static ConfigurationProperty enableOutputCacheProp;

	private static ConfigurationProperty omitVaryStarProp;

	private static ConfigurationProperty sendCacheControlHeaderProp;

	private static ConfigurationProperty enableKernelCacheForVaryByStarProp;

	private static ConfigurationProperty providersProp;

	private static ConfigurationProperty defaultProviderNameProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("enableFragmentCache", DefaultValue = "True")]
	public bool EnableFragmentCache
	{
		get
		{
			return (bool)base[enableFragmentCacheProp];
		}
		set
		{
			base[enableFragmentCacheProp] = value;
		}
	}

	[ConfigurationProperty("enableOutputCache", DefaultValue = "True")]
	public bool EnableOutputCache
	{
		get
		{
			return (bool)base[enableOutputCacheProp];
		}
		set
		{
			base[enableOutputCacheProp] = value;
		}
	}

	[ConfigurationProperty("enableKernelCacheForVaryByStar", DefaultValue = "False")]
	public bool EnableKernelCacheForVaryByStar
	{
		get
		{
			return (bool)base[enableKernelCacheForVaryByStarProp];
		}
		set
		{
			base[enableKernelCacheForVaryByStarProp] = value;
		}
	}

	[ConfigurationProperty("omitVaryStar", DefaultValue = "False")]
	public bool OmitVaryStar
	{
		get
		{
			return (bool)base[omitVaryStarProp];
		}
		set
		{
			base[omitVaryStarProp] = value;
		}
	}

	[ConfigurationProperty("sendCacheControlHeader", DefaultValue = "True")]
	public bool SendCacheControlHeader
	{
		get
		{
			return (bool)base[sendCacheControlHeaderProp];
		}
		set
		{
			base[sendCacheControlHeaderProp] = value;
		}
	}

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("defaultProvider", DefaultValue = "AspNetInternalProvider")]
	public string DefaultProviderName
	{
		get
		{
			return base[defaultProviderNameProp] as string;
		}
		set
		{
			base[defaultProviderNameProp] = value;
		}
	}

	[ConfigurationProperty("providers")]
	public ProviderSettingsCollection Providers => base[providersProp] as ProviderSettingsCollection;

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static OutputCacheSection()
	{
		enableFragmentCacheProp = new ConfigurationProperty("enableFragmentCache", typeof(bool), true);
		enableOutputCacheProp = new ConfigurationProperty("enableOutputCache", typeof(bool), true);
		omitVaryStarProp = new ConfigurationProperty("omitVaryStar", typeof(bool), false);
		sendCacheControlHeaderProp = new ConfigurationProperty("sendCacheControlHeader", typeof(bool), true);
		enableKernelCacheForVaryByStarProp = new ConfigurationProperty("enableKernelCacheForVaryByStar", typeof(bool), false);
		providersProp = new ConfigurationProperty("providers", typeof(ProviderSettingsCollection));
		defaultProviderNameProp = new ConfigurationProperty("defaultProvider", typeof(string), "AspNetInternalProvider");
		properties = new ConfigurationPropertyCollection();
		properties.Add(enableFragmentCacheProp);
		properties.Add(enableOutputCacheProp);
		properties.Add(omitVaryStarProp);
		properties.Add(sendCacheControlHeaderProp);
		properties.Add(enableKernelCacheForVaryByStarProp);
		properties.Add(providersProp);
		properties.Add(defaultProviderNameProp);
	}
}
