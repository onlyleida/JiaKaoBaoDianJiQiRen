using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class ClientTarget : ConfigurationElement
{
	private static ConfigurationProperty aliasProp;

	private static ConfigurationProperty userAgentProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("alias", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	[StringValidator(MinLength = 1)]
	public string Alias
	{
		get
		{
			return (string)base[aliasProp];
		}
		internal set
		{
			base[aliasProp] = value;
		}
	}

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("userAgent", Options = ConfigurationPropertyOptions.IsRequired)]
	public string UserAgent
	{
		get
		{
			return (string)base[userAgentProp];
		}
		internal set
		{
			base[userAgentProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static ClientTarget()
	{
		aliasProp = new ConfigurationProperty("alias", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		userAgentProp = new ConfigurationProperty("userAgent", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired);
		properties = new ConfigurationPropertyCollection();
		properties.Add(aliasProp);
		properties.Add(userAgentProp);
	}

	public ClientTarget(string alias, string userAgent)
	{
		Alias = alias;
		UserAgent = userAgent;
	}
}
