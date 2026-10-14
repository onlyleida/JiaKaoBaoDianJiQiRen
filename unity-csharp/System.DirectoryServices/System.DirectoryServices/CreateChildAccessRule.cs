using System.Security.AccessControl;
using System.Security.Principal;
using Unity;

namespace System.DirectoryServices;

public sealed class CreateChildAccessRule : ActiveDirectoryAccessRule
{
	public CreateChildAccessRule(IdentityReference identity, AccessControlType type)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public CreateChildAccessRule(IdentityReference identity, AccessControlType type, ActiveDirectorySecurityInheritance inheritanceType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public CreateChildAccessRule(IdentityReference identity, AccessControlType type, ActiveDirectorySecurityInheritance inheritanceType, Guid inheritedObjectType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public CreateChildAccessRule(IdentityReference identity, AccessControlType type, Guid childType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public CreateChildAccessRule(IdentityReference identity, AccessControlType type, Guid childType, ActiveDirectorySecurityInheritance inheritanceType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public CreateChildAccessRule(IdentityReference identity, AccessControlType type, Guid childType, ActiveDirectorySecurityInheritance inheritanceType, Guid inheritedObjectType)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
