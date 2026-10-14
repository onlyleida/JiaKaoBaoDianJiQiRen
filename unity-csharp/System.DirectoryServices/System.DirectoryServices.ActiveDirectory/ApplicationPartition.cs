using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class ApplicationPartition : ActiveDirectoryPartition
{
	public DirectoryServerCollection DirectoryServers
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string SecurityReferenceDomain
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

	public ApplicationPartition(DirectoryContext context, string distinguishedName)
	{
		throw new NotImplementedException();
	}

	public ApplicationPartition(DirectoryContext context, string distinguishedName, string objectClass)
	{
		throw new NotImplementedException();
	}

	protected override void Dispose(bool disposing)
	{
	}

	public static ApplicationPartition GetApplicationPartition(DirectoryContext context)
	{
		throw new NotImplementedException();
	}

	public static ApplicationPartition FindByName(DirectoryContext context, string distinguishedName)
	{
		throw new NotImplementedException();
	}

	public DirectoryServer FindDirectoryServer()
	{
		throw new NotImplementedException();
	}

	public DirectoryServer FindDirectoryServer(string siteName)
	{
		throw new NotImplementedException();
	}

	public DirectoryServer FindDirectoryServer(bool forceRediscovery)
	{
		throw new NotImplementedException();
	}

	public DirectoryServer FindDirectoryServer(string siteName, bool forceRediscovery)
	{
		throw new NotImplementedException();
	}

	public ReadOnlyDirectoryServerCollection FindAllDirectoryServers()
	{
		throw new NotImplementedException();
	}

	public ReadOnlyDirectoryServerCollection FindAllDirectoryServers(string siteName)
	{
		throw new NotImplementedException();
	}

	public ReadOnlyDirectoryServerCollection FindAllDiscoverableDirectoryServers()
	{
		throw new NotImplementedException();
	}

	public ReadOnlyDirectoryServerCollection FindAllDiscoverableDirectoryServers(string siteName)
	{
		throw new NotImplementedException();
	}

	public void Delete()
	{
		throw new NotImplementedException();
	}

	public void Save()
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override DirectoryEntry GetDirectoryEntry()
	{
		throw new NotImplementedException();
	}
}
