using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class SqlCacheDependencyDatabase : ConfigurationElement
{
	private static ConfigurationProperty connectionStringNameProp;

	private static ConfigurationProperty nameProp;

	private static ConfigurationProperty pollTimeProp;

	private static ConfigurationPropertyCollection properties;

	private static ConfigurationElementProperty elementProperty;

	protected override ConfigurationElementProperty ElementProperty
	{
		protected internal get
		{
			return elementProperty;
		}
	}

	[ConfigurationProperty("connectionStringName", Options = ConfigurationPropertyOptions.IsRequired)]
	[StringValidator(MinLength = 1)]
	public string ConnectionStringName
	{
		get
		{
			return (string)base[connectionStringNameProp];
		}
		set
		{
			base[connectionStringNameProp] = value;
		}
	}

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("name", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
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

	[ConfigurationProperty("pollTime", DefaultValue = "60000")]
	public int PollTime
	{
		get
		{
			return (int)base[pollTimeProp];
		}
		set
		{
			base[pollTimeProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static SqlCacheDependencyDatabase()
	{
		connectionStringNameProp = new ConfigurationProperty("connectionStringName", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired);
		nameProp = new ConfigurationProperty("name", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		pollTimeProp = new ConfigurationProperty("pollTime", typeof(int), 60000);
		properties = new ConfigurationPropertyCollection();
		properties.Add(connectionStringNameProp);
		properties.Add(nameProp);
		properties.Add(pollTimeProp);
		elementProperty = new ConfigurationElementProperty(new CallbackValidator(typeof(SqlCacheDependencyDatabase), ValidateElement));
	}

	internal SqlCacheDependencyDatabase()
	{
	}

	public SqlCacheDependencyDatabase(string name, string connectionStringName)
	{
		Name = name;
		ConnectionStringName = name;
	}

	public SqlCacheDependencyDatabase(string name, string connectionStringName, int pollTime)
	{
		Name = name;
		ConnectionStringName = name;
		PollTime = pollTime;
	}

	private static void ValidateElement(object o)
	{
	}
}
