using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class EventMappingSettings : ConfigurationElement
{
	private static ConfigurationProperty endEventCodeProp;

	private static ConfigurationProperty nameProp;

	private static ConfigurationProperty startEventCodeProp;

	private static ConfigurationProperty typeProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("endEventCode", DefaultValue = "2147483647")]
	[IntegerValidator(MinValue = 0, MaxValue = int.MaxValue)]
	public int EndEventCode
	{
		get
		{
			return (int)base[endEventCodeProp];
		}
		set
		{
			base[endEventCodeProp] = value;
		}
	}

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

	[ConfigurationProperty("startEventCode", DefaultValue = "0")]
	[IntegerValidator(MinValue = 0, MaxValue = int.MaxValue)]
	public int StartEventCode
	{
		get
		{
			return (int)base[startEventCodeProp];
		}
		set
		{
			base[startEventCodeProp] = value;
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

	static EventMappingSettings()
	{
		endEventCodeProp = new ConfigurationProperty("endEventCode", typeof(int), int.MaxValue, TypeDescriptor.GetConverter(typeof(int)), PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		nameProp = new ConfigurationProperty("name", typeof(string), "", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		startEventCodeProp = new ConfigurationProperty("startEventCode", typeof(int), 0, TypeDescriptor.GetConverter(typeof(int)), PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		typeProp = new ConfigurationProperty("type", typeof(string), "", ConfigurationPropertyOptions.IsRequired);
		properties = new ConfigurationPropertyCollection();
		properties.Add(endEventCodeProp);
		properties.Add(nameProp);
		properties.Add(startEventCodeProp);
		properties.Add(typeProp);
	}

	internal EventMappingSettings()
	{
	}

	public EventMappingSettings(string name, string type)
	{
		Name = name;
		Type = type;
	}

	public EventMappingSettings(string name, string type, int startEventCode, int endEventCode)
	{
		Name = name;
		Type = type;
		StartEventCode = startEventCode;
		EndEventCode = endEventCode;
	}
}
