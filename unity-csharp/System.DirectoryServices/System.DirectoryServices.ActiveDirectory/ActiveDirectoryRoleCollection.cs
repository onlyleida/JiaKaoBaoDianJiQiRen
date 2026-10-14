using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ActiveDirectoryRoleCollection : ReadOnlyCollectionBase
{
	public ActiveDirectoryRole this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ActiveDirectoryRole role)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ActiveDirectoryRole role)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ActiveDirectoryRole[] roles, int index)
	{
		throw new NotImplementedException();
	}
}
