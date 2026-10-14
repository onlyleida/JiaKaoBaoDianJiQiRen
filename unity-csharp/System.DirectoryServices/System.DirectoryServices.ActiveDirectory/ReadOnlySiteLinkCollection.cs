using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ReadOnlySiteLinkCollection : ReadOnlyCollectionBase
{
	public ActiveDirectorySiteLink this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ActiveDirectorySiteLink link)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ActiveDirectorySiteLink link)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ActiveDirectorySiteLink[] links, int index)
	{
		InnerList.CopyTo(links, index);
	}
}
