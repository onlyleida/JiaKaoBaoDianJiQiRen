using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ReplicationFailureCollection : ReadOnlyCollectionBase
{
	public ReplicationFailure this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ReplicationFailure failure)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ReplicationFailure failure)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ReplicationFailure[] failures, int index)
	{
		throw new NotImplementedException();
	}
}
