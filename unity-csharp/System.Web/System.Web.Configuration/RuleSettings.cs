using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class RuleSettings : ConfigurationElement
{
	private static ConfigurationProperty customProp;

	private static ConfigurationProperty eventNameProp;

	private static ConfigurationProperty maxLimitProp;

	private static ConfigurationProperty minInstancesProp;

	private static ConfigurationProperty minIntervalProp;

	private static ConfigurationProperty nameProp;

	private static ConfigurationProperty profileProp;

	private static ConfigurationProperty providerProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("custom", DefaultValue = "")]
	public string Custom
	{
		get
		{
			return (string)base[customProp];
		}
		set
		{
			base[customProp] = value;
		}
	}

	[ConfigurationProperty("eventName", DefaultValue = "", Options = ConfigurationPropertyOptions.IsRequired)]
	public string EventName
	{
		get
		{
			return (string)base[eventNameProp];
		}
		set
		{
			base[eventNameProp] = value;
		}
	}

	[TypeConverter(typeof(InfiniteIntConverter))]
	[IntegerValidator(MinValue = 0, MaxValue = int.MaxValue)]
	[ConfigurationProperty("maxLimit", DefaultValue = "2147483647")]
	public int MaxLimit
	{
		get
		{
			return (int)base[maxLimitProp];
		}
		set
		{
			base[maxLimitProp] = value;
		}
	}

	[ConfigurationProperty("minInstances", DefaultValue = "1")]
	[IntegerValidator(MinValue = 1, MaxValue = int.MaxValue)]
	public int MinInstances
	{
		get
		{
			return (int)base[minInstancesProp];
		}
		set
		{
			base[minInstancesProp] = value;
		}
	}

	[TypeConverter(typeof(InfiniteTimeSpanConverter))]
	[ConfigurationProperty("minInterval", DefaultValue = "00:00:00")]
	public TimeSpan MinInterval
	{
		get
		{
			return (TimeSpan)base[minIntervalProp];
		}
		set
		{
			base[minIntervalProp] = value;
		}
	}

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("name", DefaultValue = "", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	public string Name
	{
		get
		{
			return (string)base[nameProp];
		}
		set
		{
			base[nameProp] = value;
		}
	}

	[ConfigurationProperty("profile", DefaultValue = "")]
	public string Profile
	{
		get
		{
			return (string)base[profileProp];
		}
		set
		{
			base[profileProp] = value;
		}
	}

	[ConfigurationProperty("provider", DefaultValue = "")]
	public string Provider
	{
		get
		{
			return (string)base[providerProp];
		}
		set
		{
			base[providerProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static RuleSettings()
	{
		customProp = new ConfigurationProperty("custom", typeof(string), "");
		eventNameProp = new ConfigurationProperty("eventName", typeof(string), "", ConfigurationPropertyOptions.IsRequired);
		maxLimitProp = new ConfigurationProperty("maxLimit", typeof(int), int.MaxValue, PropertyHelper.InfiniteIntConverter, PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		minInstancesProp = new ConfigurationProperty("minInstances", typeof(int), 1, TypeDescriptor.GetConverter(typeof(int)), new IntegerValidator(1, int.MaxValue), ConfigurationPropertyOptions.None);
		minIntervalProp = new ConfigurationProperty("minInterval", typeof(TimeSpan), TimeSpan.FromSeconds(0.0), PropertyHelper.InfiniteTimeSpanConverter, null, ConfigurationPropertyOptions.None);
		nameProp = new ConfigurationProperty("name", typeof(string), "", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		profileProp = new ConfigurationProperty("profile", typeof(string), "");
		providerProp = new ConfigurationProperty("provider", typeof(string), "");
		properties = new ConfigurationPropertyCollection();
		properties.Add(customProp);
		properties.Add(eventNameProp);
		properties.Add(maxLimitProp);
		properties.Add(minInstancesProp);
		properties.Add(minIntervalProp);
		properties.Add(nameProp);
		properties.Add(profileProp);
		properties.Add(providerProp);
	}

	internal RuleSettings()
	{
	}

	public RuleSettings(string name, string eventName, string provider, string profile, int minInstances, int maxLimit, TimeSpan minInterval, string custom)
	{
		Name = name;
		EventName = eventName;
		Provider = provider;
		Profile = profile;
		MinInstances = minInstances;
		MaxLimit = maxLimit;
		MinInterval = minInterval;
		Custom = custom;
	}

	public RuleSettings(string name, string eventName, string provider, string profile, int minInstances, int maxLimit, TimeSpan minInterval)
	{
		Name = name;
		EventName = eventName;
		Provider = provider;
		Profile = profile;
		MinInstances = minInstances;
		MaxLimit = maxLimit;
		MinInterval = minInterval;
	}

	public RuleSettings(string name, string eventName, string provider)
	{
		Name = name;
		EventName = eventName;
		Provider = provider;
	}
}
