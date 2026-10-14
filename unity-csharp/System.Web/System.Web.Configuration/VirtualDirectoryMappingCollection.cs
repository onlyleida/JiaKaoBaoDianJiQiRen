using System.Collections;
using System.Collections.Specialized;

namespace System.Web.Configuration;

[Serializable]
public sealed class VirtualDirectoryMappingCollection : NameObjectCollectionBase
{
	public ICollection AllKeys => BaseGetAllKeys();

	public VirtualDirectoryMapping this[int index] => (VirtualDirectoryMapping)BaseGet(index);

	public VirtualDirectoryMapping this[string virtualDirectory] => (VirtualDirectoryMapping)BaseGet(virtualDirectory);

	public void Add(string virtualDirectory, VirtualDirectoryMapping mapping)
	{
		mapping.SetVirtualDirectory(virtualDirectory);
		BaseAdd(virtualDirectory, mapping);
	}

	public void Clear()
	{
		BaseClear();
	}

	public void CopyTo(VirtualDirectoryMapping[] array, int index)
	{
		((ICollection)this).CopyTo((Array)array, index);
	}

	public VirtualDirectoryMapping Get(int index)
	{
		return (VirtualDirectoryMapping)BaseGet(index);
	}

	public VirtualDirectoryMapping Get(string virtualDirectory)
	{
		return (VirtualDirectoryMapping)BaseGet(virtualDirectory);
	}

	public string GetKey(int index)
	{
		return BaseGetKey(index);
	}

	public void Remove(string virtualDirectory)
	{
		BaseRemove(virtualDirectory);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}
}
