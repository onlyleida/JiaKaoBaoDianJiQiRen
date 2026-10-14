using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class GlobalCatalog : DomainController
{
	public static GlobalCatalog GetGlobalCatalog(DirectoryContext context)
	{
		throw new NotImplementedException();
	}

	public new static GlobalCatalog FindOne(DirectoryContext context)
	{
		throw new NotImplementedException();
	}

	public new static GlobalCatalog FindOne(DirectoryContext context, string siteName)
	{
		throw new NotImplementedException();
	}

	public new static GlobalCatalog FindOne(DirectoryContext context, LocatorOptions flag)
	{
		throw new NotImplementedException();
	}

	public new static GlobalCatalog FindOne(DirectoryContext context, string siteName, LocatorOptions flag)
	{
		throw new NotImplementedException();
	}

	public new static GlobalCatalogCollection FindAll(DirectoryContext context)
	{
		throw new NotImplementedException();
	}

	public new static GlobalCatalogCollection FindAll(DirectoryContext context, string siteName)
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override GlobalCatalog EnableGlobalCatalog()
	{
		throw new NotImplementedException();
	}

	public DomainController DisableGlobalCatalog()
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public override bool IsGlobalCatalog()
	{
		throw new NotImplementedException();
	}

	public ReadOnlyActiveDirectorySchemaPropertyCollection FindAllProperties()
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	public override DirectorySearcher GetDirectorySearcher()
	{
		throw new NotImplementedException();
	}
}
