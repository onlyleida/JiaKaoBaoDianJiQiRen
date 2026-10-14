using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class AssemblyInfo : ConfigurationElement
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty assemblyProp;

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("assembly", DefaultValue = "", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
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

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static AssemblyInfo()
	{
		assemblyProp = new ConfigurationProperty("assembly", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		properties = new ConfigurationPropertyCollection();
		properties.Add(assemblyProp);
	}

	internal AssemblyInfo()
	{
	}

	public AssemblyInfo(string assemblyName)
	{
		Assembly = assemblyName;
	}
}
