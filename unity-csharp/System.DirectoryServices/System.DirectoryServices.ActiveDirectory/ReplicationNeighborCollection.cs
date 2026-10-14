using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ReplicationNeighborCollection : ReadOnlyCollectionBase
{
	public ReplicationNeighbor this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ReplicationNeighbor neighbor)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ReplicationNeighbor neighbor)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ReplicationNeighbor[] neighbors, int index)
	{
		throw new NotImplementedException();
	}
}
