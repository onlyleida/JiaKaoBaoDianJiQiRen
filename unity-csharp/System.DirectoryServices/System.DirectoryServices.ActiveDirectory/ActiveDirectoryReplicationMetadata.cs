using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ActiveDirectoryReplicationMetadata : DictionaryBase
{
	public AttributeMetadata this[string name]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ReadOnlyStringCollection AttributeNames
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public AttributeMetadataCollection Values
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(string attributeName)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(AttributeMetadata[] array, int index)
	{
		throw new NotImplementedException();
	}
}
