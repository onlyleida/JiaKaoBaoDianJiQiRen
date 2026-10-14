using System.Net;
using System.Security.Permissions;
using Unity;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class AdamInstance : DirectoryServer
{
	public ConfigurationSet ConfigurationSet
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string DefaultPartition
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string HostName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override ReplicationConnectionCollection InboundConnections
	{
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override string IPAddress
	{
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		[DnsPermission(SecurityAction.Assert, Unrestricted = true)]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int LdapPort
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public override ReplicationConnectionCollection OutboundConnections
	{
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public AdamRoleCollection Roles
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override string SiteName
	{
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int SslPort
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public override SyncUpdateCallback SyncFromAllServersCallback
	{
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
		[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	internal AdamInstance()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override void CheckReplicationConsistency()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static AdamInstanceCollection FindAll(DirectoryContext context, string partitionName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static AdamInstance FindOne(DirectoryContext context, string partitionName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static AdamInstance GetAdamInstance(DirectoryContext context)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override ReplicationNeighborCollection GetAllReplicationNeighbors()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public override ReplicationFailureCollection GetReplicationConnectionFailures()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public override ReplicationCursorCollection GetReplicationCursors(string partition)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public override ActiveDirectoryReplicationMetadata GetReplicationMetadata(string objectPath)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override ReplicationNeighborCollection GetReplicationNeighbors(string partition)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override ReplicationOperationInformation GetReplicationOperationInformation()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void Save()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void SeizeRoleOwnership(AdamRole role)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override void SyncReplicaFromAllServers(string partition, SyncFromAllServersOptions options)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override void SyncReplicaFromServer(string partition, string sourceServer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void TransferRoleOwnership(AdamRole role)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override void TriggerSyncReplicaFromNeighbors(string partition)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
