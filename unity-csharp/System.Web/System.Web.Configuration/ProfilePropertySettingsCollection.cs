using System.Configuration;
using System.Xml;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(ProfilePropertySettings), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public class ProfilePropertySettingsCollection : ConfigurationElementCollection
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

	protected virtual bool AllowClear => false;

	public ProfilePropertySettings this[int index]
	{
		get
		{
			return Get(index);
		}
		set
		{
			if (Get(index) != null)
			{
				BaseRemoveAt(index);
			}
			BaseAdd(index, value);
		}
	}

	public new ProfilePropertySettings this[string name] => (ProfilePropertySettings)BaseGet(name);

	protected override bool ThrowOnDuplicate => true;

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static ProfilePropertySettingsCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(ProfilePropertySettings propertySettings)
	{
		BaseAdd(propertySettings);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new ProfilePropertySettings();
	}

	public ProfilePropertySettings Get(int index)
	{
		return (ProfilePropertySettings)BaseGet(index);
	}

	public ProfilePropertySettings Get(string name)
	{
		return (ProfilePropertySettings)BaseGet(name);
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((ProfilePropertySettings)element).Name;
	}

	protected override bool OnDeserializeUnrecognizedElement(string elementName, XmlReader reader)
	{
		return base.OnDeserializeUnrecognizedElement(elementName, reader);
	}

	public string GetKey(int index)
	{
		return Get(index)?.Name;
	}

	public int IndexOf(ProfilePropertySettings propertySettings)
	{
		return BaseIndexOf(propertySettings);
	}

	public void Remove(string name)
	{
		BaseRemove(name);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}

	public void Set(ProfilePropertySettings propertySettings)
	{
		ProfilePropertySettings profilePropertySettings = Get(propertySettings.Name);
		if (profilePropertySettings == null)
		{
			Add(propertySettings);
			return;
		}
		int index = BaseIndexOf(profilePropertySettings);
		RemoveAt(index);
		BaseAdd(index, propertySettings);
	}
}
