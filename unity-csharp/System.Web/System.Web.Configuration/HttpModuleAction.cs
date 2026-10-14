using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class HttpModuleAction : ConfigurationElement
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty nameProp;

	private static ConfigurationProperty typeProp;

	private static ConfigurationElementProperty elementProperty;

	protected override ConfigurationElementProperty ElementProperty
	{
		protected internal get
		{
			return elementProperty;
		}
	}

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

	static HttpModuleAction()
	{
		nameProp = new ConfigurationProperty("name", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		typeProp = new ConfigurationProperty("type", typeof(string), "hoho", ConfigurationPropertyOptions.IsRequired);
		properties = new ConfigurationPropertyCollection();
		properties.Add(nameProp);
		properties.Add(typeProp);
		elementProperty = new ConfigurationElementProperty(new CallbackValidator(typeof(HttpModuleAction), ValidateElement));
	}

	internal HttpModuleAction()
	{
	}

	public HttpModuleAction(string name, string type)
	{
		Name = name;
		Type = type;
	}

	private static void ValidateElement(object o)
	{
	}
}
