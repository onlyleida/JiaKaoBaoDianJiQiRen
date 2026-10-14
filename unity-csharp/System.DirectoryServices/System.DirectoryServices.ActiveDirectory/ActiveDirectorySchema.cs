using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class ActiveDirectorySchema : ActiveDirectoryPartition
{
	public DirectoryServer SchemaRoleOwner
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	protected override void Dispose(bool disposing)
	{
	}

	public static ActiveDirectorySchema GetSchema(DirectoryContext context)
	{
		throw new NotImplementedException();
	}

	public void RefreshSchema()
	{
		throw new NotImplementedException();
	}

	public ActiveDirectorySchemaClass FindClass(string ldapDisplayName)
	{
		throw new NotImplementedException();
	}

	public ActiveDirectorySchemaClass FindDefunctClass(string commonName)
	{
		throw new NotImplementedException();
	}

	public ReadOnlyActiveDirectorySchemaClassCollection FindAllClasses()
	{
		throw new NotImplementedException();
	}

	public ReadOnlyActiveDirectorySchemaClassCollection FindAllClasses(SchemaClassType type)
	{
		throw new NotImplementedException();
	}

	public ReadOnlyActiveDirectorySchemaClassCollection FindAllDefunctClasses()
	{
		throw new NotImplementedException();
	}

	public ActiveDirectorySchemaProperty FindProperty(string ldapDisplayName)
	{
		throw new NotImplementedException();
	}

	public ActiveDirectorySchemaProperty FindDefunctProperty(string commonName)
	{
		throw new NotImplementedException();
	}

	public ReadOnlyActiveDirectorySchemaPropertyCollection FindAllProperties()
	{
		throw new NotImplementedException();
	}

	public ReadOnlyActiveDirectorySchemaPropertyCollection FindAllProperties(PropertyTypes type)
	{
		throw new NotImplementedException();
	}

	public ReadOnlyActiveDirectorySchemaPropertyCollection FindAllDefunctProperties()
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public override DirectoryEntry GetDirectoryEntry()
	{
		throw new NotImplementedException();
	}

	public static ActiveDirectorySchema GetCurrentSchema()
	{
		throw new NotImplementedException();
	}
}
