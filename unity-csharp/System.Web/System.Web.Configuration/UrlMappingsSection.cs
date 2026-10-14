using System.Configuration;

namespace System.Web.Configuration;

public sealed class UrlMappingsSection : ConfigurationSection
{
	private static ConfigurationProperty enabledProp;

	private static ConfigurationProperty urlMappingsProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("enabled", DefaultValue = "True")]
	public bool IsEnabled
	{
		get
		{
			return (bool)base[enabledProp];
		}
		set
		{
			base[enabledProp] = value;
		}
	}

	[ConfigurationProperty("", Options = ConfigurationPropertyOptions.IsDefaultCollection)]
	public UrlMappingCollection UrlMappings => (UrlMappingCollection)base[urlMappingsProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static UrlMappingsSection()
	{
		enabledProp = new ConfigurationProperty("enabled", typeof(bool), true);
		urlMappingsProp = new ConfigurationProperty("", typeof(UrlMappingCollection), null, null, null, ConfigurationPropertyOptions.IsDefaultCollection);
		properties = new ConfigurationPropertyCollection();
		properties.Add(enabledProp);
		properties.Add(urlMappingsProp);
	}
}
