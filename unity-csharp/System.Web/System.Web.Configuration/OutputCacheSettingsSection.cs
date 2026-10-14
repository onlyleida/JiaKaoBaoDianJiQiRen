using System.Configuration;

namespace System.Web.Configuration;

public sealed class OutputCacheSettingsSection : ConfigurationSection
{
	private static ConfigurationProperty outputCacheProfilesProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("outputCacheProfiles")]
	public OutputCacheProfileCollection OutputCacheProfiles => (OutputCacheProfileCollection)base[outputCacheProfilesProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static OutputCacheSettingsSection()
	{
		outputCacheProfilesProp = new ConfigurationProperty("outputCacheProfiles", typeof(OutputCacheProfileCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(outputCacheProfilesProp);
	}
}
