using System.Configuration;

namespace System.Web.Configuration;

public sealed class ProfileSection : ConfigurationSection
{
	private static ConfigurationProperty automaticSaveEnabledProp;

	private static ConfigurationProperty defaultProviderProp;

	private static ConfigurationProperty enabledProp;

	private static ConfigurationProperty inheritsProp;

	private static ConfigurationProperty propertySettingsProp;

	private static ConfigurationProperty providersProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("automaticSaveEnabled", DefaultValue = true)]
	public bool AutomaticSaveEnabled
	{
		get
		{
			return (bool)base[automaticSaveEnabledProp];
		}
		set
		{
			base[automaticSaveEnabledProp] = value;
		}
	}

	[ConfigurationProperty("defaultProvider", DefaultValue = "AspNetSqlProfileProvider")]
	[StringValidator(MinLength = 1)]
	public string DefaultProvider
	{
		get
		{
			return (string)base[defaultProviderProp];
		}
		set
		{
			base[defaultProviderProp] = value;
		}
	}

	[ConfigurationProperty("enabled", DefaultValue = true)]
	public bool Enabled
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

	[ConfigurationProperty("inherits", DefaultValue = "")]
	public string Inherits
	{
		get
		{
			return (string)base[inheritsProp];
		}
		set
		{
			base[inheritsProp] = value;
		}
	}

	[ConfigurationProperty("properties")]
	public RootProfilePropertySettingsCollection PropertySettings => (RootProfilePropertySettingsCollection)base[propertySettingsProp];

	[ConfigurationProperty("providers")]
	public ProviderSettingsCollection Providers => (ProviderSettingsCollection)base[providersProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static ProfileSection()
	{
		automaticSaveEnabledProp = new ConfigurationProperty("automaticSaveEnabled", typeof(bool), true);
		defaultProviderProp = new ConfigurationProperty("defaultProvider", typeof(string), "AspNetSqlProfileProvider");
		enabledProp = new ConfigurationProperty("enabled", typeof(bool), true);
		inheritsProp = new ConfigurationProperty("inherits", typeof(string), "");
		propertySettingsProp = new ConfigurationProperty("properties", typeof(RootProfilePropertySettingsCollection));
		providersProp = new ConfigurationProperty("providers", typeof(ProviderSettingsCollection));
		properties = new ConfigurationPropertyCollection();
		properties.Add(automaticSaveEnabledProp);
		properties.Add(defaultProviderProp);
		properties.Add(enabledProp);
		properties.Add(inheritsProp);
		properties.Add(propertySettingsProp);
		properties.Add(providersProp);
	}
}
