using System.Security.AccessControl;
using System.Security.Principal;
using Unity;

namespace System.DirectoryServices;

public sealed class DeleteChildAccessRule : ActiveDirectoryAccessRule
{
	public DeleteChildAccessRule(IdentityReference identity, AccessControlType type)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public DeleteChildAccessRule(IdentityReference identity, AccessControlType type, ActiveDirectorySecurityInheritance inheritanceType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public DeleteChildAccessRule(IdentityReference identity, AccessControlType type, ActiveDirectorySecurityInheritance inheritanceType, Guid inheritedObjectType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public DeleteChildAccessRule(IdentityReference identity, AccessControlType type, Guid childType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public DeleteChildAccessRule(IdentityReference identity, AccessControlType type, Guid childType, ActiveDirectorySecurityInheritance inheritanceType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public DeleteChildAccessRule(IdentityReference identity, AccessControlType type, Guid childType, ActiveDirectorySecurityInheritance inheritanceType, Guid inheritedObjectType)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
