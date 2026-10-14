using System.Collections.Specialized;
using System.Security.Permissions;

namespace System.DirectoryServices.ActiveDirectory;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class ForestTrustRelationshipInformation : TrustRelationshipInformation
{
	public TopLevelNameCollection TopLevelNames
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public StringCollection ExcludedTopLevelNames
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ForestTrustDomainInfoCollection TrustedDomainInformation
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public void Save()
	{
		throw new NotImplementedException();
	}
}
