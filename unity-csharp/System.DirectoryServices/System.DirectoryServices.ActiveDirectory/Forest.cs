using System.Security.Permissions;
using Unity;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class Forest : IDisposable
{
	public string Name
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ReadOnlySiteCollection Sites
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DomainCollection Domains
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public GlobalCatalogCollection GlobalCatalogs
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ApplicationPartitionCollection ApplicationPartitions
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ForestMode ForestMode
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public Domain RootDomain
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySchema Schema
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DomainController SchemaRoleOwner
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DomainController NamingRoleOwner
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public int ForestModeLevel
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public void Dispose()
	{
		Dispose(disposing: true);
	}

	protected void Dispose(bool disposing)
	{
	}

	public static Forest GetForest(DirectoryContext context)
	{
		throw new NotImplementedException();
	}

	public void RaiseForestFunctionality(ForestMode forestMode)
	{
		throw new NotImplementedException();
	}

	public override string ToString()
	{
		throw new NotImplementedException();
	}

	public GlobalCatalog FindGlobalCatalog()
	{
		throw new NotImplementedException();
	}

	public GlobalCatalog FindGlobalCatalog(string siteName)
	{
		throw new NotImplementedException();
	}

	public GlobalCatalog FindGlobalCatalog(LocatorOptions flag)
	{
		throw new NotImplementedException();
	}

	public GlobalCatalog FindGlobalCatalog(string siteName, LocatorOptions flag)
	{
		throw new NotImplementedException();
	}

	public GlobalCatalogCollection FindAllGlobalCatalogs()
	{
		throw new NotImplementedException();
	}

	public GlobalCatalogCollection FindAllGlobalCatalogs(string siteName)
	{
		throw new NotImplementedException();
	}

	public GlobalCatalogCollection FindAllDiscoverableGlobalCatalogs()
	{
		throw new NotImplementedException();
	}

	public GlobalCatalogCollection FindAllDiscoverableGlobalCatalogs(string siteName)
	{
		throw new NotImplementedException();
	}

	public TrustRelationshipInformationCollection GetAllTrustRelationships()
	{
		throw new NotImplementedException();
	}

	public ForestTrustRelationshipInformation GetTrustRelationship(string targetForestName)
	{
		throw new NotImplementedException();
	}

	public bool GetSelectiveAuthenticationStatus(string targetForestName)
	{
		throw new NotImplementedException();
	}

	public void SetSelectiveAuthenticationStatus(string targetForestName, bool enable)
	{
		throw new NotImplementedException();
	}

	public bool GetSidFilteringStatus(string targetForestName)
	{
		throw new NotImplementedException();
	}

	public void SetSidFilteringStatus(string targetForestName, bool enable)
	{
		throw new NotImplementedException();
	}

	public void DeleteLocalSideOfTrustRelationship(string targetForestName)
	{
		throw new NotImplementedException();
	}

	public void DeleteTrustRelationship(Forest targetForest)
	{
		throw new NotImplementedException();
	}

	public void VerifyOutboundTrustRelationship(string targetForestName)
	{
		throw new NotImplementedException();
	}

	public void VerifyTrustRelationship(Forest targetForest, TrustDirection direction)
	{
		throw new NotImplementedException();
	}

	public void CreateLocalSideOfTrustRelationship(string targetForestName, TrustDirection direction, string trustPassword)
	{
		throw new NotImplementedException();
	}

	public void CreateTrustRelationship(Forest targetForest, TrustDirection direction)
	{
		throw new NotImplementedException();
	}

	public void UpdateLocalSideOfTrustRelationship(string targetForestName, string newTrustPassword)
	{
		throw new NotImplementedException();
	}

	public void UpdateLocalSideOfTrustRelationship(string targetForestName, TrustDirection newTrustDirection, string newTrustPassword)
	{
		throw new NotImplementedException();
	}

	public void UpdateTrustRelationship(Forest targetForest, TrustDirection newTrustDirection)
	{
		throw new NotImplementedException();
	}

	public void RepairTrustRelationship(Forest targetForest)
	{
		throw new NotImplementedException();
	}

	public static Forest GetCurrentForest()
	{
		throw new NotImplementedException();
	}

	public void RaiseForestFunctionalityLevel(int forestMode)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
