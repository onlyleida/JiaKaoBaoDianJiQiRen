using System.Configuration;
using Unity;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(IgnoreDeviceFilterElement), AddItemName = "filter", CollectionType = ConfigurationElementCollectionType.BasicMap)]
public sealed class IgnoreDeviceFilterElementCollection : ConfigurationElementCollection
{
	public IgnoreDeviceFilterElement this[int index]
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public IgnoreDeviceFilterElementCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Add(IgnoreDeviceFilterElement deviceFilter)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Clear()
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

	public void Remove(string name)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Remove(IgnoreDeviceFilterElement deviceFilter)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void RemoveAt(int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
