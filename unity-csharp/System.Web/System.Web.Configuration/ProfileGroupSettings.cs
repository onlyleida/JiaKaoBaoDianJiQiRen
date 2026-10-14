using System.Configuration;
using System.Xml;

namespace System.Web.Configuration;

public sealed class ProfileGroupSettings : ConfigurationElement
{
	private static ConfigurationProperty propertySettingsProp;

	private static ConfigurationProperty nameProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("name", IsRequired = true, IsKey = true)]
	public string Name
	{
		get
		{
			return (string)base[nameProp];
		}
		internal set
		{
			base[nameProp] = value;
		}
	}

	[ConfigurationProperty("", Options = ConfigurationPropertyOptions.IsDefaultCollection)]
	public ProfilePropertySettingsCollection PropertySettings => (ProfilePropertySettingsCollection)base[propertySettingsProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static ProfileGroupSettings()
	{
		propertySettingsProp = new ConfigurationProperty(null, typeof(ProfilePropertySettingsCollection), null, null, null, ConfigurationPropertyOptions.IsDefaultCollection);
		nameProp = new ConfigurationProperty("name", typeof(string), null, null, PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		properties = new ConfigurationPropertyCollection();
		properties.Add(propertySettingsProp);
		properties.Add(nameProp);
	}

	internal ProfileGroupSettings()
	{
	}

	public ProfileGroupSettings(string name)
	{
		Name = name;
	}

	public override bool Equals(object obj)
	{
		if (!(obj is ProfileGroupSettings profileGroupSettings))
		{
			return false;
		}
		if (GetType() != profileGroupSettings.GetType())
		{
			return false;
		}
		return Name.Equals(profileGroupSettings.Name);
	}

	public override int GetHashCode()
	{
		return Name.GetHashCode();
	}

	internal void DoDeserialize(XmlReader reader)
	{
		DeserializeElement(reader, serializeCollectionKey: false);
	}
}
