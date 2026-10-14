using System.Configuration;

namespace System.Web.Configuration;

public sealed class SecurityPolicySection : ConfigurationSection
{
	private static ConfigurationProperty Prop;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("", Options = ConfigurationPropertyOptions.IsDefaultCollection)]
	public TrustLevelCollection TrustLevels => (TrustLevelCollection)base[Prop];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static SecurityPolicySection()
	{
		Prop = new ConfigurationProperty("", typeof(TrustLevelCollection), null, null, null, ConfigurationPropertyOptions.IsDefaultCollection);
		properties = new ConfigurationPropertyCollection();
		properties.Add(Prop);
	}
}
