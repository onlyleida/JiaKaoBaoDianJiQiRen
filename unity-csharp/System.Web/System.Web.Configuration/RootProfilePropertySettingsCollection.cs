using System.Configuration;
using System.Xml;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(ProfilePropertySettings), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class RootProfilePropertySettingsCollection : ProfilePropertySettingsCollection
{
	private static ConfigurationPropertyCollection properties;

	private ProfileGroupSettingsCollection groupSettings;

	protected override bool AllowClear => true;

	[ConfigurationProperty("group")]
	public ProfileGroupSettingsCollection GroupSettings => groupSettings;

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	protected override bool ThrowOnDuplicate => true;

	static RootProfilePropertySettingsCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public RootProfilePropertySettingsCollection()
	{
		groupSettings = new ProfileGroupSettingsCollection();
	}

	public override bool Equals(object rootProfilePropertySettingsCollection)
	{
		if (!(rootProfilePropertySettingsCollection is RootProfilePropertySettingsCollection rootProfilePropertySettingsCollection2))
		{
			return false;
		}
		if (GetType() != rootProfilePropertySettingsCollection2.GetType())
		{
			return false;
		}
		if (Count != rootProfilePropertySettingsCollection2.Count)
		{
			return false;
		}
		for (int i = 0; i < Count; i++)
		{
			if (!BaseGet(i).Equals(rootProfilePropertySettingsCollection2.BaseGet(i)))
			{
				return false;
			}
		}
		return true;
	}

	public override int GetHashCode()
	{
		int num = 0;
		for (int i = 0; i < Count; i++)
		{
			num += BaseGet(i).GetHashCode();
		}
		return num;
	}

	protected override bool OnDeserializeUnrecognizedElement(string elementName, XmlReader reader)
	{
		if (elementName == "group")
		{
			ProfileGroupSettings profileGroupSettings = new ProfileGroupSettings();
			profileGroupSettings.DoDeserialize(reader);
			GroupSettings.AddNewSettings(profileGroupSettings);
			return true;
		}
		return base.OnDeserializeUnrecognizedElement(elementName, reader);
	}

	protected internal override void Unmerge(ConfigurationElement sourceElement, ConfigurationElement parentElement, ConfigurationSaveMode saveMode)
	{
		base.Unmerge(sourceElement, parentElement, saveMode);
	}

	protected internal override bool IsModified()
	{
		return base.IsModified();
	}

	protected internal override void ResetModified()
	{
		base.ResetModified();
	}

	protected internal override void Reset(ConfigurationElement parentElement)
	{
		base.Reset(parentElement);
		RootProfilePropertySettingsCollection rootProfilePropertySettingsCollection = (RootProfilePropertySettingsCollection)parentElement;
		if (rootProfilePropertySettingsCollection != null)
		{
			GroupSettings.ResetInternal(rootProfilePropertySettingsCollection.GroupSettings);
		}
	}
}
