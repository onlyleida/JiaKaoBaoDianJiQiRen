using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(TrustLevel), AddItemName = "trustLevel")]
public sealed class TrustLevelCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public override ConfigurationElementCollectionType CollectionType => ConfigurationElementCollectionType.BasicMap;

	protected override string ElementName => "trustLevel";

	public new TrustLevel this[string key] => (TrustLevel)BaseGet(key);

	public TrustLevel this[int index]
	{
		get
		{
			return (TrustLevel)BaseGet(index);
		}
		set
		{
			Set(index, value);
		}
	}

	protected override bool ThrowOnDuplicate => false;

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static TrustLevelCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(TrustLevel trustLevel)
	{
		BaseAdd(trustLevel);
	}

	public void Clear()
	{
		BaseClear();
	}

	public TrustLevel Get(int index)
	{
		return (TrustLevel)BaseGet(index);
	}

	public void Remove(TrustLevel trustLevel)
	{
		BaseRemove(trustLevel.Name);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}

	public void Set(int index, TrustLevel trustLevel)
	{
		if (BaseGet(index) != null)
		{
			BaseRemoveAt(index);
		}
		BaseAdd(index, trustLevel);
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new TrustLevel();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((TrustLevel)element).Name;
	}

	protected override bool IsElementName(string elementname)
	{
		return elementname == "trustlevel";
	}
}
