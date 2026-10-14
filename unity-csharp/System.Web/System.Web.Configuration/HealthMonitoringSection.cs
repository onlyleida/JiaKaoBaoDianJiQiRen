using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class HealthMonitoringSection : ConfigurationSection
{
	private static ConfigurationProperty bufferModesProp;

	private static ConfigurationProperty enabledProp;

	private static ConfigurationProperty eventMappingsProp;

	private static ConfigurationProperty heartbeatIntervalProp;

	private static ConfigurationProperty profilesProp;

	private static ConfigurationProperty providersProp;

	private static ConfigurationProperty rulesProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("bufferModes")]
	public BufferModesCollection BufferModes => (BufferModesCollection)base[bufferModesProp];

	[ConfigurationProperty("enabled", DefaultValue = "True")]
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

	[ConfigurationProperty("eventMappings")]
	public EventMappingSettingsCollection EventMappings => (EventMappingSettingsCollection)base[eventMappingsProp];

	[TypeConverter(typeof(TimeSpanSecondsConverter))]
	[TimeSpanValidator(MinValueString = "00:00:00", MaxValueString = "24.20:31:23")]
	[ConfigurationProperty("heartbeatInterval", DefaultValue = "00:00:00")]
	public TimeSpan HeartbeatInterval
	{
		get
		{
			return (TimeSpan)base[heartbeatIntervalProp];
		}
		set
		{
			base[heartbeatIntervalProp] = value;
		}
	}

	[ConfigurationProperty("profiles")]
	public ProfileSettingsCollection Profiles => (ProfileSettingsCollection)base[profilesProp];

	[ConfigurationProperty("providers")]
	public ProviderSettingsCollection Providers => (ProviderSettingsCollection)base[providersProp];

	[ConfigurationProperty("rules")]
	public RuleSettingsCollection Rules => (RuleSettingsCollection)base[rulesProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static HealthMonitoringSection()
	{
		bufferModesProp = new ConfigurationProperty("bufferModes", typeof(BufferModesCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		enabledProp = new ConfigurationProperty("enabled", typeof(bool), true);
		eventMappingsProp = new ConfigurationProperty("eventMappings", typeof(EventMappingSettingsCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		heartbeatIntervalProp = new ConfigurationProperty("heartbeatInterval", typeof(TimeSpan), TimeSpan.FromSeconds(0.0), PropertyHelper.TimeSpanSecondsConverter, new TimeSpanValidator(TimeSpan.Zero, new TimeSpan(24, 30, 31, 23)), ConfigurationPropertyOptions.None);
		profilesProp = new ConfigurationProperty("profiles", typeof(ProfileSettingsCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		providersProp = new ConfigurationProperty("providers", typeof(ProviderSettingsCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		rulesProp = new ConfigurationProperty("rules", typeof(RuleSettingsCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(bufferModesProp);
		properties.Add(enabledProp);
		properties.Add(eventMappingsProp);
		properties.Add(heartbeatIntervalProp);
		properties.Add(profilesProp);
		properties.Add(providersProp);
		properties.Add(rulesProp);
	}
}
