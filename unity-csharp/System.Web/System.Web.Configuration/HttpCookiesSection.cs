using System.Configuration;

namespace System.Web.Configuration;

public sealed class HttpCookiesSection : ConfigurationSection
{
	private static ConfigurationProperty domainProp;

	private static ConfigurationProperty httpOnlyCookiesProp;

	private static ConfigurationProperty requireSSLProp;

	private static ConfigurationPropertyCollection properties;

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

	[ConfigurationProperty("httpOnlyCookies", DefaultValue = "False")]
	public bool HttpOnlyCookies
	{
		get
		{
			return (bool)base[httpOnlyCookiesProp];
		}
		set
		{
			base[httpOnlyCookiesProp] = value;
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

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static HttpCookiesSection()
	{
		domainProp = new ConfigurationProperty("domain", typeof(string), "");
		httpOnlyCookiesProp = new ConfigurationProperty("httpOnlyCookies", typeof(bool), false);
		requireSSLProp = new ConfigurationProperty("requireSSL", typeof(bool), false);
		properties = new ConfigurationPropertyCollection();
		properties.Add(domainProp);
		properties.Add(httpOnlyCookiesProp);
		properties.Add(requireSSLProp);
	}
}
