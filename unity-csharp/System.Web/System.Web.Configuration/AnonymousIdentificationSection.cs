using System.ComponentModel;
using System.Configuration;
using System.Web.Security;

namespace System.Web.Configuration;

public sealed class AnonymousIdentificationSection : ConfigurationSection
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty enabledProp;

	private static ConfigurationProperty cookielessProp;

	private static ConfigurationProperty cookieNameProp;

	private static ConfigurationProperty cookieTimeoutProp;

	private static ConfigurationProperty cookiePathProp;

	private static ConfigurationProperty cookieRequireSSLProp;

	private static ConfigurationProperty cookieSlidingExpirationProp;

	private static ConfigurationProperty cookieProtectionProp;

	private static ConfigurationProperty domainProp;

	[ConfigurationProperty("cookieless", DefaultValue = "UseCookies")]
	public HttpCookieMode Cookieless
	{
		get
		{
			return (HttpCookieMode)base[cookielessProp];
		}
		set
		{
			base[cookielessProp] = value;
		}
	}

	[ConfigurationProperty("cookieName", DefaultValue = ".ASPXANONYMOUS")]
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

	[ConfigurationProperty("cookiePath", DefaultValue = "/")]
	[StringValidator(MinLength = 1)]
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

	[ConfigurationProperty("cookieProtection", DefaultValue = "Validation")]
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

	[ConfigurationProperty("cookieRequireSSL", DefaultValue = "False")]
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

	[ConfigurationProperty("cookieSlidingExpiration", DefaultValue = "True")]
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
	[ConfigurationProperty("cookieTimeout", DefaultValue = "69.10:40:00")]
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

	[ConfigurationProperty("enabled", DefaultValue = "False")]
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

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static AnonymousIdentificationSection()
	{
		enabledProp = new ConfigurationProperty("enabled", typeof(bool), false);
		cookielessProp = new ConfigurationProperty("cookieless", typeof(HttpCookieMode), HttpCookieMode.UseCookies, new GenericEnumConverter(typeof(HttpCookieMode)), PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		cookieNameProp = new ConfigurationProperty("cookieName", typeof(string), ".ASPXANONYMOUS", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		cookieTimeoutProp = new ConfigurationProperty("cookieTimeout", typeof(TimeSpan), new TimeSpan(69, 10, 40, 0), new TimeSpanMinutesOrInfiniteConverter(), PropertyHelper.PositiveTimeSpanValidator, ConfigurationPropertyOptions.None);
		cookiePathProp = new ConfigurationProperty("cookiePath", typeof(string), "/", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		cookieRequireSSLProp = new ConfigurationProperty("cookieRequireSSL", typeof(bool), false);
		cookieSlidingExpirationProp = new ConfigurationProperty("cookieSlidingExpiration", typeof(bool), true);
		cookieProtectionProp = new ConfigurationProperty("cookieProtection", typeof(CookieProtection), CookieProtection.Validation, new GenericEnumConverter(typeof(CookieProtection)), null, ConfigurationPropertyOptions.None);
		domainProp = new ConfigurationProperty("domain", typeof(string), null);
		properties = new ConfigurationPropertyCollection();
		properties.Add(enabledProp);
		properties.Add(cookielessProp);
		properties.Add(cookieNameProp);
		properties.Add(cookieTimeoutProp);
		properties.Add(cookiePathProp);
		properties.Add(cookieRequireSSLProp);
		properties.Add(cookieSlidingExpirationProp);
		properties.Add(cookieProtectionProp);
		properties.Add(domainProp);
	}
}
