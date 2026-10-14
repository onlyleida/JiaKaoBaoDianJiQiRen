using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class TagPrefixInfo : ConfigurationElement
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty tagPrefixProp;

	private static ConfigurationProperty namespaceProp;

	private static ConfigurationProperty assemblyProp;

	private static ConfigurationProperty tagNameProp;

	private static ConfigurationProperty sourceProp;

	private static ConfigurationElementProperty elementProperty;

	protected override ConfigurationElementProperty ElementProperty
	{
		protected internal get
		{
			return elementProperty;
		}
	}

	[ConfigurationProperty("assembly")]
	public string Assembly
	{
		get
		{
			return (string)base[assemblyProp];
		}
		set
		{
			base[assemblyProp] = value;
		}
	}

	[ConfigurationProperty("namespace")]
	public string Namespace
	{
		get
		{
			return (string)base[namespaceProp];
		}
		set
		{
			base[namespaceProp] = value;
		}
	}

	[ConfigurationProperty("src")]
	public string Source
	{
		get
		{
			return (string)base[sourceProp];
		}
		set
		{
			base[sourceProp] = value;
		}
	}

	[ConfigurationProperty("tagName")]
	public string TagName
	{
		get
		{
			return (string)base[tagNameProp];
		}
		set
		{
			base[tagNameProp] = value;
		}
	}

	[ConfigurationProperty("tagPrefix", DefaultValue = "/", Options = ConfigurationPropertyOptions.IsRequired)]
	[StringValidator(MinLength = 1)]
	public string TagPrefix
	{
		get
		{
			return (string)base[tagPrefixProp];
		}
		set
		{
			base[tagPrefixProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static TagPrefixInfo()
	{
		tagPrefixProp = new ConfigurationProperty("tagPrefix", typeof(string), "/", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired);
		namespaceProp = new ConfigurationProperty("namespace", typeof(string));
		assemblyProp = new ConfigurationProperty("assembly", typeof(string));
		tagNameProp = new ConfigurationProperty("tagName", typeof(string));
		sourceProp = new ConfigurationProperty("src", typeof(string));
		properties = new ConfigurationPropertyCollection();
		properties.Add(tagPrefixProp);
		properties.Add(namespaceProp);
		properties.Add(assemblyProp);
		properties.Add(tagNameProp);
		properties.Add(sourceProp);
		elementProperty = new ConfigurationElementProperty(new CallbackValidator(typeof(TagPrefixInfo), ValidateElement));
	}

	internal TagPrefixInfo()
	{
	}

	public TagPrefixInfo(string tagPrefix, string nameSpace, string assembly, string tagName, string source)
	{
		TagPrefix = tagPrefix;
		Namespace = nameSpace;
		Assembly = assembly;
		TagName = tagName;
		Source = source;
	}

	private static void ValidateElement(object o)
	{
	}

	public override bool Equals(object prefix)
	{
		if (!(prefix is TagPrefixInfo tagPrefixInfo))
		{
			return false;
		}
		if (Namespace == tagPrefixInfo.Namespace && Source == tagPrefixInfo.Source && TagName == tagPrefixInfo.TagName)
		{
			return TagPrefix == tagPrefixInfo.TagPrefix;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return Namespace.GetHashCode() + Source.GetHashCode() + TagName.GetHashCode() + TagPrefix.GetHashCode();
	}
}
