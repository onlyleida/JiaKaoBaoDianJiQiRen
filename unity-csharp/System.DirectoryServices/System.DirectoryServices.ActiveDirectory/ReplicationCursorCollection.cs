using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ReplicationCursorCollection : ReadOnlyCollectionBase
{
	public ReplicationCursor this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ReplicationCursor cursor)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ReplicationCursor cursor)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ReplicationCursor[] values, int index)
	{
		throw new NotImplementedException();
	}
}
