using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class BufferModeSettings : ConfigurationElement
{
	private static ConfigurationProperty maxBufferSizeProp;

	private static ConfigurationProperty maxBufferThreadsProp;

	private static ConfigurationProperty maxFlushSizeProp;

	private static ConfigurationProperty nameProp;

	private static ConfigurationProperty regularFlushIntervalProp;

	private static ConfigurationProperty urgentFlushIntervalProp;

	private static ConfigurationProperty urgentFlushThresholdProp;

	private static ConfigurationPropertyCollection properties;

	private static ConfigurationElementProperty elementProperty;

	protected override ConfigurationElementProperty ElementProperty
	{
		protected internal get
		{
			return elementProperty;
		}
	}

	[TypeConverter(typeof(InfiniteIntConverter))]
	[ConfigurationProperty("maxBufferSize", DefaultValue = "2147483647", Options = ConfigurationPropertyOptions.IsRequired)]
	[IntegerValidator(MinValue = 1, MaxValue = int.MaxValue)]
	public int MaxBufferSize
	{
		get
		{
			return (int)base[maxBufferSizeProp];
		}
		set
		{
			base[maxBufferSizeProp] = value;
		}
	}

	[ConfigurationProperty("maxBufferThreads", DefaultValue = "1")]
	[IntegerValidator(MinValue = 1, MaxValue = int.MaxValue)]
	[TypeConverter(typeof(InfiniteIntConverter))]
	public int MaxBufferThreads
	{
		get
		{
			return (int)base[maxBufferThreadsProp];
		}
		set
		{
			base[maxBufferThreadsProp] = value;
		}
	}

	[ConfigurationProperty("maxFlushSize", DefaultValue = "2147483647", Options = ConfigurationPropertyOptions.IsRequired)]
	[IntegerValidator(MinValue = 1, MaxValue = int.MaxValue)]
	[TypeConverter(typeof(InfiniteIntConverter))]
	public int MaxFlushSize
	{
		get
		{
			return (int)base[maxFlushSizeProp];
		}
		set
		{
			base[maxFlushSizeProp] = value;
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

	[TypeConverter(typeof(InfiniteTimeSpanConverter))]
	[TimeSpanValidator(MinValueString = "00:00:00", MaxValueString = "10675199.02:48:05.4775807")]
	[ConfigurationProperty("regularFlushInterval", DefaultValue = "00:00:01", Options = ConfigurationPropertyOptions.IsRequired)]
	public TimeSpan RegularFlushInterval
	{
		get
		{
			return (TimeSpan)base[regularFlushIntervalProp];
		}
		set
		{
			base[regularFlushIntervalProp] = value;
		}
	}

	[TypeConverter(typeof(InfiniteTimeSpanConverter))]
	[ConfigurationProperty("urgentFlushInterval", DefaultValue = "00:00:00", Options = ConfigurationPropertyOptions.IsRequired)]
	public TimeSpan UrgentFlushInterval
	{
		get
		{
			return (TimeSpan)base[urgentFlushIntervalProp];
		}
		set
		{
			base[urgentFlushIntervalProp] = value;
		}
	}

	[IntegerValidator(MinValue = 1, MaxValue = int.MaxValue)]
	[ConfigurationProperty("urgentFlushThreshold", DefaultValue = "2147483647", Options = ConfigurationPropertyOptions.IsRequired)]
	[TypeConverter(typeof(InfiniteIntConverter))]
	public int UrgentFlushThreshold
	{
		get
		{
			return (int)base[urgentFlushThresholdProp];
		}
		set
		{
			base[urgentFlushThresholdProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static BufferModeSettings()
	{
		IntegerValidator validator = new IntegerValidator(1, int.MaxValue);
		maxBufferSizeProp = new ConfigurationProperty("maxBufferSize", typeof(int), int.MaxValue, PropertyHelper.InfiniteIntConverter, validator, ConfigurationPropertyOptions.IsRequired);
		maxBufferThreadsProp = new ConfigurationProperty("maxBufferThreads", typeof(int), 1, PropertyHelper.InfiniteIntConverter, validator, ConfigurationPropertyOptions.None);
		maxFlushSizeProp = new ConfigurationProperty("maxFlushSize", typeof(int), int.MaxValue, PropertyHelper.InfiniteIntConverter, validator, ConfigurationPropertyOptions.IsRequired);
		nameProp = new ConfigurationProperty("name", typeof(string), "", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		regularFlushIntervalProp = new ConfigurationProperty("regularFlushInterval", typeof(TimeSpan), TimeSpan.FromSeconds(1.0), PropertyHelper.InfiniteTimeSpanConverter, PropertyHelper.PositiveTimeSpanValidator, ConfigurationPropertyOptions.IsRequired);
		urgentFlushIntervalProp = new ConfigurationProperty("urgentFlushInterval", typeof(TimeSpan), TimeSpan.FromSeconds(0.0), PropertyHelper.InfiniteTimeSpanConverter, null, ConfigurationPropertyOptions.IsRequired);
		urgentFlushThresholdProp = new ConfigurationProperty("urgentFlushThreshold", typeof(int), int.MaxValue, PropertyHelper.InfiniteIntConverter, validator, ConfigurationPropertyOptions.IsRequired);
		properties = new ConfigurationPropertyCollection();
		properties.Add(nameProp);
		properties.Add(maxBufferSizeProp);
		properties.Add(maxBufferThreadsProp);
		properties.Add(maxFlushSizeProp);
		properties.Add(regularFlushIntervalProp);
		properties.Add(urgentFlushIntervalProp);
		properties.Add(urgentFlushThresholdProp);
		elementProperty = new ConfigurationElementProperty(new CallbackValidator(typeof(BufferModeSettings), ValidateElement));
	}

	internal BufferModeSettings()
	{
	}

	public BufferModeSettings(string name, int maxBufferSize, int maxFlushSize, int urgentFlushThreshold, TimeSpan regularFlushInterval, TimeSpan urgentFlushInterval, int maxBufferThreads)
	{
		Name = name;
		MaxBufferSize = maxBufferSize;
		MaxFlushSize = maxFlushSize;
		UrgentFlushThreshold = urgentFlushThreshold;
		RegularFlushInterval = regularFlushInterval;
		UrgentFlushInterval = urgentFlushInterval;
		MaxBufferThreads = maxBufferThreads;
	}

	[MonoTODO("Should do some validation here")]
	private static void ValidateElement(object o)
	{
	}
}
