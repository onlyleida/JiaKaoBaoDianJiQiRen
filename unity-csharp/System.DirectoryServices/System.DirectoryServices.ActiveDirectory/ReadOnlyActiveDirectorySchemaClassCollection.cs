using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ReadOnlyActiveDirectorySchemaClassCollection : ReadOnlyCollectionBase
{
	public ActiveDirectorySchemaClass this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ActiveDirectorySchemaClass schemaClass)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ActiveDirectorySchemaClass schemaClass)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ActiveDirectorySchemaClass[] classes, int index)
	{
		throw new NotImplementedException();
	}
}
