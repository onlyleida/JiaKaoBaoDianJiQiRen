using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class ActiveDirectorySchemaClass : IDisposable
{
	public string Name
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public string CommonName
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

	public string Oid
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

	public string Description
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

	public bool IsDefunct
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

	public ActiveDirectorySchemaClassCollection PossibleSuperiors
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ReadOnlyActiveDirectorySchemaClassCollection PossibleInferiors
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySchemaPropertyCollection MandatoryProperties
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySchemaPropertyCollection OptionalProperties
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySchemaClassCollection AuxiliaryClasses
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySchemaClass SubClassOf
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

	public SchemaClassType Type
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

	public Guid SchemaGuid
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

	public ActiveDirectorySecurity DefaultObjectSecurityDescriptor
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

	public ActiveDirectorySchemaClass(DirectoryContext context, string ldapDisplayName)
	{
		throw new NotImplementedException();
	}

	public void Dispose()
	{
	}

	protected virtual void Dispose(bool disposing)
	{
	}

	public static ActiveDirectorySchemaClass FindByName(DirectoryContext context, string ldapDisplayName)
	{
		throw new NotImplementedException();
	}

	public ReadOnlyActiveDirectorySchemaPropertyCollection GetAllProperties()
	{
		throw new NotImplementedException();
	}

	public void Save()
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
}
