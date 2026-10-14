using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

public abstract class ActiveDirectoryPartition : IDisposable
{
	public string Name
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

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public abstract DirectoryEntry GetDirectoryEntry();
}
