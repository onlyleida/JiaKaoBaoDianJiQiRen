using System.Runtime.InteropServices;
using System.Security.Permissions;

namespace System.Security.Policy;

[Serializable]
[ComVisible(true)]
public sealed class FileCodeGroup : CodeGroup
{
	private FileIOPermissionAccess m_access;

	public override string MergeLogic => "Union";

	public override string AttributeString => null;

	public override string PermissionSetName => "Same directory FileIO - " + m_access;

	public FileCodeGroup(IMembershipCondition membershipCondition, FileIOPermissionAccess access)
		: base(membershipCondition, null)
	{
		m_access = access;
	}

	internal FileCodeGroup(SecurityElement e, PolicyLevel level)
		: base(e, level)
	{
	}

	public override CodeGroup Copy()
	{
		FileCodeGroup fileCodeGroup = new FileCodeGroup(MembershipCondition, m_access);
		fileCodeGroup.Name = Name;
		fileCodeGroup.Description = Description;
		foreach (CodeGroup child in Children)
		{
			fileCodeGroup.AddChild(child.Copy());
		}
		return fileCodeGroup;
	}

	public override PolicyStatement Resolve(Evidence evidence)
	{
		if (evidence == null)
		{
			throw new ArgumentNullException("evidence");
		}
		if (!MembershipCondition.Check(evidence))
		{
			return null;
		}
		PermissionSet permissionSet = null;
		permissionSet = ((PolicyStatement != null) ? PolicyStatement.PermissionSet.Copy() : new PermissionSet(PermissionState.None));
		if (Children.Count > 0)
		{
			foreach (CodeGroup child in Children)
			{
				PolicyStatement policyStatement = child.Resolve(evidence);
				if (policyStatement != null)
				{
					permissionSet = permissionSet.Union(policyStatement.PermissionSet);
				}
			}
		}
		PolicyStatement policyStatement2 = null;
		policyStatement2 = ((PolicyStatement == null) ? PolicyStatement.Empty() : PolicyStatement.Copy());
		policyStatement2.PermissionSet = permissionSet;
		return policyStatement2;
	}

	public override CodeGroup ResolveMatchingCodeGroups(Evidence evidence)
	{
		if (evidence == null)
		{
			throw new ArgumentNullException("evidence");
		}
		if (!MembershipCondition.Check(evidence))
		{
			return null;
		}
		FileCodeGroup fileCodeGroup = new FileCodeGroup(MembershipCondition, m_access);
		foreach (CodeGroup child in Children)
		{
			CodeGroup codeGroup = child.ResolveMatchingCodeGroups(evidence);
			if (codeGroup != null)
			{
				fileCodeGroup.AddChild(codeGroup);
			}
		}
		return fileCodeGroup;
	}

	public override bool Equals(object o)
	{
		if (!(o is FileCodeGroup))
		{
			return false;
		}
		if (m_access != ((FileCodeGroup)o).m_access)
		{
			return false;
		}
		return Equals((CodeGroup)o, compareChildren: false);
	}

	public override int GetHashCode()
	{
		return m_access.GetHashCode();
	}

	protected override void ParseXml(SecurityElement e, PolicyLevel level)
	{
		string text = e.Attribute("Access");
		if (text != null)
		{
			m_access = (FileIOPermissionAccess)Enum.Parse(typeof(FileIOPermissionAccess), text, ignoreCase: true);
		}
		else
		{
			m_access = FileIOPermissionAccess.NoAccess;
		}
	}

	protected override void CreateXml(SecurityElement element, PolicyLevel level)
	{
		element.AddAttribute("Access", m_access.ToString());
	}
}
