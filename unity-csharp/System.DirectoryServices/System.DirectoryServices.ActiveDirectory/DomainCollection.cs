using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class DomainCollection : ReadOnlyCollectionBase
{
	public Domain this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(Domain domain)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(Domain domain)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(Domain[] domains, int index)
	{
		throw new NotImplementedException();
	}
}
