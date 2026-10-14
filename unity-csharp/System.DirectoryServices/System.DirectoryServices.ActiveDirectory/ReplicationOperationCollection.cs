using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ReplicationOperationCollection : ReadOnlyCollectionBase
{
	public ReplicationOperation this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ReplicationOperation operation)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ReplicationOperation operation)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ReplicationOperation[] operations, int index)
	{
		throw new NotImplementedException();
	}

	private int Add(ReplicationOperation operation)
	{
		throw new NotImplementedException();
	}
}
