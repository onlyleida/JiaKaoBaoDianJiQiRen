using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(BufferModeSettings), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class BufferModesCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public BufferModeSettings this[int index]
	{
		get
		{
			return (BufferModeSettings)BaseGet(index);
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

	public new BufferModeSettings this[string key] => (BufferModeSettings)BaseGet(key);

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static BufferModesCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(BufferModeSettings bufferModeSettings)
	{
		BaseAdd(bufferModeSettings);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new BufferModeSettings();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((BufferModeSettings)element).Name;
	}

	public void Remove(string s)
	{
		BaseRemove(s);
	}
}
