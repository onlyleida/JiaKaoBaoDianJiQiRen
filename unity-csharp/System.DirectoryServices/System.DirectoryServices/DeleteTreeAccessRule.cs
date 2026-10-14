using System.Security.AccessControl;
using System.Security.Principal;
using Unity;

namespace System.DirectoryServices;

public sealed class DeleteTreeAccessRule : ActiveDirectoryAccessRule
{
	public DeleteTreeAccessRule(IdentityReference identity, AccessControlType type)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public DeleteTreeAccessRule(IdentityReference identity, AccessControlType type, ActiveDirectorySecurityInheritance inheritanceType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public DeleteTreeAccessRule(IdentityReference identity, AccessControlType type, ActiveDirectorySecurityInheritance inheritanceType, Guid inheritedObjectType)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
