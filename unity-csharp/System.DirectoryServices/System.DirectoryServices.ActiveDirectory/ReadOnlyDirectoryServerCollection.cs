using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ReadOnlyDirectoryServerCollection : ReadOnlyCollectionBase
{
	public DirectoryServer this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(DirectoryServer directoryServer)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(DirectoryServer directoryServer)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(DirectoryServer[] directoryServers, int index)
	{
		throw new NotImplementedException();
	}
}
