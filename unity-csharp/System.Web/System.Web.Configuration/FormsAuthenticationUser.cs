using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class FormsAuthenticationUser : ConfigurationElement
{
	private static ConfigurationProperty nameProp;

	private static ConfigurationProperty passwordProp;

	private static ConfigurationPropertyCollection properties;

	[StringValidator]
	[TypeConverter(typeof(LowerCaseStringConverter))]
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

	[StringValidator]
	[ConfigurationProperty("password", DefaultValue = "", Options = ConfigurationPropertyOptions.IsRequired)]
	public string Password
	{
		get
		{
			return (string)base[passwordProp];
		}
		set
		{
			base[passwordProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static FormsAuthenticationUser()
	{
		nameProp = new ConfigurationProperty("name", typeof(string), "", new LowerCaseStringConverter(), PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		passwordProp = new ConfigurationProperty("password", typeof(string), "", ConfigurationPropertyOptions.IsRequired);
		properties = new ConfigurationPropertyCollection();
		properties.Add(nameProp);
		properties.Add(passwordProp);
	}

	public FormsAuthenticationUser(string name, string password)
	{
		Name = name;
		Password = password;
	}
}
