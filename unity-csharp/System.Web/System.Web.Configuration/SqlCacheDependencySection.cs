using System.Configuration;

namespace System.Web.Configuration;

public sealed class SqlCacheDependencySection : ConfigurationSection
{
	private static ConfigurationProperty databasesProp;

	private static ConfigurationProperty enabledProp;

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

	[ConfigurationProperty("databases")]
	public SqlCacheDependencyDatabaseCollection Databases => (SqlCacheDependencyDatabaseCollection)base[databasesProp];

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

	static SqlCacheDependencySection()
	{
		databasesProp = new ConfigurationProperty("databases", typeof(SqlCacheDependencyDatabaseCollection), null, null, null, ConfigurationPropertyOptions.None);
		enabledProp = new ConfigurationProperty("enabled", typeof(bool), true);
		pollTimeProp = new ConfigurationProperty("pollTime", typeof(int), 60000);
		properties = new ConfigurationPropertyCollection();
		properties.Add(databasesProp);
		properties.Add(enabledProp);
		properties.Add(pollTimeProp);
		elementProperty = new ConfigurationElementProperty(new CallbackValidator(typeof(SqlCacheDependencySection), ValidateElement));
	}

	private static void ValidateElement(object o)
	{
	}

	protected override void PostDeserialize()
	{
		base.PostDeserialize();
	}
}
