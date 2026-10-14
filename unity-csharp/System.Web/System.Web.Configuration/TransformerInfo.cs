using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class TransformerInfo : ConfigurationElement
{
	private static ConfigurationProperty nameProp;

	private static ConfigurationProperty typeProp;

	private static ConfigurationPropertyCollection properties;

	[StringValidator(MinLength = 1)]
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

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("type", DefaultValue = "", Options = ConfigurationPropertyOptions.IsRequired)]
	public string Type
	{
		get
		{
			return (string)base[typeProp];
		}
		set
		{
			base[typeProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static TransformerInfo()
	{
		nameProp = new ConfigurationProperty("name", typeof(string), "", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		typeProp = new ConfigurationProperty("type", typeof(string), "", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired);
		properties = new ConfigurationPropertyCollection();
		properties.Add(nameProp);
		properties.Add(typeProp);
	}

	public TransformerInfo(string name, string type)
	{
		Name = name;
		Type = type;
	}

	public override bool Equals(object o)
	{
		TransformerInfo transformerInfo = o as TransformerInfo;
		if (Name == transformerInfo.Name)
		{
			return Type == transformerInfo.Type;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return Name.GetHashCode() + Type.GetHashCode();
	}
}
