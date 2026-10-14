using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class ProfileSettings : ConfigurationElement
{
	private static ConfigurationProperty customProp;

	private static ConfigurationProperty maxLimitProp;

	private static ConfigurationProperty minInstancesProp;

	private static ConfigurationProperty minIntervalProp;

	private static ConfigurationProperty nameProp;

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

	[TypeConverter(typeof(InfiniteIntConverter))]
	[IntegerValidator(MinValue = 0, MaxValue = int.MaxValue)]
	[ConfigurationProperty("maxLimit", DefaultValue = int.MaxValue)]
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

	[IntegerValidator(MinValue = 1, MaxValue = int.MaxValue)]
	[ConfigurationProperty("minInstances", DefaultValue = "1")]
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

	[ConfigurationProperty("name", DefaultValue = "", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	[StringValidator(MinLength = 1)]
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

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static ProfileSettings()
	{
		customProp = new ConfigurationProperty("custom", typeof(string), "");
		maxLimitProp = new ConfigurationProperty("maxLimit", typeof(int), int.MaxValue, PropertyHelper.InfiniteIntConverter, PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		minInstancesProp = new ConfigurationProperty("minInstances", typeof(int), 1, TypeDescriptor.GetConverter(typeof(int)), new IntegerValidator(1, int.MaxValue), ConfigurationPropertyOptions.None);
		minIntervalProp = new ConfigurationProperty("minInterval", typeof(TimeSpan), TimeSpan.FromSeconds(0.0), PropertyHelper.InfiniteTimeSpanConverter, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		nameProp = new ConfigurationProperty("name", typeof(string), "", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		properties = new ConfigurationPropertyCollection();
		properties.Add(customProp);
		properties.Add(maxLimitProp);
		properties.Add(minInstancesProp);
		properties.Add(minIntervalProp);
		properties.Add(nameProp);
	}

	internal ProfileSettings()
	{
	}

	public ProfileSettings(string name)
	{
		Name = name;
	}

	public ProfileSettings(string name, int minInstances, int maxLimit, TimeSpan minInterval, string custom)
	{
		Name = name;
		MinInstances = minInstances;
		MaxLimit = maxLimit;
		MinInterval = MinInterval;
		Custom = custom;
	}

	public ProfileSettings(string name, int minInstances, int maxLimit, TimeSpan minInterval)
	{
		Name = name;
		MinInstances = minInstances;
		MaxLimit = maxLimit;
		MinInterval = MinInterval;
	}
}
