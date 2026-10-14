using System.Configuration;
using Unity;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(string))]
public sealed class FullTrustAssemblyCollection : ConfigurationElementCollection
{
	public FullTrustAssembly this[int index]
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

	public FullTrustAssemblyCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Add(FullTrustAssembly fullTrustAssembly)
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

	public void Remove(string key)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void RemoveAt(int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
