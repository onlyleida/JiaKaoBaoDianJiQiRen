using System.Security.Permissions;
using Unity;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class Domain : ActiveDirectoryPartition
{
	public Forest Forest
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DomainControllerCollection DomainControllers
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DomainCollection Children
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DomainMode DomainMode
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public Domain Parent
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DomainController PdcRoleOwner
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DomainController RidRoleOwner
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DomainController InfrastructureRoleOwner
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public int DomainModeLevel
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public static Domain GetDomain(DirectoryContext context)
	{
		throw new NotImplementedException();
	}

	public static Domain GetComputerDomain()
	{
		throw new NotImplementedException();
	}

	public void RaiseDomainFunctionality(DomainMode domainMode)
	{
		throw new NotImplementedException();
	}

	public DomainController FindDomainController()
	{
		throw new NotImplementedException();
	}

	public DomainController FindDomainController(string siteName)
	{
		throw new NotImplementedException();
	}

	public DomainController FindDomainController(LocatorOptions flag)
	{
		throw new NotImplementedException();
	}

	public DomainController FindDomainController(string siteName, LocatorOptions flag)
	{
		throw new NotImplementedException();
	}

	public DomainControllerCollection FindAllDomainControllers()
	{
		throw new NotImplementedException();
	}

	public DomainControllerCollection FindAllDomainControllers(string siteName)
	{
		throw new NotImplementedException();
	}

	public DomainControllerCollection FindAllDiscoverableDomainControllers()
	{
		throw new NotImplementedException();
	}

	public DomainControllerCollection FindAllDiscoverableDomainControllers(string siteName)
	{
		throw new NotImplementedException();
	}

	[DirectoryServicesPermission(SecurityAction.InheritanceDemand, Unrestricted = true)]
	[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
	public override DirectoryEntry GetDirectoryEntry()
	{
		throw new NotImplementedException();
	}

	public TrustRelationshipInformationCollection GetAllTrustRelationships()
	{
		throw new NotImplementedException();
	}

	public TrustRelationshipInformation GetTrustRelationship(string targetDomainName)
	{
		throw new NotImplementedException();
	}

	public bool GetSelectiveAuthenticationStatus(string targetDomainName)
	{
		throw new NotImplementedException();
	}

	public void SetSelectiveAuthenticationStatus(string targetDomainName, bool enable)
	{
		throw new NotImplementedException();
	}

	public bool GetSidFilteringStatus(string targetDomainName)
	{
		throw new NotImplementedException();
	}

	public void SetSidFilteringStatus(string targetDomainName, bool enable)
	{
		throw new NotImplementedException();
	}

	public void DeleteLocalSideOfTrustRelationship(string targetDomainName)
	{
		throw new NotImplementedException();
	}

	public void DeleteTrustRelationship(Domain targetDomain)
	{
		throw new NotImplementedException();
	}

	public void VerifyOutboundTrustRelationship(string targetDomainName)
	{
		throw new NotImplementedException();
	}

	public void VerifyTrustRelationship(Domain targetDomain, TrustDirection direction)
	{
		throw new NotImplementedException();
	}

	public void CreateLocalSideOfTrustRelationship(string targetDomainName, TrustDirection direction, string trustPassword)
	{
		throw new NotImplementedException();
	}

	public void CreateTrustRelationship(Domain targetDomain, TrustDirection direction)
	{
		throw new NotImplementedException();
	}

	public void UpdateLocalSideOfTrustRelationship(string targetDomainName, string newTrustPassword)
	{
		throw new NotImplementedException();
	}

	public void UpdateLocalSideOfTrustRelationship(string targetDomainName, TrustDirection newTrustDirection, string newTrustPassword)
	{
		throw new NotImplementedException();
	}

	public void UpdateTrustRelationship(Domain targetDomain, TrustDirection newTrustDirection)
	{
		throw new NotImplementedException();
	}

	public void RepairTrustRelationship(Domain targetDomain)
	{
		throw new NotImplementedException();
	}

	public static Domain GetCurrentDomain()
	{
		throw new NotImplementedException();
	}

	public void RaiseDomainFunctionalityLevel(int domainMode)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
