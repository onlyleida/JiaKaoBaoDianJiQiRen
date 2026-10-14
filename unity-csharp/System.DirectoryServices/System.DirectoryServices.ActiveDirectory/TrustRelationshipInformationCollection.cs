using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class TrustRelationshipInformationCollection : ReadOnlyCollectionBase
{
	public TrustRelationshipInformation this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(TrustRelationshipInformation information)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(TrustRelationshipInformation information)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(TrustRelationshipInformation[] array, int index)
	{
		throw new NotImplementedException();
	}
}
