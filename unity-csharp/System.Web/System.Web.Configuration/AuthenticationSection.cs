using System.Configuration;

namespace System.Web.Configuration;

public sealed class AuthenticationSection : ConfigurationSection
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty formsProp;

	private static ConfigurationProperty passportProp;

	private static ConfigurationProperty modeProp;

	[ConfigurationProperty("forms")]
	public FormsAuthenticationConfiguration Forms => (FormsAuthenticationConfiguration)base[formsProp];

	[Obsolete("This property is obsolete. The Passport authentication product is no longer supported and has been superseded by Live ID.")]
	[ConfigurationProperty("passport")]
	public PassportAuthentication Passport => (PassportAuthentication)base[passportProp];

	[ConfigurationProperty("mode", DefaultValue = "Windows")]
	public AuthenticationMode Mode
	{
		get
		{
			return (AuthenticationMode)base[modeProp];
		}
		set
		{
			base[modeProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static AuthenticationSection()
	{
		formsProp = new ConfigurationProperty("forms", typeof(FormsAuthenticationConfiguration), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		passportProp = new ConfigurationProperty("passport", typeof(PassportAuthentication), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		modeProp = new ConfigurationProperty("mode", typeof(AuthenticationMode), AuthenticationMode.Windows, new GenericEnumConverter(typeof(AuthenticationMode)), PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(formsProp);
		properties.Add(passportProp);
		properties.Add(modeProp);
	}

	protected internal override void Reset(ConfigurationElement parentElement)
	{
		base.Reset(parentElement);
	}
}
