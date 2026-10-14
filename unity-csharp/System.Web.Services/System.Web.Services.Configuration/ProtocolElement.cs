using System.Configuration;

namespace System.Web.Services.Configuration;

public sealed class ProtocolElement : ConfigurationElement
{
	private ConfigurationPropertyCollection properties = new ConfigurationPropertyCollection();

	private readonly ConfigurationProperty name = new ConfigurationProperty("name", typeof(WebServiceProtocols), WebServiceProtocols.Unknown, ConfigurationPropertyOptions.IsKey);

	[ConfigurationProperty("name", IsKey = true, DefaultValue = WebServiceProtocols.Unknown)]
	public WebServiceProtocols Name
	{
		get
		{
			return (WebServiceProtocols)base[name];
		}
		set
		{
			if (!IsValidProtocolsValue(value))
			{
				value = WebServiceProtocols.Unknown;
			}
			base[name] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties => properties;

	public ProtocolElement()
	{
		properties.Add(name);
	}

	public ProtocolElement(WebServiceProtocols protocol)
		: this()
	{
		Name = protocol;
	}

	private bool IsValidProtocolsValue(WebServiceProtocols value)
	{
		return Enum.IsDefined(typeof(WebServiceProtocols), value);
	}
}
