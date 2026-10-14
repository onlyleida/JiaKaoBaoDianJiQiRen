using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class CustomError : ConfigurationElement
{
	private static ConfigurationProperty redirectProp;

	private static ConfigurationProperty statusCodeProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("redirect", Options = ConfigurationPropertyOptions.IsRequired)]
	[StringValidator(MinLength = 1)]
	public string Redirect
	{
		get
		{
			return (string)base[redirectProp];
		}
		set
		{
			base[redirectProp] = value;
		}
	}

	[ConfigurationProperty("statusCode", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	[IntegerValidator(MinValue = 100, MaxValue = 999)]
	public int StatusCode
	{
		get
		{
			return (int)base[statusCodeProp];
		}
		set
		{
			base[statusCodeProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static CustomError()
	{
		redirectProp = new ConfigurationProperty("redirect", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), new StringValidator(1), ConfigurationPropertyOptions.IsRequired);
		statusCodeProp = new ConfigurationProperty("statusCode", typeof(int), null, TypeDescriptor.GetConverter(typeof(int)), new IntegerValidator(100, 999), ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		properties = new ConfigurationPropertyCollection();
		properties.Add(redirectProp);
		properties.Add(statusCodeProp);
	}

	internal CustomError()
	{
	}

	public CustomError(int statusCode, string redirect)
	{
		StatusCode = statusCode;
		Redirect = redirect;
	}

	public override bool Equals(object customError)
	{
		if (!(customError is CustomError customError2))
		{
			return false;
		}
		if (Redirect == customError2.Redirect)
		{
			return StatusCode == customError2.StatusCode;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return Redirect.GetHashCode() + StatusCode;
	}
}
