using System.Collections.Specialized;

namespace System.Configuration;

public sealed class ProviderSettings : ConfigurationElement
{
	private ConfigNameValueCollection parameters;

	private static ConfigurationProperty nameProp;

	private static ConfigurationProperty typeProp;

	private static ConfigurationPropertyCollection properties;

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

	[ConfigurationProperty("type", Options = ConfigurationPropertyOptions.IsRequired)]
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

	protected internal override ConfigurationPropertyCollection Properties => properties;

	public NameValueCollection Parameters
	{
		get
		{
			if (parameters == null)
			{
				parameters = new ConfigNameValueCollection();
			}
			return parameters;
		}
	}

	static ProviderSettings()
	{
		nameProp = new ConfigurationProperty("name", typeof(string), null, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		typeProp = new ConfigurationProperty("type", typeof(string), null, ConfigurationPropertyOptions.IsRequired);
		properties = new ConfigurationPropertyCollection();
		properties.Add(nameProp);
		properties.Add(typeProp);
	}

	public ProviderSettings()
	{
	}

	public ProviderSettings(string name, string type)
	{
		Name = name;
		Type = type;
	}

	protected override bool OnDeserializeUnrecognizedAttribute(string name, string value)
	{
		if (parameters == null)
		{
			parameters = new ConfigNameValueCollection();
		}
		parameters[name] = value;
		parameters.ResetModified();
		return true;
	}

	protected internal override bool IsModified()
	{
		if (parameters == null || !parameters.IsModified)
		{
			return base.IsModified();
		}
		return true;
	}

	protected internal override void Reset(ConfigurationElement parentElement)
	{
		base.Reset(parentElement);
		if (parentElement is ProviderSettings { parameters: not null } providerSettings)
		{
			parameters = new ConfigNameValueCollection(providerSettings.parameters);
		}
		else
		{
			parameters = null;
		}
	}

	[MonoTODO]
	protected internal override void Unmerge(ConfigurationElement sourceElement, ConfigurationElement parentElement, ConfigurationSaveMode saveMode)
	{
		base.Unmerge(sourceElement, parentElement, saveMode);
	}
}
