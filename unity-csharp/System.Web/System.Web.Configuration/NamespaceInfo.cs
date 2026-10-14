using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class NamespaceInfo : ConfigurationElement
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty namespaceProp;

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("namespace", DefaultValue = "", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
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

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static NamespaceInfo()
	{
		namespaceProp = new ConfigurationProperty("namespace", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(namespaceProp);
	}

	public NamespaceInfo(string name)
	{
		Namespace = name;
	}

	public override bool Equals(object namespaceInformation)
	{
		if (!(namespaceInformation is NamespaceInfo namespaceInfo))
		{
			return false;
		}
		return Namespace == namespaceInfo.Namespace;
	}

	public override int GetHashCode()
	{
		return Namespace.GetHashCode();
	}
}
