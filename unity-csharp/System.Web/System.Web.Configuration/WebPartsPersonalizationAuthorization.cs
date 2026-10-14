using System.Configuration;

namespace System.Web.Configuration;

public sealed class WebPartsPersonalizationAuthorization : ConfigurationElement
{
	private static ConfigurationProperty Prop;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("", Options = ConfigurationPropertyOptions.IsDefaultCollection)]
	public AuthorizationRuleCollection Rules => (AuthorizationRuleCollection)base[Prop];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static WebPartsPersonalizationAuthorization()
	{
		Prop = new ConfigurationProperty("", typeof(AuthorizationRuleCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.IsDefaultCollection);
		properties = new ConfigurationPropertyCollection();
		properties.Add(Prop);
	}
}
