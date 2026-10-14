using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ForestTrustDomainInfoCollection : ReadOnlyCollectionBase
{
	public ForestTrustDomainInformation this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ForestTrustDomainInformation information)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ForestTrustDomainInformation information)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ForestTrustDomainInformation[] array, int index)
	{
		throw new NotImplementedException();
	}
}
