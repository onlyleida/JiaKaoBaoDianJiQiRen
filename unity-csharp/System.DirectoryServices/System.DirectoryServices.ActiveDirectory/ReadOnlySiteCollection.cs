using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ReadOnlySiteCollection : ReadOnlyCollectionBase
{
	public ActiveDirectorySite this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ActiveDirectorySite site)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ActiveDirectorySite site)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ActiveDirectorySite[] sites, int index)
	{
		throw new NotImplementedException();
	}
}
