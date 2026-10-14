using System.Security.AccessControl;
using System.Security.Principal;

namespace System.DirectoryServices;

public class ActiveDirectoryAuditRule : ObjectAuditRule
{
	public ActiveDirectoryRights ActiveDirectoryRights
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectorySecurityInheritance InheritanceType
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public ActiveDirectoryAuditRule(IdentityReference identity, ActiveDirectoryRights adRights, AuditFlags auditFlags)
		: this(identity, (int)adRights, auditFlags, Guid.Empty, isInherited: false, InheritanceFlags.None, PropagationFlags.None, Guid.Empty)
	{
	}

	public ActiveDirectoryAuditRule(IdentityReference identity, ActiveDirectoryRights adRights, AuditFlags auditFlags, Guid objectType)
		: this(identity, (int)adRights, auditFlags, objectType, isInherited: false, InheritanceFlags.None, PropagationFlags.None, Guid.Empty)
	{
	}

	public ActiveDirectoryAuditRule(IdentityReference identity, ActiveDirectoryRights adRights, AuditFlags auditFlags, ActiveDirectorySecurityInheritance inheritanceType)
		: this(identity, (int)adRights, auditFlags, Guid.Empty, isInherited: false, InheritanceFlags.None, PropagationFlags.None, Guid.Empty)
	{
	}

	public ActiveDirectoryAuditRule(IdentityReference identity, ActiveDirectoryRights adRights, AuditFlags auditFlags, Guid objectType, ActiveDirectorySecurityInheritance inheritanceType)
		: this(identity, (int)adRights, auditFlags, objectType, isInherited: false, InheritanceFlags.None, PropagationFlags.None, Guid.Empty)
	{
	}

	public ActiveDirectoryAuditRule(IdentityReference identity, ActiveDirectoryRights adRights, AuditFlags auditFlags, ActiveDirectorySecurityInheritance inheritanceType, Guid inheritedObjectType)
		: this(identity, (int)adRights, auditFlags, Guid.Empty, isInherited: false, InheritanceFlags.None, PropagationFlags.None, inheritedObjectType)
	{
	}

	public ActiveDirectoryAuditRule(IdentityReference identity, ActiveDirectoryRights adRights, AuditFlags auditFlags, Guid objectType, ActiveDirectorySecurityInheritance inheritanceType, Guid inheritedObjectType)
		: this(identity, (int)adRights, auditFlags, objectType, isInherited: false, InheritanceFlags.None, PropagationFlags.None, inheritedObjectType)
	{
	}

	internal ActiveDirectoryAuditRule(IdentityReference identity, int accessMask, AuditFlags auditFlags, Guid objectGuid, bool isInherited, InheritanceFlags inheritanceFlags, PropagationFlags propagationFlags, Guid inheritedObjectType)
		: base(identity, accessMask, isInherited, inheritanceFlags, propagationFlags, objectGuid, inheritedObjectType, auditFlags)
	{
	}
}
