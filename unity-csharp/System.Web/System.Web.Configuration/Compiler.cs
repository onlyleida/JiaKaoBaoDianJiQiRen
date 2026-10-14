using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class Compiler : ConfigurationElement
{
	private static ConfigurationProperty compilerOptionsProp;

	private static ConfigurationProperty extensionProp;

	private static ConfigurationProperty languageProp;

	private static ConfigurationProperty typeProp;

	private static ConfigurationProperty warningLevelProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("compilerOptions", DefaultValue = "")]
	public string CompilerOptions
	{
		get
		{
			return (string)base[compilerOptionsProp];
		}
		internal set
		{
			base[compilerOptionsProp] = value;
		}
	}

	[ConfigurationProperty("extension", DefaultValue = "")]
	public string Extension
	{
		get
		{
			return (string)base[extensionProp];
		}
		internal set
		{
			base[extensionProp] = value;
		}
	}

	[ConfigurationProperty("language", DefaultValue = "", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	public string Language
	{
		get
		{
			return (string)base[languageProp];
		}
		internal set
		{
			base[languageProp] = value;
		}
	}

	[ConfigurationProperty("type", DefaultValue = "", Options = ConfigurationPropertyOptions.IsRequired)]
	public string Type
	{
		get
		{
			return (string)base[typeProp];
		}
		internal set
		{
			base[typeProp] = value;
		}
	}

	[IntegerValidator(MinValue = 0, MaxValue = 4)]
	[ConfigurationProperty("warningLevel", DefaultValue = "0")]
	public int WarningLevel
	{
		get
		{
			return (int)base[warningLevelProp];
		}
		internal set
		{
			base[warningLevelProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static Compiler()
	{
		compilerOptionsProp = new ConfigurationProperty("compilerOptions", typeof(string), "");
		extensionProp = new ConfigurationProperty("extension", typeof(string), "");
		languageProp = new ConfigurationProperty("language", typeof(string), "", ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		typeProp = new ConfigurationProperty("type", typeof(string), "", ConfigurationPropertyOptions.IsRequired);
		warningLevelProp = new ConfigurationProperty("warningLevel", typeof(int), 0, TypeDescriptor.GetConverter(typeof(int)), new IntegerValidator(0, 4), ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(compilerOptionsProp);
		properties.Add(extensionProp);
		properties.Add(languageProp);
		properties.Add(typeProp);
		properties.Add(warningLevelProp);
	}

	internal Compiler()
	{
	}

	public Compiler(string compilerOptions, string extension, string language, string type, int warningLevel)
	{
		CompilerOptions = compilerOptions;
		Extension = extension;
		Language = language;
		Type = type;
		WarningLevel = warningLevel;
	}
}
