using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class GlobalCatalogCollection : ReadOnlyCollectionBase
{
	public GlobalCatalog this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(GlobalCatalog globalCatalog)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(GlobalCatalog globalCatalog)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(GlobalCatalog[] globalCatalogs, int index)
	{
		throw new NotImplementedException();
	}
}
