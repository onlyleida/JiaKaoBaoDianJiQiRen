using System.Collections;

namespace System.DirectoryServices;

public class SchemaNameCollection : IList, ICollection, IEnumerable
{
	bool IList.IsFixedSize => true;

	bool IList.IsReadOnly => true;

	object IList.this[int recordIndex]
	{
		[MonoTODO]
		get
		{
			throw new InvalidOperationException();
		}
		[MonoTODO]
		set
		{
			throw new InvalidOperationException();
		}
	}

	public string this[int index]
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
		[MonoTODO]
		set
		{
			throw new NotImplementedException();
		}
	}

	public int Count => 0;

	bool ICollection.IsSynchronized
	{
		[MonoTODO]
		get
		{
			return true;
		}
	}

	object ICollection.SyncRoot
	{
		[MonoTODO]
		get
		{
			return this;
		}
	}

	internal SchemaNameCollection()
	{
	}

	[MonoTODO]
	int IList.Add(object avalue)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public int Add(string value)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public void Clear()
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	bool IList.Contains(object cvalue)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	int IList.IndexOf(object ivalue)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	void IList.Insert(int index, object ivalue)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	void IList.Remove(object rvalue)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public void RemoveAt(int index)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public IEnumerator GetEnumerator()
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public void AddRange(SchemaNameCollection value)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public void AddRange(string[] value)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public bool Contains(string value)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	void ICollection.CopyTo(Array arr, int pos)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public void CopyTo(string[] stringArray, int index)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public int IndexOf(string value)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public void Insert(int index, string value)
	{
		throw new NotImplementedException();
	}

	[MonoTODO]
	public void Remove(string value)
	{
		throw new NotImplementedException();
	}
}
