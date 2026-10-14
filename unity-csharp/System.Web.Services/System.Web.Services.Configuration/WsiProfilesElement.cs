using System.Configuration;

namespace System.Web.Services.Configuration;

public sealed class WsiProfilesElement : ConfigurationElement
{
	private ConfigurationPropertyCollection properties = new ConfigurationPropertyCollection();

	private readonly ConfigurationProperty name = new ConfigurationProperty("name", typeof(WsiProfiles), WsiProfiles.None, ConfigurationPropertyOptions.IsKey);

	[ConfigurationProperty("name", IsKey = true, DefaultValue = WsiProfiles.None)]
	public WsiProfiles Name
	{
		get
		{
			return (WsiProfiles)base[name];
		}
		set
		{
			if (!IsValidWsiProfilesValue(value))
			{
				throw new ArgumentOutOfRangeException("value");
			}
			base[name] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties => properties;

	public WsiProfilesElement()
	{
		properties.Add(name);
	}

	public WsiProfilesElement(WsiProfiles name)
		: this()
	{
		Name = name;
	}

	private bool IsValidWsiProfilesValue(WsiProfiles value)
	{
		return Enum.IsDefined(typeof(WsiProfiles), value);
	}
}
