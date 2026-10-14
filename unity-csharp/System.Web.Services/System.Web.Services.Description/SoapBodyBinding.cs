using System.ComponentModel;
using System.Text;
using System.Web.Services.Configuration;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[XmlFormatExtension("body", "http://schemas.xmlsoap.org/wsdl/soap/", typeof(InputBinding), typeof(OutputBinding), typeof(MimePart))]
public class SoapBodyBinding : ServiceDescriptionFormatExtension
{
	private SoapBindingUse use;

	private string ns;

	private string encoding;

	private string[] parts;

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

	[XmlAttribute("namespace")]
	[DefaultValue("")]
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

	[DefaultValue("")]
	[XmlAttribute("encodingStyle")]
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

	[XmlAttribute("parts")]
	public string PartsString
	{
		get
		{
			if (parts == null)
			{
				return null;
			}
			StringBuilder stringBuilder = new StringBuilder();
			for (int i = 0; i < parts.Length; i++)
			{
				if (i > 0)
				{
					stringBuilder.Append(' ');
				}
				stringBuilder.Append(parts[i]);
			}
			return stringBuilder.ToString();
		}
		set
		{
			if (value == null)
			{
				parts = null;
				return;
			}
			parts = value.Split(' ');
		}
	}

	[XmlIgnore]
	public string[] Parts
	{
		get
		{
			return parts;
		}
		set
		{
			parts = value;
		}
	}
}
