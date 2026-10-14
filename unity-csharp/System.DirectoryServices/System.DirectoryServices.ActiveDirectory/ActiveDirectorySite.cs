using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class ActiveDirectorySite : IDisposable
{
	public string Name
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DomainCollection Domains
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySubnetCollection Subnets
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ReadOnlyDirectoryServerCollection Servers
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ReadOnlySiteCollection AdjacentSites
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ReadOnlySiteLinkCollection SiteLinks
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DirectoryServer InterSiteTopologyGenerator
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySiteOptions Options
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public string Location
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public ReadOnlyDirectoryServerCollection BridgeheadServers
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DirectoryServerCollection PreferredSmtpBridgeheadServers
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DirectoryServerCollection PreferredRpcBridgeheadServers
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySchedule IntraSiteReplicationSchedule
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public static ActiveDirectorySite FindByName(DirectoryContext context, string siteName)
	{
		throw new NotImplementedException();
	}

	public ActiveDirectorySite(DirectoryContext context, string siteName)
	{
		throw new NotImplementedException();
	}

	public static ActiveDirectorySite GetComputerSite()
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
	}
}
