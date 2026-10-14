using System.ComponentModel;
using System.Web.Services.Configuration;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[XmlFormatExtension("fault", "http://schemas.xmlsoap.org/wsdl/soap/", typeof(FaultBinding))]
public class SoapFaultBinding : ServiceDescriptionFormatExtension
{
	private SoapBindingUse use;

	private string ns;

	private string encoding;

	private string name;

	[DefaultValue(SoapBindingUse.Default)]
	[XmlAttribute("use")]
	public SoapBindingUse Use
	{
		get
		{
			return use;
		}
		set
		{
			use = value;
		}
	}

	[XmlAttribute("name")]
	public string Name
	{
		get
		{
			return name;
		}
		set
		{
			name = value;
		}
	}

	[XmlAttribute("namespace")]
	public string Namespace
	{
		get
		{
			if (ns != null)
			{
				return ns;
			}
			return string.Empty;
		}
		set
		{
			ns = value;
		}
	}

	[XmlAttribute("encodingStyle")]
	[DefaultValue("")]
	public string Encoding
	{
		get
		{
			if (encoding != null)
			{
				return encoding;
			}
			return string.Empty;
		}
		set
		{
			encoding = value;
		}
	}
}
