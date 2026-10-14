using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class AttributeMetadataCollection : ReadOnlyCollectionBase
{
	public AttributeMetadata this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(AttributeMetadata metadata)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(AttributeMetadata metadata)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(AttributeMetadata[] metadata, int index)
	{
		throw new NotImplementedException();
	}
}
