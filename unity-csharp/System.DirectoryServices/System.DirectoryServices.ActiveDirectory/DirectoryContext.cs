using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[EnvironmentPermission(SecurityAction.Assert, Unrestricted = true)]
public class DirectoryContext
{
	public string Name
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string UserName
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DirectoryContextType ContextType
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[DirectoryServicesPermission(SecurityAction.Demand, Unrestricted = true)]
	public DirectoryContext(DirectoryContextType contextType)
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.Demand, Unrestricted = true)]
	public DirectoryContext(DirectoryContextType contextType, string name)
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.Demand, Unrestricted = true)]
	public DirectoryContext(DirectoryContextType contextType, string username, string password)
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.Demand, Unrestricted = true)]
	public DirectoryContext(DirectoryContextType contextType, string name, string username, string password)
	{
		throw new NotImplementedException();
	}
}
