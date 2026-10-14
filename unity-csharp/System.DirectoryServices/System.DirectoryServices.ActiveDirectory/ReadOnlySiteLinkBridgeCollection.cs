using System.Collections;

namespace System.DirectoryServices.ActiveDirectory;

public class ReadOnlySiteLinkBridgeCollection : ReadOnlyCollectionBase
{
	public ActiveDirectorySiteLinkBridge this[int index]
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public bool Contains(ActiveDirectorySiteLinkBridge bridge)
	{
		throw new NotImplementedException();
	}

	public int IndexOf(ActiveDirectorySiteLinkBridge bridge)
	{
		throw new NotImplementedException();
	}

	public void CopyTo(ActiveDirectorySiteLinkBridge[] bridges, int index)
	{
		throw new NotImplementedException();
	}
}
