using System.ComponentModel;
using System.Configuration;
using System.Web.Security;

namespace System.Web.Configuration;

public sealed class RoleManagerSection : ConfigurationSection
{
	private static ConfigurationProperty cacheRolesInCookieProp;

	private static ConfigurationProperty cookieNameProp;

	private static ConfigurationProperty cookiePathProp;

	private static ConfigurationProperty cookieProtectionProp;

	private static ConfigurationProperty cookieRequireSSLProp;

	private static ConfigurationProperty cookieSlidingExpirationProp;

	private static ConfigurationProperty cookieTimeoutProp;

	private static ConfigurationProperty createPersistentCookieProp;

	private static ConfigurationProperty defaultProviderProp;

	private static ConfigurationProperty domainProp;

	private static ConfigurationProperty enabledProp;

	private static ConfigurationProperty maxCachedResultsProp;

	private static ConfigurationProperty providersProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("cacheRolesInCookie", DefaultValue = false)]
	public bool CacheRolesInCookie
	{
		get
		{
			return (bool)base[cacheRolesInCookieProp];
		}
		set
		{
			base[cacheRolesInCookieProp] = value;
		}
	}

	[ConfigurationProperty("cookieName", DefaultValue = ".ASPXROLES")]
	[TypeConverter(typeof(WhiteSpaceTrimStringConverter))]
	[StringValidator(MinLength = 1)]
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

	[TypeConverter(typeof(WhiteSpaceTrimStringConverter))]
	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("cookiePath", DefaultValue = "/")]
	public string CookiePath
	{
		get
		{
			return (string)base[cookiePathProp];
		}
		set
		{
			base[cookiePathProp] = value;
		}
	}

	[ConfigurationProperty("cookieProtection", DefaultValue = "All")]
	public CookieProtection CookieProtection
	{
		get
		{
			return (CookieProtection)base[cookieProtectionProp];
		}
		set
		{
			base[cookieProtectionProp] = value;
		}
	}

	[ConfigurationProperty("cookieRequireSSL", DefaultValue = false)]
	public bool CookieRequireSSL
	{
		get
		{
			return (bool)base[cookieRequireSSLProp];
		}
		set
		{
			base[cookieRequireSSLProp] = value;
		}
	}

	[ConfigurationProperty("cookieSlidingExpiration", DefaultValue = true)]
	public bool CookieSlidingExpiration
	{
		get
		{
			return (bool)base[cookieSlidingExpirationProp];
		}
		set
		{
			base[cookieSlidingExpirationProp] = value;
		}
	}

	[TypeConverter(typeof(TimeSpanMinutesOrInfiniteConverter))]
	[ConfigurationProperty("cookieTimeout", DefaultValue = "00:30:00")]
	[TimeSpanValidator(MinValueString = "00:00:00", MaxValueString = "10675199.02:48:05.4775807")]
	public TimeSpan CookieTimeout
	{
		get
		{
			return (TimeSpan)base[cookieTimeoutProp];
		}
		set
		{
			base[cookieTimeoutProp] = value;
		}
	}

	[ConfigurationProperty("createPersistentCookie", DefaultValue = false)]
	public bool CreatePersistentCookie
	{
		get
		{
			return (bool)base[createPersistentCookieProp];
		}
		set
		{
			base[createPersistentCookieProp] = value;
		}
	}

	[TypeConverter(typeof(WhiteSpaceTrimStringConverter))]
	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("defaultProvider", DefaultValue = "AspNetSqlRoleProvider")]
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

	[ConfigurationProperty("domain")]
	public string Domain
	{
		get
		{
			return (string)base[domainProp];
		}
		set
		{
			base[domainProp] = value;
		}
	}

	[ConfigurationProperty("enabled", DefaultValue = false)]
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

	[ConfigurationProperty("maxCachedResults", DefaultValue = 25)]
	public int MaxCachedResults
	{
		get
		{
			return (int)base[maxCachedResultsProp];
		}
		set
		{
			base[maxCachedResultsProp] = value;
		}
	}

	[ConfigurationProperty("providers")]
	public ProviderSettingsCollection Providers => (ProviderSettingsCollection)base[providersProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static RoleManagerSection()
	{
		cacheRolesInCookieProp = new ConfigurationProperty("cacheRolesInCookie", typeof(bool), false);
		cookieNameProp = new ConfigurationProperty("cookieName", typeof(string), ".ASPXROLES");
		cookiePathProp = new ConfigurationProperty("cookiePath", typeof(string), "/");
		cookieProtectionProp = new ConfigurationProperty("cookieProtection", typeof(CookieProtection), CookieProtection.All);
		cookieRequireSSLProp = new ConfigurationProperty("cookieRequireSSL", typeof(bool), false);
		cookieSlidingExpirationProp = new ConfigurationProperty("cookieSlidingExpiration", typeof(bool), true);
		cookieTimeoutProp = new ConfigurationProperty("cookieTimeout", typeof(TimeSpan), TimeSpan.FromMinutes(30.0), PropertyHelper.TimeSpanMinutesOrInfiniteConverter, PropertyHelper.PositiveTimeSpanValidator, ConfigurationPropertyOptions.None);
		createPersistentCookieProp = new ConfigurationProperty("createPersistentCookie", typeof(bool), false);
		defaultProviderProp = new ConfigurationProperty("defaultProvider", typeof(string), "AspNetSqlRoleProvider");
		domainProp = new ConfigurationProperty("domain", typeof(string), "");
		enabledProp = new ConfigurationProperty("enabled", typeof(bool), false);
		maxCachedResultsProp = new ConfigurationProperty("maxCachedResults", typeof(int), 25);
		providersProp = new ConfigurationProperty("providers", typeof(ProviderSettingsCollection));
		properties = new ConfigurationPropertyCollection();
		properties.Add(cacheRolesInCookieProp);
		properties.Add(cookieNameProp);
		properties.Add(cookiePathProp);
		properties.Add(cookieProtectionProp);
		properties.Add(cookieRequireSSLProp);
		properties.Add(cookieSlidingExpirationProp);
		properties.Add(cookieTimeoutProp);
		properties.Add(createPersistentCookieProp);
		properties.Add(defaultProviderProp);
		properties.Add(domainProp);
		properties.Add(enabledProp);
		properties.Add(maxCachedResultsProp);
		properties.Add(providersProp);
	}
}
