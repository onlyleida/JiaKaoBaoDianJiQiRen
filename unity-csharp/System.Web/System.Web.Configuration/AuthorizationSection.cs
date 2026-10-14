using System.Configuration;
using System.Security.Principal;

namespace System.Web.Configuration;

public sealed class AuthorizationSection : ConfigurationSection
{
	private static ConfigurationProperty rulesProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("", Options = ConfigurationPropertyOptions.IsDefaultCollection)]
	public AuthorizationRuleCollection Rules => (AuthorizationRuleCollection)base[rulesProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static AuthorizationSection()
	{
		rulesProp = new ConfigurationProperty(string.Empty, typeof(AuthorizationRuleCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.IsDefaultCollection);
		properties = new ConfigurationPropertyCollection();
		properties.Add(rulesProp);
	}

	protected override void PostDeserialize()
	{
		base.PostDeserialize();
	}

	internal bool IsValidUser(IPrincipal user, string verb)
	{
		string user2 = ((user == null) ? string.Empty : user.Identity.Name);
		foreach (AuthorizationRule rule in Rules)
		{
			if ((rule.Verbs.Count == 0 || rule.CheckVerb(verb)) && (rule.CheckUser(user2) || (user != null && rule.CheckRole(user))))
			{
				return rule.Action == AuthorizationRuleAction.Allow;
			}
		}
		return true;
	}
}
