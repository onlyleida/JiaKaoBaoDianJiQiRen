using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class CodeSubDirectory : ConfigurationElement
{
	private static ConfigurationProperty directoryNameProp;

	private static ConfigurationPropertyCollection properties;

	[TypeConverter(typeof(WhiteSpaceTrimStringConverter))]
	[ConfigurationProperty("directoryName", DefaultValue = "", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	public string DirectoryName
	{
		get
		{
			return (string)base[directoryNameProp];
		}
		set
		{
			base[directoryNameProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static CodeSubDirectory()
	{
		directoryNameProp = new ConfigurationProperty("directoryName", typeof(string), "", PropertyHelper.WhiteSpaceTrimStringConverter, PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		properties = new ConfigurationPropertyCollection();
		properties.Add(directoryNameProp);
	}

	public CodeSubDirectory(string directoryName)
	{
		DirectoryName = directoryName;
	}
}
