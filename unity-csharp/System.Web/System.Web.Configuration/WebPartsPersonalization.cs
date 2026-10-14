using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class WebPartsPersonalization : ConfigurationElement
{
	private static ConfigurationProperty authorizationProp;

	private static ConfigurationProperty defaultProviderProp;

	private static ConfigurationProperty providersProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("authorization")]
	public WebPartsPersonalizationAuthorization Authorization => (WebPartsPersonalizationAuthorization)base[authorizationProp];

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("defaultProvider", DefaultValue = "AspNetSqlPersonalizationProvider")]
	public string DefaultProvider
	{
		get
		{
			return (string)base[defaultProviderProp];
		}
		set
		{
			base[defaultProviderProp] = value;
		}
	}

	[ConfigurationProperty("providers")]
	public ProviderSettingsCollection Providers => (ProviderSettingsCollection)base[providersProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static WebPartsPersonalization()
	{
		authorizationProp = new ConfigurationProperty("authorization", typeof(WebPartsPersonalizationAuthorization), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		defaultProviderProp = new ConfigurationProperty("defaultProvider", typeof(string), "AspNetSqlPersonalizationProvider", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		providersProp = new ConfigurationProperty("providers", typeof(ProviderSettingsCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(authorizationProp);
		properties.Add(defaultProviderProp);
		properties.Add(providersProp);
	}
}
