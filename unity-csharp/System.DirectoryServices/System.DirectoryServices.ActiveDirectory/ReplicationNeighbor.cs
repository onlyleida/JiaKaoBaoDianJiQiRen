namespace System.DirectoryServices.ActiveDirectory;

public class ReplicationNeighbor
{
	[Flags]
	public enum ReplicationNeighborOptions : long
	{
		Writeable = 0x10L,
		SyncOnStartup = 0x20L,
		ScheduledSync = 0x40L,
		UseInterSiteTransport = 0x80L,
		TwoWaySync = 0x200L,
		ReturnObjectParent = 0x800L,
		FullSyncInProgress = 0x10000L,
		FullSyncNextPacket = 0x20000L,
		NeverSynced = 0x200000L,
		Preempted = 0x1000000L,
		IgnoreChangeNotifications = 0x4000000L,
		DisableScheduledSync = 0x8000000L,
		CompressChanges = 0x10000000L,
		NoChangeNotifications = 0x20000000L,
		PartialAttributeSet = 0x40000000L
	}

	public string PartitionName
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string SourceServer
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

	public ReplicationNeighborOptions ReplicationNeighborOption
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public Guid SourceInvocationId
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public long UsnLastObjectChangeSynced
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public long UsnAttributeFilter
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DateTime LastSuccessfulSync
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DateTime LastAttemptedSync
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public int LastSyncResult
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string LastSyncMessage
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public int ConsecutiveFailureCount
	{
		get
		{
			throw new NotImplementedException();
		}
	}
}
