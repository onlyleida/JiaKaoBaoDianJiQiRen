using Unity;

namespace System.Configuration;

[ConfigurationCollection(typeof(SchemeSettingElement), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap, AddItemName = "add", ClearItemsName = "clear", RemoveItemName = "remove")]
public sealed class SchemeSettingElementCollection : ConfigurationElementCollection
{
	public SchemeSettingElement this[int index]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public SchemeSettingElementCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public int IndexOf(SchemeSettingElement element)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
