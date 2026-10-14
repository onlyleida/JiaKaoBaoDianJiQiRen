using System.Configuration;

namespace System.Web.Configuration;

public sealed class WebPartsSection : ConfigurationSection
{
	private static ConfigurationProperty enableExportProp;

	private static ConfigurationProperty personalizationProp;

	private static ConfigurationProperty transformersProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("enableExport", DefaultValue = "False")]
	public bool EnableExport
	{
		get
		{
			return (bool)base[enableExportProp];
		}
		set
		{
			base[enableExportProp] = value;
		}
	}

	[ConfigurationProperty("personalization")]
	public WebPartsPersonalization Personalization => (WebPartsPersonalization)base[personalizationProp];

	[ConfigurationProperty("transformers")]
	public TransformerInfoCollection Transformers => (TransformerInfoCollection)base[transformersProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static WebPartsSection()
	{
		enableExportProp = new ConfigurationProperty("enableExport", typeof(bool), false);
		personalizationProp = new ConfigurationProperty("personalization", typeof(WebPartsPersonalization), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		transformersProp = new ConfigurationProperty("transformers", typeof(TransformerInfoCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(enableExportProp);
		properties.Add(personalizationProp);
		properties.Add(transformersProp);
	}

	[MonoTODO("why override this?")]
	protected internal override object GetRuntimeObject()
	{
		return this;
	}
}
