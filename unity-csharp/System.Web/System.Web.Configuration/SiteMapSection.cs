using System.Configuration;

namespace System.Web.Configuration;

public sealed class SiteMapSection : ConfigurationSection
{
	private static ConfigurationProperty defaultProviderProp;

	private static ConfigurationProperty enabledProp;

	private static ConfigurationProperty providersProp;

	private static ConfigurationPropertyCollection properties;

	private SiteMapProviderCollection providers;

	[ConfigurationProperty("defaultProvider", DefaultValue = "AspNetXmlSiteMapProvider")]
	[StringValidator(MinLength = 1)]
	public string DefaultProvider
	{
		get
		{
			return (string)base["defaultProvider"];
		}
		set
		{
			base["defaultProvider"] = value;
		}
	}

	[ConfigurationProperty("enabled", DefaultValue = "True")]
	public bool Enabled
	{
		get
		{
			return (bool)base["enabled"];
		}
		set
		{
			base["enabled"] = value;
		}
	}

	[ConfigurationProperty("providers")]
	public ProviderSettingsCollection Providers => (ProviderSettingsCollection)base["providers"];

	internal SiteMapProviderCollection ProvidersInternal
	{
		get
		{
			if (providers == null)
			{
				SiteMapProviderCollection siteMapProviderCollection = new SiteMapProviderCollection();
				ProvidersHelper.InstantiateProviders(Providers, siteMapProviderCollection, typeof(SiteMapProvider));
				providers = siteMapProviderCollection;
			}
			return providers;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static SiteMapSection()
	{
		defaultProviderProp = new ConfigurationProperty("defaultProvider", typeof(string), "AspNetXmlSiteMapProvider");
		enabledProp = new ConfigurationProperty("enabled", typeof(bool), true);
		providersProp = new ConfigurationProperty("providers", typeof(ProviderSettingsCollection));
		properties = new ConfigurationPropertyCollection();
		properties.Add(defaultProviderProp);
		properties.Add(enabledProp);
		properties.Add(providersProp);
	}
}
