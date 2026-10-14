using System.Collections;
using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(OutputCacheProfile), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class OutputCacheProfileCollection : ConfigurationElementCollection, ICollection, IEnumerable
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

	public OutputCacheProfile this[int index]
	{
		get
		{
			return (OutputCacheProfile)BaseGet(index);
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

	public new OutputCacheProfile this[string name] => (OutputCacheProfile)BaseGet(name);

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static OutputCacheProfileCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(OutputCacheProfile name)
	{
		BaseAdd(name);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new OutputCacheProfile();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((OutputCacheProfile)element).Name;
	}

	public string GetKey(int index)
	{
		return (string)BaseGetKey(index);
	}

	public OutputCacheProfile Get(string name)
	{
		return (OutputCacheProfile)BaseGet(name);
	}

	public OutputCacheProfile Get(int index)
	{
		return (OutputCacheProfile)BaseGet(index);
	}

	public void Remove(string name)
	{
		BaseRemove(name);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}

	public void Set(OutputCacheProfile user)
	{
		OutputCacheProfile outputCacheProfile = Get(user.Name);
		if (outputCacheProfile == null)
		{
			Add(user);
			return;
		}
		int index = BaseIndexOf(outputCacheProfile);
		RemoveAt(index);
		BaseAdd(index, user);
	}
}
