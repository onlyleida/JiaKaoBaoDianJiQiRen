using System.Security.AccessControl;
using System.Security.Principal;

namespace System.DirectoryServices;

public class ActiveDirectorySecurity : DirectoryObjectSecurity
{
	public override Type AccessRightType
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public override Type AccessRuleType
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public override Type AuditRuleType
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public void AddAccessRule(ActiveDirectoryAccessRule rule)
	{
		throw new NotImplementedException();
	}

	public void SetAccessRule(ActiveDirectoryAccessRule rule)
	{
		throw new NotImplementedException();
	}

	public void ResetAccessRule(ActiveDirectoryAccessRule rule)
	{
		throw new NotImplementedException();
	}

	public void RemoveAccess(IdentityReference identity, AccessControlType type)
	{
		throw new NotImplementedException();
	}

	public bool RemoveAccessRule(ActiveDirectoryAccessRule rule)
	{
		throw new NotImplementedException();
	}

	public void RemoveAccessRuleSpecific(ActiveDirectoryAccessRule rule)
	{
		throw new NotImplementedException();
	}

	public override bool ModifyAccessRule(AccessControlModification modification, AccessRule rule, out bool modified)
	{
		throw new NotImplementedException();
	}

	public override void PurgeAccessRules(IdentityReference identity)
	{
		throw new NotImplementedException();
	}

	public void AddAuditRule(ActiveDirectoryAuditRule rule)
	{
		throw new NotImplementedException();
	}

	public void SetAuditRule(ActiveDirectoryAuditRule rule)
	{
		throw new NotImplementedException();
	}

	public void RemoveAudit(IdentityReference identity)
	{
		throw new NotImplementedException();
	}

	public bool RemoveAuditRule(ActiveDirectoryAuditRule rule)
	{
		throw new NotImplementedException();
	}

	public void RemoveAuditRuleSpecific(ActiveDirectoryAuditRule rule)
	{
		throw new NotImplementedException();
	}

	public override bool ModifyAuditRule(AccessControlModification modification, AuditRule rule, out bool modified)
	{
		throw new NotImplementedException();
	}

	public override void PurgeAuditRules(IdentityReference identity)
	{
		throw new NotImplementedException();
	}

	public sealed override AccessRule AccessRuleFactory(IdentityReference identityReference, int accessMask, bool isInherited, InheritanceFlags inheritanceFlags, PropagationFlags propagationFlags, AccessControlType type)
	{
		throw new NotImplementedException();
	}

	public sealed override AccessRule AccessRuleFactory(IdentityReference identityReference, int accessMask, bool isInherited, InheritanceFlags inheritanceFlags, PropagationFlags propagationFlags, AccessControlType type, Guid objectGuid, Guid inheritedObjectGuid)
	{
		throw new NotImplementedException();
	}

	public sealed override AuditRule AuditRuleFactory(IdentityReference identityReference, int accessMask, bool isInherited, InheritanceFlags inheritanceFlags, PropagationFlags propagationFlags, AuditFlags flags)
	{
		throw new NotImplementedException();
	}

	public sealed override AuditRule AuditRuleFactory(IdentityReference identityReference, int accessMask, bool isInherited, InheritanceFlags inheritanceFlags, PropagationFlags propagationFlags, AuditFlags flags, Guid objectGuid, Guid inheritedObjectGuid)
	{
		throw new NotImplementedException();
	}
}
