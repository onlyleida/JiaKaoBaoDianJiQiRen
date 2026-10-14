using System.Security.Permissions;

namespace System.Web.Services.Protocols;

[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
public sealed class PatternMatcher
{
	private MatchType matchType;

	public PatternMatcher(Type type)
	{
		matchType = MatchType.Reflect(type);
	}

	public object Match(string text)
	{
		return matchType.Match(text);
	}
}
