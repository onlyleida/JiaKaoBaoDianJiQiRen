using System.ComponentModel;
using System.Configuration;
using System.Web.UI;

namespace System.Web.Configuration;

public sealed class OutputCacheProfile : ConfigurationElement
{
	private static ConfigurationProperty durationProp;

	private static ConfigurationProperty enabledProp;

	private static ConfigurationProperty locationProp;

	private static ConfigurationProperty nameProp;

	private static ConfigurationProperty noStoreProp;

	private static ConfigurationProperty sqlDependencyProp;

	private static ConfigurationProperty varyByContentEncodingProp;

	private static ConfigurationProperty varyByControlProp;

	private static ConfigurationProperty varyByCustomProp;

	private static ConfigurationProperty varyByHeaderProp;

	private static ConfigurationProperty varyByParamProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("duration", DefaultValue = "-1")]
	public int Duration
	{
		get
		{
			return (int)base[durationProp];
		}
		set
		{
			base[durationProp] = value;
		}
	}

	[ConfigurationProperty("enabled", DefaultValue = "True")]
	public bool Enabled
	{
		get
		{
			return (bool)base[enabledProp];
		}
		set
		{
			base[enabledProp] = value;
		}
	}

	[ConfigurationProperty("location")]
	public OutputCacheLocation Location
	{
		get
		{
			return (OutputCacheLocation)base[locationProp];
		}
		set
		{
			base[locationProp] = value;
		}
	}

	[StringValidator(MinLength = 1)]
	[TypeConverter(typeof(WhiteSpaceTrimStringConverter))]
	[ConfigurationProperty("name", DefaultValue = "", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	public string Name
	{
		get
		{
			return (string)base[nameProp];
		}
		set
		{
			base[nameProp] = value;
		}
	}

	[ConfigurationProperty("noStore", DefaultValue = "False")]
	public bool NoStore
	{
		get
		{
			return (bool)base[noStoreProp];
		}
		set
		{
			base[noStoreProp] = value;
		}
	}

	[ConfigurationProperty("sqlDependency")]
	public string SqlDependency
	{
		get
		{
			return (string)base[sqlDependencyProp];
		}
		set
		{
			base[sqlDependencyProp] = value;
		}
	}

	[ConfigurationProperty("varyByContentEncoding")]
	public string VaryByContentEncoding
	{
		get
		{
			return (string)base[varyByContentEncodingProp];
		}
		set
		{
			base[varyByContentEncodingProp] = value;
		}
	}

	[ConfigurationProperty("varyByControl")]
	public string VaryByControl
	{
		get
		{
			return (string)base[varyByControlProp];
		}
		set
		{
			base[varyByControlProp] = value;
		}
	}

	[ConfigurationProperty("varyByCustom")]
	public string VaryByCustom
	{
		get
		{
			return (string)base[varyByCustomProp];
		}
		set
		{
			base[varyByCustomProp] = value;
		}
	}

	[ConfigurationProperty("varyByHeader")]
	public string VaryByHeader
	{
		get
		{
			return (string)base[varyByHeaderProp];
		}
		set
		{
			base[varyByHeaderProp] = value;
		}
	}

	[ConfigurationProperty("varyByParam")]
	public string VaryByParam
	{
		get
		{
			return (string)base[varyByParamProp];
		}
		set
		{
			base[varyByParamProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static OutputCacheProfile()
	{
		durationProp = new ConfigurationProperty("duration", typeof(int), -1);
		enabledProp = new ConfigurationProperty("enabled", typeof(bool), true);
		locationProp = new ConfigurationProperty("location", typeof(OutputCacheLocation), null, new GenericEnumConverter(typeof(OutputCacheLocation)), PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		nameProp = new ConfigurationProperty("name", typeof(string), "", PropertyHelper.WhiteSpaceTrimStringConverter, PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		noStoreProp = new ConfigurationProperty("noStore", typeof(bool), false);
		sqlDependencyProp = new ConfigurationProperty("sqlDependency", typeof(string));
		varyByContentEncodingProp = new ConfigurationProperty("varyByContentEncoding", typeof(string));
		varyByControlProp = new ConfigurationProperty("varyByControl", typeof(string));
		varyByCustomProp = new ConfigurationProperty("varyByCustom", typeof(string));
		varyByHeaderProp = new ConfigurationProperty("varyByHeader", typeof(string));
		varyByParamProp = new ConfigurationProperty("varyByParam", typeof(string));
		properties = new ConfigurationPropertyCollection();
		properties.Add(durationProp);
		properties.Add(enabledProp);
		properties.Add(locationProp);
		properties.Add(nameProp);
		properties.Add(noStoreProp);
		properties.Add(sqlDependencyProp);
		properties.Add(varyByContentEncodingProp);
		properties.Add(varyByControlProp);
		properties.Add(varyByCustomProp);
		properties.Add(varyByHeaderProp);
		properties.Add(varyByParamProp);
	}

	internal OutputCacheProfile()
	{
	}

	public OutputCacheProfile(string name)
	{
		Name = name;
	}
}
