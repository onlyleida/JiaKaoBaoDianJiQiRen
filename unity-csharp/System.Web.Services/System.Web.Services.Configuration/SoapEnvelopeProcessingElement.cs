using System.ComponentModel;
using System.Configuration;

namespace System.Web.Services.Configuration;

public sealed class SoapEnvelopeProcessingElement : ConfigurationElement
{
	private ConfigurationPropertyCollection properties = new ConfigurationPropertyCollection();

	private readonly ConfigurationProperty readTimeout = new ConfigurationProperty("readTimeout", typeof(int), int.MaxValue, new InfiniteIntConverter(), null, ConfigurationPropertyOptions.None);

	private readonly ConfigurationProperty strict = new ConfigurationProperty("strict", typeof(bool), false);

	[ConfigurationProperty("readTimeout", DefaultValue = int.MaxValue)]
	[TypeConverter(typeof(InfiniteIntConverter))]
	public int ReadTimeout
	{
		get
		{
			return (int)base[readTimeout];
		}
		set
		{
			base[readTimeout] = value;
		}
	}

	[ConfigurationProperty("strict", DefaultValue = false)]
	public bool IsStrict
	{
		get
		{
			return (bool)base[strict];
		}
		set
		{
			base[strict] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties => properties;

	public SoapEnvelopeProcessingElement()
	{
		properties.Add(readTimeout);
		properties.Add(strict);
	}

	public SoapEnvelopeProcessingElement(int readTimeout)
		: this()
	{
		ReadTimeout = readTimeout;
	}

	public SoapEnvelopeProcessingElement(int readTimeout, bool strict)
		: this()
	{
		ReadTimeout = readTimeout;
		IsStrict = strict;
	}
}
