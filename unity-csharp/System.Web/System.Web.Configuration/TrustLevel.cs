using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class TrustLevel : ConfigurationElement
{
	private static ConfigurationProperty nameProp;

	private static ConfigurationProperty policyFileProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("name", DefaultValue = "Full", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	[StringValidator(MinLength = 1)]
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

	[ConfigurationProperty("policyFile", DefaultValue = "internal", Options = ConfigurationPropertyOptions.IsRequired)]
	public string PolicyFile
	{
		get
		{
			return (string)base[policyFileProp];
		}
		set
		{
			base[policyFileProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static TrustLevel()
	{
		nameProp = new ConfigurationProperty("name", typeof(string), "Full", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		policyFileProp = new ConfigurationProperty("policyFile", typeof(string), "internal", ConfigurationPropertyOptions.IsRequired);
		properties = new ConfigurationPropertyCollection();
		properties.Add(nameProp);
		properties.Add(policyFileProp);
	}

	internal TrustLevel()
	{
	}

	public TrustLevel(string name, string policyFile)
	{
		Name = name;
		PolicyFile = policyFile;
	}
}
