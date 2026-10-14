using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ReplicationConnectionCollection : ReadOnlyCollectionBase
{
	public ReplicationConnection this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ReplicationConnection connection)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ReplicationConnection connection)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ReplicationConnection[] connections, int index)
	{
		throw new NotImplementedException();
	}
}
