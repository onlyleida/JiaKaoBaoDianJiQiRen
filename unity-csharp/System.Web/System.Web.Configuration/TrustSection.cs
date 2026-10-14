using System.ComponentModel;
using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public sealed class TrustSection : ConfigurationSection
{
	private static ConfigurationProperty levelProp;

	private static ConfigurationProperty originUrlProp;

	private static ConfigurationProperty processRequestInApplicationTrustProp;

	private static ConfigurationPropertyCollection properties;

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("level", DefaultValue = "Full", Options = ConfigurationPropertyOptions.IsRequired)]
	public string Level
	{
		get
		{
			return (string)base[levelProp];
		}
		set
		{
			base[levelProp] = value;
		}
	}

	[ConfigurationProperty("originUrl", DefaultValue = "")]
	public string OriginUrl
	{
		get
		{
			return (string)base[originUrlProp];
		}
		set
		{
			base[originUrlProp] = value;
		}
	}

	[ConfigurationProperty("processRequestInApplicationTrust", DefaultValue = "True")]
	public bool ProcessRequestInApplicationTrust
	{
		get
		{
			return (bool)base[processRequestInApplicationTrustProp];
		}
		set
		{
			base[processRequestInApplicationTrustProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public string HostSecurityPolicyResolverType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public bool LegacyCasModel
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string PermissionSetName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	static TrustSection()
	{
		levelProp = new ConfigurationProperty("level", typeof(string), "Full", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired);
		originUrlProp = new ConfigurationProperty("originUrl", typeof(string), "");
		processRequestInApplicationTrustProp = new ConfigurationProperty("processRequestInApplicationTrust", typeof(bool), true);
		properties = new ConfigurationPropertyCollection();
		properties.Add(levelProp);
		properties.Add(originUrlProp);
		properties.Add(processRequestInApplicationTrustProp);
	}
}
