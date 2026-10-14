using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ApplicationPartitionCollection : ReadOnlyCollectionBase
{
	public ApplicationPartition this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ApplicationPartition applicationPartition)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ApplicationPartition applicationPartition)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ApplicationPartition[] applicationPartitions, int index)
	{
		throw new NotImplementedException();
	}
}
