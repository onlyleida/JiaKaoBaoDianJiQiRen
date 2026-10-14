using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class ProfilePropertySettings : ConfigurationElement
{
	private static ConfigurationProperty allowAnonymousProp;

	private static ConfigurationProperty customProviderDataProp;

	private static ConfigurationProperty defaultValueProp;

	private static ConfigurationProperty nameProp;

	private static ConfigurationProperty providerProp;

	private static ConfigurationProperty readOnlyProp;

	private static ConfigurationProperty serializeAsProp;

	private static ConfigurationProperty typeProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("allowAnonymous", DefaultValue = false)]
	public bool AllowAnonymous
	{
		get
		{
			return (bool)base[allowAnonymousProp];
		}
		set
		{
			base[allowAnonymousProp] = value;
		}
	}

	[ConfigurationProperty("customProviderData", DefaultValue = "")]
	public string CustomProviderData
	{
		get
		{
			return (string)base[customProviderDataProp];
		}
		set
		{
			base[customProviderDataProp] = value;
		}
	}

	[ConfigurationProperty("defaultValue", DefaultValue = "")]
	public string DefaultValue
	{
		get
		{
			return (string)base[defaultValueProp];
		}
		set
		{
			base[defaultValueProp] = value;
		}
	}

	[ConfigurationProperty("name", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
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

	[ConfigurationProperty("provider", DefaultValue = "")]
	public string Provider
	{
		get
		{
			return (string)base[providerProp];
		}
		set
		{
			base[providerProp] = value;
		}
	}

	[ConfigurationProperty("readOnly", DefaultValue = false)]
	public bool ReadOnly
	{
		get
		{
			return (bool)base[readOnlyProp];
		}
		set
		{
			base[readOnlyProp] = value;
		}
	}

	[ConfigurationProperty("serializeAs", DefaultValue = "ProviderSpecific")]
	public SerializationMode SerializeAs
	{
		get
		{
			return (SerializationMode)base[serializeAsProp];
		}
		set
		{
			base[serializeAsProp] = value;
		}
	}

	[ConfigurationProperty("type", DefaultValue = "string")]
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

	static ProfilePropertySettings()
	{
		allowAnonymousProp = new ConfigurationProperty("allowAnonymous", typeof(bool), false);
		customProviderDataProp = new ConfigurationProperty("customProviderData", typeof(string), "");
		defaultValueProp = new ConfigurationProperty("defaultValue", typeof(string), "");
		nameProp = new ConfigurationProperty("name", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), new ProfilePropertyNameValidator(), ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		providerProp = new ConfigurationProperty("provider", typeof(string), "");
		readOnlyProp = new ConfigurationProperty("readOnly", typeof(bool), false);
		serializeAsProp = new ConfigurationProperty("serializeAs", typeof(SerializationMode), SerializationMode.ProviderSpecific, new GenericEnumConverter(typeof(SerializationMode)), PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		typeProp = new ConfigurationProperty("type", typeof(string), "string");
		properties = new ConfigurationPropertyCollection();
		properties.Add(allowAnonymousProp);
		properties.Add(customProviderDataProp);
		properties.Add(defaultValueProp);
		properties.Add(nameProp);
		properties.Add(providerProp);
		properties.Add(readOnlyProp);
		properties.Add(serializeAsProp);
		properties.Add(typeProp);
	}

	internal ProfilePropertySettings()
	{
	}

	public ProfilePropertySettings(string name)
	{
		Name = name;
	}

	public ProfilePropertySettings(string name, bool readOnly, SerializationMode serializeAs, string providerName, string defaultValue, string profileType, bool allowAnonymous, string customProviderData)
	{
		Name = name;
		ReadOnly = readOnly;
		SerializeAs = serializeAs;
		Provider = providerName;
		DefaultValue = defaultValue;
		Type = profileType;
		AllowAnonymous = allowAnonymous;
		CustomProviderData = customProviderData;
	}
}
