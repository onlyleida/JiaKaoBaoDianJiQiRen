using System.Configuration;

namespace System.Web.Configuration;

public sealed class DeploymentSection : ConfigurationSection
{
	private static ConfigurationProperty retailProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("retail", DefaultValue = "False")]
	public bool Retail
	{
		get
		{
			return (bool)base[retailProp];
		}
		set
		{
			base[retailProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static DeploymentSection()
	{
		retailProp = new ConfigurationProperty("retail", typeof(bool), false);
		properties = new ConfigurationPropertyCollection();
		properties.Add(retailProp);
	}
}
