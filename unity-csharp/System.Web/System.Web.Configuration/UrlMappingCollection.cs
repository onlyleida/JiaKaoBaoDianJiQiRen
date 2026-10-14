using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(UrlMapping), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class UrlMappingCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public string[] AllKeys
	{
		get
		{
			string[] array = new string[Count];
			for (int i = 0; i < Count; i++)
			{
				array[i] = this[i].Url;
			}
			return array;
		}
	}

	public UrlMapping this[int index]
	{
		get
		{
			return (UrlMapping)BaseGet(index);
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

	public new UrlMapping this[string name] => (UrlMapping)BaseGet(name);

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static UrlMappingCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(UrlMapping urlMapping)
	{
		BaseAdd(urlMapping);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new UrlMapping();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((UrlMapping)element).Url;
	}

	public string GetKey(int index)
	{
		return (string)BaseGetKey(index);
	}

	public void Remove(string name)
	{
		BaseRemove(name);
	}

	public void Remove(UrlMapping urlMapping)
	{
		BaseRemove(urlMapping.Url);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}
}
