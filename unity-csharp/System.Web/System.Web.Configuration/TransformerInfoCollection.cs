using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(TransformerInfo), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class TransformerInfoCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public TransformerInfo this[int index]
	{
		get
		{
			return (TransformerInfo)BaseGet(index);
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

	static TransformerInfoCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(TransformerInfo transformerInfo)
	{
		BaseAdd(transformerInfo);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new TransformerInfo("", "");
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((TransformerInfo)element).Name;
	}

	public void Remove(string s)
	{
		BaseRemove(s);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}
}
