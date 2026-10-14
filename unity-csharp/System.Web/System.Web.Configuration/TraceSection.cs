using System.ComponentModel;
using System.Configuration;

namespace System.Web.Configuration;

public sealed class TraceSection : ConfigurationSection
{
	private static ConfigurationProperty enabledProp;

	private static ConfigurationProperty localOnlyProp;

	private static ConfigurationProperty mostRecentProp;

	private static ConfigurationProperty pageOutputProp;

	private static ConfigurationProperty requestLimitProp;

	private static ConfigurationProperty traceModeProp;

	private static ConfigurationProperty writeToDiagnosticsTraceProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("enabled", DefaultValue = "False")]
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

	[ConfigurationProperty("localOnly", DefaultValue = "True")]
	public bool LocalOnly
	{
		get
		{
			return (bool)base[localOnlyProp];
		}
		set
		{
			base[localOnlyProp] = value;
		}
	}

	[ConfigurationProperty("mostRecent", DefaultValue = "False")]
	public bool MostRecent
	{
		get
		{
			return (bool)base[mostRecentProp];
		}
		set
		{
			base[mostRecentProp] = value;
		}
	}

	[ConfigurationProperty("pageOutput", DefaultValue = "False")]
	public bool PageOutput
	{
		get
		{
			return (bool)base[pageOutputProp];
		}
		set
		{
			base[pageOutputProp] = value;
		}
	}

	[IntegerValidator(MinValue = 0, MaxValue = int.MaxValue)]
	[ConfigurationProperty("requestLimit", DefaultValue = "10")]
	public int RequestLimit
	{
		get
		{
			return (int)base[requestLimitProp];
		}
		set
		{
			base[requestLimitProp] = value;
		}
	}

	[ConfigurationProperty("traceMode", DefaultValue = "SortByTime")]
	public TraceDisplayMode TraceMode
	{
		get
		{
			return (TraceDisplayMode)base[traceModeProp];
		}
		set
		{
			base[traceModeProp] = value;
		}
	}

	[ConfigurationProperty("writeToDiagnosticsTrace", DefaultValue = "False")]
	public bool WriteToDiagnosticsTrace
	{
		get
		{
			return (bool)base[writeToDiagnosticsTraceProp];
		}
		set
		{
			base[writeToDiagnosticsTraceProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static TraceSection()
	{
		enabledProp = new ConfigurationProperty("enabled", typeof(bool), false);
		localOnlyProp = new ConfigurationProperty("localOnly", typeof(bool), true);
		mostRecentProp = new ConfigurationProperty("mostRecent", typeof(bool), false);
		pageOutputProp = new ConfigurationProperty("pageOutput", typeof(bool), false);
		requestLimitProp = new ConfigurationProperty("requestLimit", typeof(int), 10, TypeDescriptor.GetConverter(typeof(int)), PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		traceModeProp = new ConfigurationProperty("traceMode", typeof(TraceDisplayMode), TraceDisplayMode.SortByTime, new GenericEnumConverter(typeof(TraceDisplayMode)), null, ConfigurationPropertyOptions.None);
		writeToDiagnosticsTraceProp = new ConfigurationProperty("writeToDiagnosticsTrace", typeof(bool), false);
		properties = new ConfigurationPropertyCollection();
		properties.Add(enabledProp);
		properties.Add(localOnlyProp);
		properties.Add(mostRecentProp);
		properties.Add(pageOutputProp);
		properties.Add(requestLimitProp);
		properties.Add(traceModeProp);
		properties.Add(writeToDiagnosticsTraceProp);
	}
}
