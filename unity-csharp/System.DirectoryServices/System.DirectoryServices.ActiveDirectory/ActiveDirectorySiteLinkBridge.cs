using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class ActiveDirectorySiteLinkBridge : IDisposable
{
	public string Name
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySiteLinkCollection SiteLinks
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectoryTransportType TransportType
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySiteLinkBridge(DirectoryContext context, string bridgeName)
		: this(context, bridgeName, ActiveDirectoryTransportType.Rpc)
	{
	}

	public ActiveDirectorySiteLinkBridge(DirectoryContext context, string bridgeName, ActiveDirectoryTransportType transport)
	{
	}

	public static ActiveDirectorySiteLinkBridge FindByName(DirectoryContext context, string bridgeName)
	{
		throw new NotImplementedException();
	}

	public static ActiveDirectorySiteLinkBridge FindByName(DirectoryContext context, string bridgeName, ActiveDirectoryTransportType transport)
	{
		throw new NotImplementedException();
	}

	public void Save()
	{
		throw new NotImplementedException();
	}

	public void Delete()
	{
		throw new NotImplementedException();
	}

	public override string ToString()
	{
		throw new NotImplementedException();
	}

	public DirectoryEntry GetDirectoryEntry()
	{
		throw new NotImplementedException();
	}

	public void Dispose()
	{
	}

	protected virtual void Dispose(bool disposing)
	{
		throw new NotImplementedException();
	}
}
