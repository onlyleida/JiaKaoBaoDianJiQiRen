using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(ClientTarget), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class ClientTargetCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public string[] AllKeys
	{
		get
		{
			string[] array = new string[Count];
			for (int i = 0; i < Count; i++)
			{
				array[i] = this[i].Alias;
			}
			return array;
		}
	}

	public ClientTarget this[int index]
	{
		get
		{
			return (ClientTarget)BaseGet(index);
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

	public new ClientTarget this[string name] => (ClientTarget)BaseGet(name);

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static ClientTargetCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(ClientTarget clientTarget)
	{
		BaseAdd(clientTarget);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new ClientTarget(null, null);
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((ClientTarget)element).Alias;
	}

	public string GetKey(int index)
	{
		return (string)BaseGetKey(index);
	}

	public void Remove(string name)
	{
		BaseRemove(name);
	}

	public void Remove(ClientTarget clientTarget)
	{
		BaseRemove(clientTarget.Alias);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}
}
