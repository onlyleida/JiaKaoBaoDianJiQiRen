using System.Configuration;

namespace System.Web.Configuration;

public sealed class UrlMapping : ConfigurationElement
{
	private static ConfigurationProperty mappedUrlProp;

	private static ConfigurationProperty urlProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("mappedUrl", Options = ConfigurationPropertyOptions.IsRequired)]
	public string MappedUrl
	{
		get
		{
			return (string)base[mappedUrlProp];
		}
		internal set
		{
			base[mappedUrlProp] = value;
		}
	}

	[ConfigurationProperty("url", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	public string Url
	{
		get
		{
			return (string)base[urlProp];
		}
		internal set
		{
			base[urlProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	private static void ValidateUrl(object value)
	{
		string text = value as string;
		if (string.IsNullOrEmpty(text) || VirtualPathUtility.IsAppRelative(text))
		{
			return;
		}
		throw new ConfigurationException("Only app-relative (~/) URLs are allowed");
	}

	static UrlMapping()
	{
		mappedUrlProp = new ConfigurationProperty("mappedUrl", typeof(string), null, PropertyHelper.WhiteSpaceTrimStringConverter, PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired);
		urlProp = new ConfigurationProperty("url", typeof(string), null, PropertyHelper.WhiteSpaceTrimStringConverter, new CallbackValidator(typeof(string), ValidateUrl), ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		properties = new ConfigurationPropertyCollection();
		properties.Add(mappedUrlProp);
		properties.Add(urlProp);
	}

	internal UrlMapping()
	{
	}

	public UrlMapping(string url, string mappedUrl)
	{
		Url = url;
		MappedUrl = mappedUrl;
	}
}
