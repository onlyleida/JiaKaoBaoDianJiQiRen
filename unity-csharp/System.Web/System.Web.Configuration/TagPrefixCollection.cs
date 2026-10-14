using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(TagPrefixInfo), CollectionType = ConfigurationElementCollectionType.BasicMap)]
public sealed class TagPrefixCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	[MonoTODO("why override this?")]
	public override ConfigurationElementCollectionType CollectionType => ConfigurationElementCollectionType.BasicMap;

	[MonoTODO("why override this?")]
	protected override string ElementName => "add";

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public TagPrefixInfo this[int index]
	{
		get
		{
			return (TagPrefixInfo)BaseGet(index);
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

	protected override bool ThrowOnDuplicate => false;

	static TagPrefixCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(TagPrefixInfo tagPrefixInformation)
	{
		BaseAdd(tagPrefixInformation);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new TagPrefixInfo();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		TagPrefixInfo tagPrefixInfo = (TagPrefixInfo)element;
		return tagPrefixInfo.TagPrefix + "-" + tagPrefixInfo.TagName + "-" + tagPrefixInfo.Source + "-" + tagPrefixInfo.Namespace + "-" + tagPrefixInfo.Assembly;
	}

	public void Remove(TagPrefixInfo tagPrefixInformation)
	{
		BaseRemove(GetElementKey(tagPrefixInformation));
	}
}
