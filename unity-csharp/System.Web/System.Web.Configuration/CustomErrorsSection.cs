using System.Configuration;
using System.Xml;
using Unity;

namespace System.Web.Configuration;

public sealed class CustomErrorsSection : ConfigurationSection
{
	private static ConfigurationProperty defaultRedirectProp;

	private static ConfigurationProperty errorsProp;

	private static ConfigurationProperty modeProp;

	private static ConfigurationProperty redirectModeProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("defaultRedirect")]
	public string DefaultRedirect
	{
		get
		{
			return (string)base[defaultRedirectProp];
		}
		set
		{
			base[defaultRedirectProp] = value;
		}
	}

	[ConfigurationProperty("", Options = ConfigurationPropertyOptions.IsDefaultCollection)]
	public CustomErrorCollection Errors => (CustomErrorCollection)base[errorsProp];

	[ConfigurationProperty("mode", DefaultValue = "RemoteOnly")]
	public CustomErrorsMode Mode
	{
		get
		{
			return (CustomErrorsMode)base[modeProp];
		}
		set
		{
			base[modeProp] = value;
		}
	}

	[ConfigurationProperty("redirectMode", DefaultValue = CustomErrorsRedirectMode.ResponseRedirect)]
	public CustomErrorsRedirectMode RedirectMode
	{
		get
		{
			return (CustomErrorsRedirectMode)base[redirectModeProp];
		}
		set
		{
			base[redirectModeProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public bool AllowNestedErrors
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	static CustomErrorsSection()
	{
		defaultRedirectProp = new ConfigurationProperty("defaultRedirect", typeof(string), null);
		errorsProp = new ConfigurationProperty(string.Empty, typeof(CustomErrorCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.IsDefaultCollection);
		modeProp = new ConfigurationProperty("mode", typeof(CustomErrorsMode), CustomErrorsMode.RemoteOnly, new GenericEnumConverter(typeof(CustomErrorsMode)), PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		redirectModeProp = new ConfigurationProperty("redirectMode", typeof(CustomErrorsRedirectMode), CustomErrorsRedirectMode.ResponseRedirect, new GenericEnumConverter(typeof(CustomErrorsRedirectMode)), PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(defaultRedirectProp);
		properties.Add(errorsProp);
		properties.Add(modeProp);
		properties.Add(redirectModeProp);
	}

	protected internal override void DeserializeSection(XmlReader reader)
	{
		base.DeserializeSection(reader);
	}

	protected internal override void Reset(ConfigurationElement parentElement)
	{
		base.Reset(parentElement);
	}
}
