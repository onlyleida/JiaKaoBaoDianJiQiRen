using System.ComponentModel;
using System.Configuration;
using System.Web.SessionState;

namespace System.Web.Configuration;

public sealed class SessionStateSection : ConfigurationSection
{
	internal static readonly string DefaultSqlConnectionString;

	private static ConfigurationProperty allowCustomSqlDatabaseProp;

	private static ConfigurationProperty cookielessProp;

	private static ConfigurationProperty cookieNameProp;

	private static ConfigurationProperty customProviderProp;

	private static ConfigurationProperty modeProp;

	private static ConfigurationProperty partitionResolverTypeProp;

	private static ConfigurationProperty providersProp;

	private static ConfigurationProperty regenerateExpiredSessionIdProp;

	private static ConfigurationProperty sessionIDManagerTypeProp;

	private static ConfigurationProperty sqlCommandTimeoutProp;

	private static ConfigurationProperty sqlConnectionStringProp;

	private static ConfigurationProperty stateConnectionStringProp;

	private static ConfigurationProperty stateNetworkTimeoutProp;

	private static ConfigurationProperty timeoutProp;

	private static ConfigurationProperty useHostingIdentityProp;

	private static ConfigurationProperty compressionEnabledProp;

	private static ConfigurationProperty sqlConnectionRetryIntervalProp;

	private static ConfigurationPropertyCollection properties;

	private static ConfigurationElementProperty elementProperty;

	[ConfigurationProperty("allowCustomSqlDatabase", DefaultValue = "False")]
	public bool AllowCustomSqlDatabase
	{
		get
		{
			return (bool)base[allowCustomSqlDatabaseProp];
		}
		set
		{
			base[allowCustomSqlDatabaseProp] = value;
		}
	}

	[ConfigurationProperty("cookieless")]
	public HttpCookieMode Cookieless
	{
		get
		{
			return ParseCookieMode((string)base[cookielessProp]);
		}
		set
		{
			base[cookielessProp] = value.ToString();
		}
	}

	[ConfigurationProperty("cookieName", DefaultValue = "ASP.NET_SessionId")]
	public string CookieName
	{
		get
		{
			return (string)base[cookieNameProp];
		}
		set
		{
			base[cookieNameProp] = value;
		}
	}

	[ConfigurationProperty("customProvider", DefaultValue = "")]
	public string CustomProvider
	{
		get
		{
			return (string)base[customProviderProp];
		}
		set
		{
			base[customProviderProp] = value;
		}
	}

	[ConfigurationProperty("mode", DefaultValue = "InProc")]
	public SessionStateMode Mode
	{
		get
		{
			return (SessionStateMode)base[modeProp];
		}
		set
		{
			base[modeProp] = value;
		}
	}

	[ConfigurationProperty("partitionResolverType", DefaultValue = "")]
	public string PartitionResolverType
	{
		get
		{
			return (string)base[partitionResolverTypeProp];
		}
		set
		{
			base[partitionResolverTypeProp] = value;
		}
	}

	[ConfigurationProperty("providers")]
	public ProviderSettingsCollection Providers => (ProviderSettingsCollection)base[providersProp];

	[ConfigurationProperty("regenerateExpiredSessionId", DefaultValue = "True")]
	public bool RegenerateExpiredSessionId
	{
		get
		{
			return (bool)base[regenerateExpiredSessionIdProp];
		}
		set
		{
			base[regenerateExpiredSessionIdProp] = value;
		}
	}

	[ConfigurationProperty("sessionIDManagerType", DefaultValue = "")]
	public string SessionIDManagerType
	{
		get
		{
			return (string)base[sessionIDManagerTypeProp];
		}
		set
		{
			base[sessionIDManagerTypeProp] = value;
		}
	}

	[ConfigurationProperty("sqlCommandTimeout", DefaultValue = "00:00:30")]
	[TypeConverter(typeof(TimeSpanSecondsOrInfiniteConverter))]
	public TimeSpan SqlCommandTimeout
	{
		get
		{
			return (TimeSpan)base[sqlCommandTimeoutProp];
		}
		set
		{
			base[sqlCommandTimeoutProp] = value;
		}
	}

	[ConfigurationProperty("sqlConnectionString", DefaultValue = "data source=localhost;Integrated Security=SSPI")]
	public string SqlConnectionString
	{
		get
		{
			return (string)base[sqlConnectionStringProp];
		}
		set
		{
			base[sqlConnectionStringProp] = value;
		}
	}

	[ConfigurationProperty("stateConnectionString", DefaultValue = "tcpip=loopback:42424")]
	public string StateConnectionString
	{
		get
		{
			return (string)base[stateConnectionStringProp];
		}
		set
		{
			base[stateConnectionStringProp] = value;
		}
	}

	[ConfigurationProperty("stateNetworkTimeout", DefaultValue = "00:00:10")]
	[TypeConverter(typeof(TimeSpanSecondsOrInfiniteConverter))]
	public TimeSpan StateNetworkTimeout
	{
		get
		{
			return (TimeSpan)base[stateNetworkTimeoutProp];
		}
		set
		{
			base[stateNetworkTimeoutProp] = value;
		}
	}

	[TypeConverter(typeof(TimeSpanMinutesOrInfiniteConverter))]
	[TimeSpanValidator(MinValueString = "00:01:00", MaxValueString = "10675199.02:48:05.4775807")]
	[ConfigurationProperty("timeout", DefaultValue = "00:20:00")]
	public TimeSpan Timeout
	{
		get
		{
			return (TimeSpan)base[timeoutProp];
		}
		set
		{
			base[timeoutProp] = value;
		}
	}

