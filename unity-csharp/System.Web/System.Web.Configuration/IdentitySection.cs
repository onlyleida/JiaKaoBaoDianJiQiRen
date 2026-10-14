using System.Configuration;

namespace System.Web.Configuration;

public sealed class IdentitySection : ConfigurationSection
{
	private static ConfigurationProperty impersonateProp;

	private static ConfigurationProperty passwordProp;

	private static ConfigurationProperty userNameProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("impersonate", DefaultValue = "False")]
	public bool Impersonate
	{
		get
		{
			return (bool)base[impersonateProp];
		}
		set
		{
			base[impersonateProp] = value;
		}
	}

	[ConfigurationProperty("password", DefaultValue = "")]
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

	[ConfigurationProperty("userName", DefaultValue = "")]
	public string UserName
	{
		get
		{
			return (string)base[userNameProp];
		}
		set
		{
			base[userNameProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static IdentitySection()
	{
		impersonateProp = new ConfigurationProperty("impersonate", typeof(bool), false);
		passwordProp = new ConfigurationProperty("password", typeof(string), "");
		userNameProp = new ConfigurationProperty("userName", typeof(string), "");
		properties = new ConfigurationPropertyCollection();
		properties.Add(impersonateProp);
		properties.Add(passwordProp);
		properties.Add(userNameProp);
	}

	[MonoTODO("why override this?")]
	protected internal override object GetRuntimeObject()
	{
		return this;
	}

	protected internal override void Reset(ConfigurationElement parentElement)
	{
	}

	protected internal override void Unmerge(ConfigurationElement sourceElement, ConfigurationElement parentElement, ConfigurationSaveMode saveMode)
	{
	}
}
