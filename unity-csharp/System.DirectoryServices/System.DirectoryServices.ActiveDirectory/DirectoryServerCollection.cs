using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class DirectoryServerCollection : CollectionBase
{
	public DirectoryServer this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public int Add(DirectoryServer server)
	{
		throw new NotImplementedException();
	}

	public void AddRange(DirectoryServer[] servers)
	{
		throw new NotImplementedException();
	}

	public bool Contains(DirectoryServer server)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(DirectoryServer[] array, int index)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(DirectoryServer server)
	{
		throw new NotImplementedException();
	}

	public void Insert(int index, DirectoryServer server)
	{
		throw new NotImplementedException();
	}

	public void Remove(DirectoryServer server)
	{
		throw new NotImplementedException();
	}

	protected override void OnClear()
	{
		throw new NotImplementedException();
	}

	protected override void OnClearComplete()
	{
		throw new NotImplementedException();
	}

	protected override void OnInsertComplete(int index, object value)
	{
		throw new NotImplementedException();
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		throw new NotImplementedException();
	}

	protected override void OnSetComplete(int index, object oldValue, object newValue)
	{
		throw new NotImplementedException();
	}

	protected override void OnValidate(object value)
	{
		throw new NotImplementedException();
	}
}
