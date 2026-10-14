using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(ProfileGroupSettings), AddItemName = "group", CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class ProfileGroupSettingsCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public string[] AllKeys
	{
		get
		{
			string[] array = new string[Count];
			for (int i = 0; i < Count; i++)
			{
				array[i] = this[i].Name;
			}
			return array;
		}
	}

	public ProfileGroupSettings this[int index]
	{
		get
		{
			return Get(index);
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

	public new ProfileGroupSettings this[string name] => (ProfileGroupSettings)BaseGet(name);

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static ProfileGroupSettingsCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(ProfileGroupSettings group)
	{
		BaseAdd(group);
	}

	protected internal override bool IsModified()
	{
		return base.IsModified();
	}

	protected internal override void ResetModified()
	{
		base.ResetModified();
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new ProfileGroupSettings();
	}

	public ProfileGroupSettings Get(int index)
	{
		return (ProfileGroupSettings)BaseGet(index);
	}

	public ProfileGroupSettings Get(string name)
	{
		return (ProfileGroupSettings)BaseGet(name);
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((ProfileGroupSettings)element).Name;
	}

	public string GetKey(int index)
	{
		return (string)BaseGetKey(index);
	}

	public int IndexOf(ProfileGroupSettings group)
	{
		return BaseIndexOf(group);
	}

	public void Remove(string name)
	{
		BaseRemove(name);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}

	public void Set(ProfileGroupSettings group)
	{
		ProfileGroupSettings profileGroupSettings = Get(group.Name);
		if (profileGroupSettings == null)
		{
			Add(group);
			return;
		}
		int index = BaseIndexOf(profileGroupSettings);
		RemoveAt(index);
		BaseAdd(index, group);
	}

	internal void ResetInternal(ConfigurationElement parentElement)
	{
		Reset(parentElement);
	}

	internal void AddNewSettings(ProfileGroupSettings newSettings)
	{
		BaseAdd(newSettings, throwIfExists: false);
	}
}
