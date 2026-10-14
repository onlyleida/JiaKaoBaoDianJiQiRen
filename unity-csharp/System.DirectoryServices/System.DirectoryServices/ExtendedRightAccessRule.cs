using System.Security.AccessControl;
using System.Security.Principal;

namespace System.DirectoryServices;

public sealed class ExtendedRightAccessRule : ActiveDirectoryAccessRule
{
	public ExtendedRightAccessRule(IdentityReference identity, AccessControlType type)
		: base(identity, 256, type, Guid.Empty, isInherited: false, InheritanceFlags.None, PropagationFlags.None, Guid.Empty)
	{
	}

	public ExtendedRightAccessRule(IdentityReference identity, AccessControlType type, Guid extendedRightType)
		: base(identity, 256, type, extendedRightType, isInherited: false, InheritanceFlags.None, PropagationFlags.None, Guid.Empty)
	{
	}

	public ExtendedRightAccessRule(IdentityReference identity, AccessControlType type, ActiveDirectorySecurityInheritance inheritanceType)
		: base(identity, 256, type, Guid.Empty, isInherited: false, InheritanceFlags.None, PropagationFlags.None, Guid.Empty)
	{
	}

	public ExtendedRightAccessRule(IdentityReference identity, AccessControlType type, Guid extendedRightType, ActiveDirectorySecurityInheritance inheritanceType)
		: base(identity, 256, type, extendedRightType, isInherited: false, InheritanceFlags.None, PropagationFlags.None, Guid.Empty)
	{
	}

	public ExtendedRightAccessRule(IdentityReference identity, AccessControlType type, ActiveDirectorySecurityInheritance inheritanceType, Guid inheritedObjectType)
		: base(identity, 256, type, Guid.Empty, isInherited: false, InheritanceFlags.None, PropagationFlags.None, inheritedObjectType)
	{
	}

	public ExtendedRightAccessRule(IdentityReference identity, AccessControlType type, Guid extendedRightType, ActiveDirectorySecurityInheritance inheritanceType, Guid inheritedObjectType)
		: base(identity, 256, type, extendedRightType, isInherited: false, InheritanceFlags.None, PropagationFlags.None, inheritedObjectType)
	{
	}
}
