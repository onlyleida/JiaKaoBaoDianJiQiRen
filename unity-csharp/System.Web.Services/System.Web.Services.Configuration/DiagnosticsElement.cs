using System.Configuration;

namespace System.Web.Services.Configuration;

public sealed class DiagnosticsElement : ConfigurationElement
{
	private ConfigurationPropertyCollection properties = new ConfigurationPropertyCollection();

	private readonly ConfigurationProperty suppressReturningExceptions = new ConfigurationProperty("suppressReturningExceptions", typeof(bool), false);

	[ConfigurationProperty("suppressReturningExceptions", DefaultValue = false)]
	public bool SuppressReturningExceptions
	{
		get
		{
			return (bool)base[suppressReturningExceptions];
		}
		set
		{
			base[suppressReturningExceptions] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties => properties;

	public DiagnosticsElement()
	{
		properties.Add(suppressReturningExceptions);
	}
}
