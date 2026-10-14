using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class DomainControllerCollection : ReadOnlyCollectionBase
{
	public DomainController this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(DomainController domainController)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(DomainController domainController)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(DomainController[] domainControllers, int index)
	{
		throw new NotImplementedException();
	}
}