	[ConfigurationProperty("useHostingIdentity", DefaultValue = "True")]
	public bool UseHostingIdentity
	{
		get
		{
			return (bool)base[useHostingIdentityProp];
		}
		set
		{
			base[useHostingIdentityProp] = value;
		}
	}

	[ConfigurationProperty("compressionEnabled", DefaultValue = false)]
	public bool CompressionEnabled
	{
		get
		{
			return (bool)base[compressionEnabledProp];
		}
		set
		{
			base[compressionEnabledProp] = value;
		}
	}

	[TypeConverter(typeof(TimeSpanSecondsOrInfiniteConverter))]
	[ConfigurationProperty("sqlConnectionRetryInterval", DefaultValue = "00:00:00")]
	public TimeSpan SqlConnectionRetryInterval
	{
		get
		{
			return (TimeSpan)base[sqlConnectionRetryIntervalProp];
		}
		set
		{
			base[sqlConnectionRetryIntervalProp] = value;
		}
	}

	protected override ConfigurationElementProperty ElementProperty
	{
		protected internal get
		{
			return elementProperty;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	internal bool CookieLess
	{
		get
		{
			return Cookieless != HttpCookieMode.UseCookies;
		}
		set
		{
			Cookieless = ((!value) ? HttpCookieMode.UseCookies : HttpCookieMode.UseUri);
		}
	}

	static SessionStateSection()
	{
		DefaultSqlConnectionString = "data source=localhost;Integrated Security=SSPI";
		allowCustomSqlDatabaseProp = new ConfigurationProperty("allowCustomSqlDatabase", typeof(bool), false);
		cookielessProp = new ConfigurationProperty("cookieless", typeof(string), null);
		cookieNameProp = new ConfigurationProperty("cookieName", typeof(string), "ASP.NET_SessionId");
		customProviderProp = new ConfigurationProperty("customProvider", typeof(string), "");
		modeProp = new ConfigurationProperty("mode", typeof(SessionStateMode), SessionStateMode.InProc, new GenericEnumConverter(typeof(SessionStateMode)), null, ConfigurationPropertyOptions.None);
		partitionResolverTypeProp = new ConfigurationProperty("partitionResolverType", typeof(string), "");
		providersProp = new ConfigurationProperty("providers", typeof(ProviderSettingsCollection), null, null, null, ConfigurationPropertyOptions.None);
		regenerateExpiredSessionIdProp = new ConfigurationProperty("regenerateExpiredSessionId", typeof(bool), true);
		sessionIDManagerTypeProp = new ConfigurationProperty("sessionIDManagerType", typeof(string), "");
		sqlCommandTimeoutProp = new ConfigurationProperty("sqlCommandTimeout", typeof(TimeSpan), TimeSpan.FromSeconds(30.0), PropertyHelper.TimeSpanSecondsOrInfiniteConverter, null, ConfigurationPropertyOptions.None);
		sqlConnectionStringProp = new ConfigurationProperty("sqlConnectionString", typeof(string), DefaultSqlConnectionString);
		stateConnectionStringProp = new ConfigurationProperty("stateConnectionString", typeof(string), "tcpip=loopback:42424");
		stateNetworkTimeoutProp = new ConfigurationProperty("stateNetworkTimeout", typeof(TimeSpan), TimeSpan.FromSeconds(10.0), PropertyHelper.TimeSpanSecondsOrInfiniteConverter, PropertyHelper.PositiveTimeSpanValidator, ConfigurationPropertyOptions.None);
		timeoutProp = new ConfigurationProperty("timeout", typeof(TimeSpan), TimeSpan.FromMinutes(20.0), PropertyHelper.TimeSpanMinutesOrInfiniteConverter, new TimeSpanValidator(new TimeSpan(0, 1, 0), TimeSpan.MaxValue), ConfigurationPropertyOptions.None);
		useHostingIdentityProp = new ConfigurationProperty("useHostingIdentity", typeof(bool), true);
		compressionEnabledProp = new ConfigurationProperty("compressionEnabled", typeof(bool), false);
		sqlConnectionRetryIntervalProp = new ConfigurationProperty("sqlConnectionRetryIntervalProp", typeof(TimeSpan), TimeSpan.FromSeconds(0.0), PropertyHelper.TimeSpanSecondsOrInfiniteConverter, PropertyHelper.PositiveTimeSpanValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(allowCustomSqlDatabaseProp);
		properties.Add(cookielessProp);
		properties.Add(cookieNameProp);
		properties.Add(customProviderProp);
		properties.Add(modeProp);
		properties.Add(partitionResolverTypeProp);
		properties.Add(providersProp);
		properties.Add(regenerateExpiredSessionIdProp);
		properties.Add(sessionIDManagerTypeProp);
		properties.Add(sqlCommandTimeoutProp);
		properties.Add(sqlConnectionStringProp);
		properties.Add(stateConnectionStringProp);
		properties.Add(stateNetworkTimeoutProp);
		properties.Add(timeoutProp);
		properties.Add(useHostingIdentityProp);
		properties.Add(compressionEnabledProp);
		properties.Add(sqlConnectionRetryIntervalProp);
		elementProperty = new ConfigurationElementProperty(new CallbackValidator(typeof(SessionStateSection), ValidateElement));
	}

	protected override void PostDeserialize()
	{
		base.PostDeserialize();
	}

	private static void ValidateElement(object o)
	{
	}

	private HttpCookieMode ParseCookieMode(string s)
	{
		if (s == "true")
		{
			return HttpCookieMode.UseUri;
		}
		if (s == "false" || s == null)
		{
			return HttpCookieMode.UseCookies;
		}
		try
		{
			return (HttpCookieMode)Enum.Parse(typeof(HttpCookieMode), s);
		}
		catch
		{
			return HttpCookieMode.UseCookies;
		}
	}
}
