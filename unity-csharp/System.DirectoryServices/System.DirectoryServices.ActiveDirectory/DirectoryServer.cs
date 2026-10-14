using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public abstract class DirectoryServer : IDisposable
{
	public string Name
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ReadOnlyStringCollection Partitions
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public abstract string IPAddress
	{
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		get;
	}

	public abstract string SiteName
	{
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		get;
	}

	public abstract SyncUpdateCallback SyncFromAllServersCallback
	{
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		get;
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		set;
	}

	public abstract ReplicationConnectionCollection InboundConnections
	{
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		get;
	}

	public abstract ReplicationConnectionCollection OutboundConnections
	{
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		get;
	}

	internal DirectoryContext Context
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public void Dispose()
	{
	}

	protected virtual void Dispose(bool disposing)
	{
	}

	public override string ToString()
	{
		throw new NotImplementedException();
	}

	public void MoveToAnotherSite(string siteName)
	{
		throw new NotImplementedException();
	}

	public DirectoryEntry GetDirectoryEntry()
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public abstract void CheckReplicationConsistency();

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public abstract ReplicationCursorCollection GetReplicationCursors(string partition);

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public abstract ReplicationOperationInformation GetReplicationOperationInformation();

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public abstract ReplicationNeighborCollection GetReplicationNeighbors(string partition);

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public abstract ReplicationNeighborCollection GetAllReplicationNeighbors();

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public abstract ReplicationFailureCollection GetReplicationConnectionFailures();

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public abstract ActiveDirectoryReplicationMetadata GetReplicationMetadata(string objectPath);

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public abstract void SyncReplicaFromServer(string partition, string sourceServer);

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public abstract void TriggerSyncReplicaFromNeighbors(string partition);

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public abstract void SyncReplicaFromAllServers(string partition, SyncFromAllServersOptions options);
}
