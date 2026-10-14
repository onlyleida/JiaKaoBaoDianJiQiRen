using System.ComponentModel;
using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class CacheSection : ConfigurationSection
{
	private static ConfigurationProperty disableExpirationProp;

	private static ConfigurationProperty disableMemoryCollectionProp;

	private static ConfigurationProperty percentagePhysicalMemoryUsedLimitProp;

	private static ConfigurationProperty privateBytesLimitProp;

	private static ConfigurationProperty privateBytesPollTimeProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("disableExpiration", DefaultValue = "False")]
	public bool DisableExpiration
	{
		get
		{
			return (bool)base[disableExpirationProp];
		}
		set
		{
			base[disableExpirationProp] = value;
		}
	}

	[ConfigurationProperty("disableMemoryCollection", DefaultValue = "False")]
	public bool DisableMemoryCollection
	{
		get
		{
			return (bool)base[disableMemoryCollectionProp];
		}
		set
		{
			base[disableMemoryCollectionProp] = value;
		}
	}

	[IntegerValidator(MinValue = 0, MaxValue = 100)]
	[ConfigurationProperty("percentagePhysicalMemoryUsedLimit", DefaultValue = "0")]
	public int PercentagePhysicalMemoryUsedLimit
	{
		get
		{
			return (int)base[percentagePhysicalMemoryUsedLimitProp];
		}
		set
		{
			base[percentagePhysicalMemoryUsedLimitProp] = value;
		}
	}

	[LongValidator(MinValue = 0L, MaxValue = long.MaxValue)]
	[ConfigurationProperty("privateBytesLimit", DefaultValue = "0")]
	public long PrivateBytesLimit
	{
		get
		{
			return (long)base[privateBytesLimitProp];
		}
		set
		{
			base[privateBytesLimitProp] = value;
		}
	}

	[TypeConverter(typeof(InfiniteTimeSpanConverter))]
	[ConfigurationProperty("privateBytesPollTime", DefaultValue = "00:02:00")]
	public TimeSpan PrivateBytesPollTime
	{
		get
		{
			return (TimeSpan)base[privateBytesPollTimeProp];
		}
		set
		{
			base[privateBytesPollTimeProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public string DefaultProvider
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

	public ProviderSettingsCollection Providers
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	static CacheSection()
	{
		disableExpirationProp = new ConfigurationProperty("disableExpiration", typeof(bool), false);
		disableMemoryCollectionProp = new ConfigurationProperty("disableMemoryCollection", typeof(bool), false);
		percentagePhysicalMemoryUsedLimitProp = new ConfigurationProperty("percentagePhysicalMemoryUsedLimit", typeof(int), 0, TypeDescriptor.GetConverter(typeof(int)), PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		privateBytesLimitProp = new ConfigurationProperty("privateBytesLimit", typeof(long), 0L, TypeDescriptor.GetConverter(typeof(long)), new LongValidator(0L, long.MaxValue), ConfigurationPropertyOptions.None);
		privateBytesPollTimeProp = new ConfigurationProperty("privateBytesPollTime", typeof(TimeSpan), TimeSpan.FromMinutes(2.0), PropertyHelper.InfiniteTimeSpanConverter, PropertyHelper.PositiveTimeSpanValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(disableExpirationProp);
		properties.Add(disableMemoryCollectionProp);
		properties.Add(percentagePhysicalMemoryUsedLimitProp);
		properties.Add(privateBytesLimitProp);
		properties.Add(privateBytesPollTimeProp);
	}
}
