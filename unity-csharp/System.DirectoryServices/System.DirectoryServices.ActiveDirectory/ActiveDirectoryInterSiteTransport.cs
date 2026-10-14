using System.Security.Permissions;
using Unity;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class ActiveDirectoryInterSiteTransport : IDisposable
{
	public bool BridgeAllSiteLinks
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool IgnoreReplicationSchedule
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public ReadOnlySiteLinkBridgeCollection SiteLinkBridges
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ReadOnlySiteLinkCollection SiteLinks
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ActiveDirectoryTransportType TransportType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	internal ActiveDirectoryInterSiteTransport()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Dispose()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void Dispose(bool disposing)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static ActiveDirectoryInterSiteTransport FindByTransportType(DirectoryContext context, ActiveDirectoryTransportType transport)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public DirectoryEntry GetDirectoryEntry()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void Save()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
