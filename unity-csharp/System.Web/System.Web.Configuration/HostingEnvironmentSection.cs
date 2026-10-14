using System.ComponentModel;
using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class HostingEnvironmentSection : ConfigurationSection
{
	private static ConfigurationProperty idleTimeoutProp;

	private static ConfigurationProperty shadowCopyBinAssembliesProp;

	private static ConfigurationProperty shutdownTimeoutProp;

	private static ConfigurationPropertyCollection properties;

	[TypeConverter(typeof(TimeSpanMinutesOrInfiniteConverter))]
	[TimeSpanValidator(MinValueString = "00:00:00", MaxValueString = "10675199.02:48:05.4775807")]
	[ConfigurationProperty("idleTimeout", DefaultValue = "10675199.02:48:05.4775807")]
	public TimeSpan IdleTimeout
	{
		get
		{
			return (TimeSpan)base[idleTimeoutProp];
		}
		set
		{
			base[idleTimeoutProp] = value;
		}
	}

	[ConfigurationProperty("shadowCopyBinAssemblies", DefaultValue = "True")]
	public bool ShadowCopyBinAssemblies
	{
		get
		{
			return (bool)base[shadowCopyBinAssembliesProp];
		}
		set
		{
			base[shadowCopyBinAssembliesProp] = value;
		}
	}

	[ConfigurationProperty("shutdownTimeout", DefaultValue = "00:00:30")]
	[TypeConverter(typeof(TimeSpanSecondsConverter))]
	[TimeSpanValidator(MinValueString = "00:00:00", MaxValueString = "10675199.02:48:05.4775807")]
	public TimeSpan ShutdownTimeout
	{
		get
		{
			return (TimeSpan)base[shutdownTimeoutProp];
		}
		set
		{
			base[shutdownTimeoutProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public TimeSpan UrlMetadataSlidingExpiration
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	static HostingEnvironmentSection()
	{
		idleTimeoutProp = new ConfigurationProperty("idleTimeout", typeof(TimeSpan), TimeSpan.MaxValue, PropertyHelper.TimeSpanMinutesOrInfiniteConverter, PropertyHelper.PositiveTimeSpanValidator, ConfigurationPropertyOptions.None);
		shadowCopyBinAssembliesProp = new ConfigurationProperty("shadowCopyBinAssemblies", typeof(bool), true);
		shutdownTimeoutProp = new ConfigurationProperty("shutdownTimeout", typeof(TimeSpan), TimeSpan.FromSeconds(30.0), PropertyHelper.TimeSpanSecondsConverter, PropertyHelper.PositiveTimeSpanValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(idleTimeoutProp);
		properties.Add(shadowCopyBinAssembliesProp);
		properties.Add(shutdownTimeoutProp);
	}
}
