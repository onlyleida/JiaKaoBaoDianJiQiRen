using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class TopLevelNameCollection : ReadOnlyCollectionBase
{
	public TopLevelName this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(TopLevelName name)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(TopLevelName name)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(TopLevelName[] names, int index)
	{
		throw new NotImplementedException();
	}
}
