using System.ComponentModel;
using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class FormsAuthenticationConfiguration : ConfigurationElement
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty cookielessProp;

	private static ConfigurationProperty credentialsProp;

	private static ConfigurationProperty defaultUrlProp;

	private static ConfigurationProperty domainProp;

	private static ConfigurationProperty enableCrossAppRedirectsProp;

	private static ConfigurationProperty loginUrlProp;

	private static ConfigurationProperty nameProp;

	private static ConfigurationProperty pathProp;

	private static ConfigurationProperty protectionProp;

	private static ConfigurationProperty requireSSLProp;

	private static ConfigurationProperty slidingExpirationProp;

	private static ConfigurationProperty timeoutProp;

	private static ConfigurationElementProperty elementProperty;

	protected override ConfigurationElementProperty ElementProperty
	{
		protected internal get
		{
			return elementProperty;
		}
	}

	[ConfigurationProperty("cookieless", DefaultValue = "UseDeviceProfile")]
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

	[ConfigurationProperty("credentials")]
	public FormsAuthenticationCredentials Credentials => (FormsAuthenticationCredentials)base[credentialsProp];

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("defaultUrl", DefaultValue = "default.aspx")]
	public string DefaultUrl
	{
		get
		{
			return (string)base[defaultUrlProp];
		}
		set
		{
			base[defaultUrlProp] = value;
		}
	}

	[ConfigurationProperty("domain", DefaultValue = "")]
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

	[ConfigurationProperty("enableCrossAppRedirects", DefaultValue = "False")]
	public bool EnableCrossAppRedirects
	{
		get
		{
			return (bool)base[enableCrossAppRedirectsProp];
		}
		set
		{
			base[enableCrossAppRedirectsProp] = value;
		}
	}

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("loginUrl", DefaultValue = "login.aspx")]
	public string LoginUrl
	{
		get
		{
			return (string)base[loginUrlProp];
		}
		set
		{
			base[loginUrlProp] = value;
		}
	}

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("name", DefaultValue = ".ASPXAUTH")]
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

	[ConfigurationProperty("path", DefaultValue = "/")]
	[StringValidator(MinLength = 1)]
	public string Path
	{
		get
		{
			return (string)base[pathProp];
		}
		set
		{
			base[pathProp] = value;
		}
	}

	[ConfigurationProperty("protection", DefaultValue = "All")]
	public FormsProtectionEnum Protection
	{
		get
		{
			return (FormsProtectionEnum)base[protectionProp];
		}
		set
		{
			base[protectionProp] = value;
		}
	}

	[ConfigurationProperty("requireSSL", DefaultValue = "False")]
	public bool RequireSSL
	{
		get
		{
			return (bool)base[requireSSLProp];
		}
		set
		{
			base[requireSSLProp] = value;
		}
	}

	[ConfigurationProperty("slidingExpiration", DefaultValue = "True")]
	public bool SlidingExpiration
	{
		get
		{
			return (bool)base[slidingExpirationProp];
		}
		set
		{
			base[slidingExpirationProp] = value;
		}
	}

	[TypeConverter(typeof(TimeSpanMinutesConverter))]
	[TimeSpanValidator(MinValueString = "00:01:00")]
	[ConfigurationProperty("timeout", DefaultValue = "00:30:00")]
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

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public TicketCompatibilityMode TicketCompatibilityMode
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

	static FormsAuthenticationConfiguration()
	{
		cookielessProp = new ConfigurationProperty("cookieless", typeof(HttpCookieMode), HttpCookieMode.UseDeviceProfile, new GenericEnumConverter(typeof(HttpCookieMode)), PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		credentialsProp = new ConfigurationProperty("credentials", typeof(FormsAuthenticationCredentials), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		defaultUrlProp = new ConfigurationProperty("defaultUrl", typeof(string), "default.aspx", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		domainProp = new ConfigurationProperty("domain", typeof(string), "");
		enableCrossAppRedirectsProp = new ConfigurationProperty("enableCrossAppRedirects", typeof(bool), false);
		loginUrlProp = new ConfigurationProperty("loginUrl", typeof(string), "login.aspx", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		nameProp = new ConfigurationProperty("name", typeof(string), ".ASPXAUTH", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		pathProp = new ConfigurationProperty("path", typeof(string), "/", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		protectionProp = new ConfigurationProperty("protection", typeof(FormsProtectionEnum), FormsProtectionEnum.All, new GenericEnumConverter(typeof(FormsProtectionEnum)), PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		requireSSLProp = new ConfigurationProperty("requireSSL", typeof(bool), false);
		slidingExpirationProp = new ConfigurationProperty("slidingExpiration", typeof(bool), true);
		timeoutProp = new ConfigurationProperty("timeout", typeof(TimeSpan), TimeSpan.FromMinutes(30.0), PropertyHelper.TimeSpanMinutesConverter, new TimeSpanValidator(new TimeSpan(0, 1, 0), TimeSpan.MaxValue), ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(cookielessProp);
		properties.Add(credentialsProp);
		properties.Add(defaultUrlProp);
		properties.Add(domainProp);
		properties.Add(enableCrossAppRedirectsProp);
		properties.Add(loginUrlProp);
		properties.Add(nameProp);
		properties.Add(pathProp);
		properties.Add(protectionProp);
		properties.Add(requireSSLProp);
		properties.Add(slidingExpirationProp);
		properties.Add(timeoutProp);
		elementProperty = new ConfigurationElementProperty(new CallbackValidator(typeof(FormsAuthenticationConfiguration), ValidateElement));
	}

	private static void ValidateElement(object o)
	{
	}
}
