using System.Configuration;

namespace System.Web.Configuration;

public sealed class XhtmlConformanceSection : ConfigurationSection
{
	private static ConfigurationProperty modeProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("mode", DefaultValue = "Transitional")]
	public XhtmlConformanceMode Mode
	{
		get
		{
			return (XhtmlConformanceMode)base[modeProp];
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

	static XhtmlConformanceSection()
	{
		modeProp = new ConfigurationProperty("mode", typeof(XhtmlConformanceMode), XhtmlConformanceMode.Transitional, new GenericEnumConverter(typeof(XhtmlConformanceMode)), PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(modeProp);
	}
}
