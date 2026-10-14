using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(TagMapInfo), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class TagMapCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public TagMapInfo this[int index]
	{
		get
		{
			return (TagMapInfo)BaseGet(index);
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

	static TagMapCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(TagMapInfo tagMapInformation)
	{
		BaseAdd(tagMapInformation);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new TagMapInfo();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((TagMapInfo)element).TagType;
	}

	public void Remove(TagMapInfo tagMapInformation)
	{
		BaseRemove(tagMapInformation.TagType);
	}
}
