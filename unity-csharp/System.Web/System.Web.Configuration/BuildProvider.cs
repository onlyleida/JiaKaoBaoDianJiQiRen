using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class BuildProvider : ConfigurationElement
{
	private static ConfigurationProperty extensionProp;

	private static ConfigurationProperty typeProp;

	private static ConfigurationPropertyCollection properties;

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("extension", DefaultValue = "", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	public string Extension
	{
		get
		{
			return (string)base[extensionProp];
		}
		set
		{
			string value2 = (string.IsNullOrEmpty(value) ? value : value.ToLowerInvariant());
			base[extensionProp] = value2;
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

	static BuildProvider()
	{
		extensionProp = new ConfigurationProperty("extension", typeof(string), "", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		typeProp = new ConfigurationProperty("type", typeof(string), "", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired);
		properties = new ConfigurationPropertyCollection();
		properties.Add(extensionProp);
		properties.Add(typeProp);
	}

	internal BuildProvider()
	{
	}

	public BuildProvider(string extension, string type)
	{
		Extension = extension;
		Type = type;
	}

	public override bool Equals(object provider)
	{
		if (!(provider is BuildProvider buildProvider))
		{
			return false;
		}
		if (Extension == buildProvider.Extension)
		{
			return Type == buildProvider.Type;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return Extension.GetHashCode() + Type.GetHashCode();
	}
}
