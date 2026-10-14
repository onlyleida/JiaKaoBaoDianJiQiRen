using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class ExpressionBuilder : ConfigurationElement
{
	private static ConfigurationProperty expressionPrefixProp;

	private static ConfigurationProperty typeProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("expressionPrefix", DefaultValue = "", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	[StringValidator(MinLength = 1)]
	public string ExpressionPrefix
	{
		get
		{
			return (string)base[expressionPrefixProp];
		}
		set
		{
			base[expressionPrefixProp] = value;
		}
	}

	[ConfigurationProperty("type", DefaultValue = "", Options = ConfigurationPropertyOptions.IsRequired)]
	[StringValidator(MinLength = 1)]
	public string Type
	{
		get
		{
			return (string)base[typeProp];
		}
		set
		{
			base[typeProp] = value;
		}
	}

	internal Type TypeInternal => System.Type.GetType(Type, throwOnError: true);

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static ExpressionBuilder()
	{
		expressionPrefixProp = new ConfigurationProperty("expressionPrefix", typeof(string), "", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		typeProp = new ConfigurationProperty("type", typeof(string), "", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired);
		properties = new ConfigurationPropertyCollection();
		properties.Add(expressionPrefixProp);
		properties.Add(typeProp);
	}

	internal ExpressionBuilder()
	{
	}

	public ExpressionBuilder(string expressionPrefix, string theType)
	{
		ExpressionPrefix = expressionPrefix;
		Type = theType;
	}
}
