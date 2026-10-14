using System.Configuration;

namespace System.Web.Configuration;

public sealed class FormsAuthenticationCredentials : ConfigurationElement
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty passwordFormatProp;

	private static ConfigurationProperty usersProp;

	[ConfigurationProperty("passwordFormat", DefaultValue = "SHA1")]
	public FormsAuthPasswordFormat PasswordFormat
	{
		get
		{
			return (FormsAuthPasswordFormat)base[passwordFormatProp];
		}
		set
		{
			base[passwordFormatProp] = value;
		}
	}

	[ConfigurationProperty("", Options = ConfigurationPropertyOptions.IsDefaultCollection)]
	public FormsAuthenticationUserCollection Users => (FormsAuthenticationUserCollection)base[usersProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static FormsAuthenticationCredentials()
	{
		passwordFormatProp = new ConfigurationProperty("passwordFormat", typeof(FormsAuthPasswordFormat), FormsAuthPasswordFormat.SHA1, new GenericEnumConverter(typeof(FormsAuthPasswordFormat)), PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		usersProp = new ConfigurationProperty("", typeof(FormsAuthenticationUserCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.IsDefaultCollection);
		properties = new ConfigurationPropertyCollection();
		properties.Add(passwordFormatProp);
		properties.Add(usersProp);
	}
}
