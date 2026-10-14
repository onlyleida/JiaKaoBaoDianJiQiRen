using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class ActiveDirectorySubnet : IDisposable
{
	public string Name
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySite Site
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

	public static ActiveDirectorySubnet FindByName(DirectoryContext context, string subnetName)
	{
		throw new NotImplementedException();
	}

	public ActiveDirectorySubnet(DirectoryContext context, string subnetName)
	{
		throw new NotImplementedException();
	}

	public ActiveDirectorySubnet(DirectoryContext context, string subnetName, string siteName)
		: this(context, subnetName)
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
