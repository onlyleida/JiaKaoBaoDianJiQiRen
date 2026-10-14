using System.Configuration;

namespace System.Web.Configuration;

public sealed class ClientTargetSection : ConfigurationSection
{
	private static ConfigurationProperty clientTargetsProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("", Options = (ConfigurationPropertyOptions.IsDefaultCollection | ConfigurationPropertyOptions.IsRequired))]
	public ClientTargetCollection ClientTargets => (ClientTargetCollection)base[clientTargetsProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static ClientTargetSection()
	{
		clientTargetsProp = new ConfigurationProperty(null, typeof(ClientTargetCollection), null, ConfigurationPropertyOptions.IsDefaultCollection | ConfigurationPropertyOptions.IsRequired);
		properties = new ConfigurationPropertyCollection();
		properties.Add(clientTargetsProp);
	}
}
