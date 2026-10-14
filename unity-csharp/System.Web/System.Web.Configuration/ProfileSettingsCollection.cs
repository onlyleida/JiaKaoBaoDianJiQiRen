using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(ProfileSettings), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class ProfileSettingsCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public new ProfileSettings this[string key] => (ProfileSettings)BaseGet(key);

	public ProfileSettings this[int index]
	{
		get
		{
			return (ProfileSettings)BaseGet(index);
		}
		set
		{
			if (BaseGet(index) != null)
			{
				BaseRemoveAt(index);
			}
			BaseAdd(index, value);
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static ProfileSettingsCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(ProfileSettings profilesSettings)
	{
		BaseAdd(profilesSettings);
	}

	public void Clear()
	{
		BaseClear();
	}

	public bool Contains(string name)
	{
		return BaseGet(name) != null;
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new ProfileSettings();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((ProfileSettings)element).Name;
	}

	public int IndexOf(string name)
	{
		ProfileSettings profileSettings = (ProfileSettings)BaseGet(name);
		if (profileSettings == null)
		{
			return -1;
		}
		return BaseIndexOf(profileSettings);
	}

	[MonoTODO("why did they use 'Insert' and not 'Add' as other collections do?")]
	public void Insert(int index, ProfileSettings authorizationSettings)
	{
		BaseAdd(index, authorizationSettings);
	}

	public void Remove(string name)
	{
		BaseRemove(name);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}
}
