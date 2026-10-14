using System.Configuration;
using Unity;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(FolderLevelBuildProvider))]
public sealed class FolderLevelBuildProviderCollection : ConfigurationElementCollection
{
	public FolderLevelBuildProvider this[int index]
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

	public FolderLevelBuildProviderCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Add(FolderLevelBuildProvider buildProvider)
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

	public void RemoveAt(int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
