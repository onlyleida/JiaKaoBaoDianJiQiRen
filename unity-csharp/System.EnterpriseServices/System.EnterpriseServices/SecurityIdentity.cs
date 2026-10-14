namespace System.EnterpriseServices;

public sealed class SecurityIdentity
{
	public string AccountName
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
	}

	public AuthenticationOption AuthenticationLevel
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
	}

	public int AuthenticationService
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
	}

	public ImpersonationLevelOption ImpersonationLevel
	{
		[MonoTODO]
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO]
	internal SecurityIdentity()
	{
	}

	[MonoTODO]
	internal SecurityIdentity(ISecurityIdentityColl collection)
	{
	}
}
