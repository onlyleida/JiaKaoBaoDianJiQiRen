using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(EventMappingSettings), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class EventMappingSettingsCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public EventMappingSettings this[int index]
	{
		get
		{
			return (EventMappingSettings)BaseGet(index);
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

	public new EventMappingSettings this[string key] => (EventMappingSettings)BaseGet(key);

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static EventMappingSettingsCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(EventMappingSettings eventMappingSettings)
	{
		BaseAdd(eventMappingSettings);
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
		return new EventMappingSettings();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((EventMappingSettings)element).Name;
	}

	public int IndexOf(string name)
	{
		EventMappingSettings eventMappingSettings = (EventMappingSettings)BaseGet(name);
		if (eventMappingSettings == null)
		{
			return -1;
		}
		return BaseIndexOf(eventMappingSettings);
	}

	[MonoTODO("why did they use 'Insert' and not 'Add' as other collections do?")]
	public void Insert(int index, EventMappingSettings eventMappingSettings)
	{
		BaseAdd(index, eventMappingSettings);
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
