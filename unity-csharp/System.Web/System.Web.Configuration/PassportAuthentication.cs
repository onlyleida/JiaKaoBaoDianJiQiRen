using System.Configuration;

namespace System.Web.Configuration;

[Obsolete("This type is obsolete. The Passport authentication product is no longer supported and has been superseded by Live ID.")]
public sealed class PassportAuthentication : ConfigurationElement
{
	private static ConfigurationProperty redirectUrlProp;

	private static ConfigurationPropertyCollection properties;

	private static ConfigurationElementProperty elementProperty;

	protected override ConfigurationElementProperty ElementProperty
	{
		protected internal get
		{
			return elementProperty;
		}
	}

	[StringValidator]
	[ConfigurationProperty("redirectUrl", DefaultValue = "internal")]
	public string RedirectUrl
	{
		get
		{
			return (string)base[redirectUrlProp];
		}
		set
		{
			base[redirectUrlProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static PassportAuthentication()
	{
		redirectUrlProp = new ConfigurationProperty("redirectUrl", typeof(string), "internal");
		properties = new ConfigurationPropertyCollection();
		properties.Add(redirectUrlProp);
		elementProperty = new ConfigurationElementProperty(new CallbackValidator(typeof(PassportAuthentication), ValidateElement));
	}

	private static void ValidateElement(object o)
	{
	}
}
