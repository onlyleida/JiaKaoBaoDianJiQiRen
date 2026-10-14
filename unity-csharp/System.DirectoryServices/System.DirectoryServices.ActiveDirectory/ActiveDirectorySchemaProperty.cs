using System.Runtime.CompilerServices;
using System.Security.Permissions;
using Unity;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class ActiveDirectorySchemaProperty : IDisposable
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

	public ActiveDirectorySyntax Syntax
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

	public bool IsSingleValued
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

	public bool IsIndexed
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

	public bool IsIndexedOverContainer
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

	public bool IsInAnr
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

	public bool IsOnTombstonedObject
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

	public bool IsTupleIndexed
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

	public bool IsInGlobalCatalog
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

	public int RangeLower
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

	public int RangeUpper
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

	public ActiveDirectorySchemaProperty Link
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public int? LinkId
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

	public ActiveDirectorySchemaProperty(DirectoryContext context, string ldapDisplayName)
	{
		throw new NotImplementedException();
	}

	public void Dispose()
	{
	}

	protected virtual void Dispose(bool disposing)
	{
	}

	public static ActiveDirectorySchemaProperty FindByName(DirectoryContext context, string ldapDisplayName)
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

	[SpecialName]
	public void set_RangeLower(int? value)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	public void set_RangeUpper(int? value)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
