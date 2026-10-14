using System.Net;
using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class DomainController : DirectoryServer
{
	public Forest Forest
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DateTime CurrentTime
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public long HighestCommittedUsn
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string OSVersion
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectoryRoleCollection Roles
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public Domain Domain
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public override string IPAddress
	{
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		[DnsPermission(SecurityAction.Assert, Unrestricted = true)]
		get
		{
			throw new NotImplementedException();
		}
	}

	public override string SiteName
	{
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		get
		{
			throw new NotImplementedException();
		}
	}

	public override SyncUpdateCallback SyncFromAllServersCallback
	{
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		get
		{
			throw new NotImplementedException();
		}
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		set
		{
			throw new NotImplementedException();
		}
	}

	public override ReplicationConnectionCollection InboundConnections
	{
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		get
		{
			throw new NotImplementedException();
		}
	}

	public override ReplicationConnectionCollection OutboundConnections
	{
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		get
		{
			throw new NotImplementedException();
		}
	}

	protected DomainController()
	{
	}

	protected override void Dispose(bool disposing)
	{
		Dispose();
	}

	public static DomainController GetDomainController(DirectoryContext context)
	{
		throw new NotImplementedException();
	}

	public static DomainController FindOne(DirectoryContext context)
	{
		throw new NotImplementedException();
	}

	public static DomainController FindOne(DirectoryContext context, string siteName)
	{
		throw new NotImplementedException();
	}

	public static DomainController FindOne(DirectoryContext context, LocatorOptions flag)
	{
		throw new NotImplementedException();
	}

	public static DomainController FindOne(DirectoryContext context, string siteName, LocatorOptions flag)
	{
		throw new NotImplementedException();
	}

	public static DomainControllerCollection FindAll(DirectoryContext context)
	{
		throw new NotImplementedException();
	}

	public static DomainControllerCollection FindAll(DirectoryContext context, string siteName)
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public virtual GlobalCatalog EnableGlobalCatalog()
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public virtual bool IsGlobalCatalog()
	{
		throw new NotImplementedException();
	}

	public void TransferRoleOwnership(ActiveDirectoryRole role)
	{
		throw new NotImplementedException();
	}

	public void SeizeRoleOwnership(ActiveDirectoryRole role)
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public virtual DirectorySearcher GetDirectorySearcher()
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override void CheckReplicationConsistency()
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override ReplicationCursorCollection GetReplicationCursors(string partition)
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public override ReplicationOperationInformation GetReplicationOperationInformation()
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public override ReplicationNeighborCollection GetReplicationNeighbors(string partition)
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public override ReplicationNeighborCollection GetAllReplicationNeighbors()
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public override ReplicationFailureCollection GetReplicationConnectionFailures()
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override ActiveDirectoryReplicationMetadata GetReplicationMetadata(string objectPath)
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override void SyncReplicaFromServer(string partition, string sourceServer)
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override void TriggerSyncReplicaFromNeighbors(string partition)
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public override void SyncReplicaFromAllServers(string partition, SyncFromAllServersOptions options)
	{
		throw new NotImplementedException();
	}
}
