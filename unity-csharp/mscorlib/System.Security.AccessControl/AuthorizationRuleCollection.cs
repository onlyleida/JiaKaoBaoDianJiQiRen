using System.Collections;

namespace System.Security.AccessControl;

public sealed class AuthorizationRuleCollection : ReadOnlyCollectionBase
{
	public AuthorizationRule this[int index] => (AuthorizationRule)InnerList[index];

	public AuthorizationRuleCollection()
	{
	}

	internal AuthorizationRuleCollection(AuthorizationRule[] rules)
	{
		InnerList.AddRange(rules);
	}

	public void AddRule(AuthorizationRule rule)
	{
		InnerList.Add(rule);
	}

	public void CopyTo(AuthorizationRule[] rules, int index)
	{
		InnerList.CopyTo(rules, index);
	}
}
