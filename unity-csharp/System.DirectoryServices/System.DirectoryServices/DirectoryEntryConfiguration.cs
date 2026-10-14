using System.Security.Permissions;

namespace System.DirectoryServices;

[DirectoryServicesPermission(SecurityAction.LinkDemand, Unrestricted = true)]
public class DirectoryEntryConfiguration
{
	public ReferralChasingOption Referral
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

	public SecurityMasks SecurityMasks
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

	public int PageSize
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

	public int PasswordPort
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

	public PasswordEncodingMethod PasswordEncoding
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

	public string GetCurrentServerName()
	{
		throw new NotImplementedException();
	}

	public bool IsMutuallyAuthenticated()
	{
		throw new NotImplementedException();
	}

	public void SetUserNameQueryQuota(string accountName)
	{
		throw new NotImplementedException();
	}
}
