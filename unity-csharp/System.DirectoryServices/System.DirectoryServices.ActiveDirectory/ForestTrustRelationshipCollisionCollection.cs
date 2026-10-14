using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ForestTrustRelationshipCollisionCollection : ReadOnlyCollectionBase
{
	public ForestTrustRelationshipCollision this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ForestTrustRelationshipCollision collision)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ForestTrustRelationshipCollision collision)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ForestTrustRelationshipCollision[] array, int index)
	{
		throw new NotImplementedException();
	}
}
