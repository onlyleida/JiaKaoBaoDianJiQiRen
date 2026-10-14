using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class MembershipSection : ConfigurationSection
{
	private static ConfigurationProperty defaultProviderProp;

	private static ConfigurationProperty hashAlgorithmTypeProp;

	private static ConfigurationProperty providersProp;

	private static ConfigurationProperty userIsOnlineTimeWindowProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("defaultProvider", DefaultValue = "AspNetSqlMembershipProvider")]
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

	[ConfigurationProperty("hashAlgorithmType", DefaultValue = "")]
	public string HashAlgorithmType
	{
		get
		{
			return (string)base[hashAlgorithmTypeProp];
		}
		set
		{
			base[hashAlgorithmTypeProp] = value;
		}
	}

	[ConfigurationProperty("providers")]
	public ProviderSettingsCollection Providers => (ProviderSettingsCollection)base[providersProp];

	[TypeConverter(typeof(TimeSpanMinutesConverter))]
	[TimeSpanValidator(MinValueString = "00:01:00")]
	[ConfigurationProperty("userIsOnlineTimeWindow", DefaultValue = "00:15:00")]
	public TimeSpan UserIsOnlineTimeWindow
	{
		get
		{
			return (TimeSpan)base[userIsOnlineTimeWindowProp];
		}
		set
		{
			base[userIsOnlineTimeWindowProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static MembershipSection()
	{
		defaultProviderProp = new ConfigurationProperty("defaultProvider", typeof(string), "AspNetSqlMembershipProvider", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		hashAlgorithmTypeProp = new ConfigurationProperty("hashAlgorithmType", typeof(string), "");
		providersProp = new ConfigurationProperty("providers", typeof(ProviderSettingsCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		userIsOnlineTimeWindowProp = new ConfigurationProperty("userIsOnlineTimeWindow", typeof(TimeSpan), TimeSpan.FromMinutes(15.0), PropertyHelper.TimeSpanMinutesConverter, new TimeSpanValidator(new TimeSpan(0, 1, 0), TimeSpan.MaxValue), ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(defaultProviderProp);
		properties.Add(hashAlgorithmTypeProp);
		properties.Add(providersProp);
		properties.Add(userIsOnlineTimeWindowProp);
	}
}
