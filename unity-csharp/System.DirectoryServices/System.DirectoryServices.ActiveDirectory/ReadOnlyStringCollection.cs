using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ReadOnlyStringCollection : ReadOnlyCollectionBase
{
	public string this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(string value)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(string value)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(string[] values, int index)
	{
		throw new NotImplementedException();
	}
}
