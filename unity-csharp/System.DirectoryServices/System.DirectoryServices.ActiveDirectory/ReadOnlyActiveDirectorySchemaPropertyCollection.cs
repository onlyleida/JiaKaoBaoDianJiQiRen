using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ReadOnlyActiveDirectorySchemaPropertyCollection : ReadOnlyCollectionBase
{
	public ActiveDirectorySchemaProperty this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ActiveDirectorySchemaProperty schemaProperty)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ActiveDirectorySchemaProperty schemaProperty)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ActiveDirectorySchemaProperty[] properties, int index)
	{
		throw new NotImplementedException();
	}
}
