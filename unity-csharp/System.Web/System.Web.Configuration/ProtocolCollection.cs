using System.Configuration;
using Unity;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(ProtocolElement))]
public sealed class ProtocolCollection : ConfigurationElementCollection
{
	public string[] AllKeys
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ProtocolElement this[int index]
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

	public ProtocolCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Add(ProtocolElement protocolElement)
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

	public void Remove(ProtocolElement protocolElement)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void RemoveAt(int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
