using System.Security.AccessControl;
using System.Security.Principal;

namespace System.DirectoryServices;

public sealed class PropertyAccessRule : ActiveDirectoryAccessRule
{
	public PropertyAccessRule(IdentityReference identity, AccessControlType type, PropertyAccess access)
		: base(identity, 0, type, Guid.Empty, isInherited: false, InheritanceFlags.None, PropagationFlags.None, Guid.Empty)
	{
	}

	public PropertyAccessRule(IdentityReference identity, AccessControlType type, PropertyAccess access, Guid propertyType)
		: base(identity, 0, type, propertyType, isInherited: false, InheritanceFlags.None, PropagationFlags.None, Guid.Empty)
	{
	}

	public PropertyAccessRule(IdentityReference identity, AccessControlType type, PropertyAccess access, ActiveDirectorySecurityInheritance inheritanceType)
		: base(identity, 0, type, Guid.Empty, isInherited: false, InheritanceFlags.None, PropagationFlags.None, Guid.Empty)
	{
	}

	public PropertyAccessRule(IdentityReference identity, AccessControlType type, PropertyAccess access, Guid propertyType, ActiveDirectorySecurityInheritance inheritanceType)
		: base(identity, 0, type, propertyType, isInherited: false, InheritanceFlags.None, PropagationFlags.None, Guid.Empty)
	{
	}

	public PropertyAccessRule(IdentityReference identity, AccessControlType type, PropertyAccess access, ActiveDirectorySecurityInheritance inheritanceType, Guid inheritedObjectType)
		: base(identity, 0, type, Guid.Empty, isInherited: false, InheritanceFlags.None, PropagationFlags.None, inheritedObjectType)
	{
	}

	public PropertyAccessRule(IdentityReference identity, AccessControlType type, PropertyAccess access, Guid propertyType, ActiveDirectorySecurityInheritance inheritanceType, Guid inheritedObjectType)
		: base(identity, 0, type, propertyType, isInherited: false, InheritanceFlags.None, PropagationFlags.None, inheritedObjectType)
	{
	}
}
