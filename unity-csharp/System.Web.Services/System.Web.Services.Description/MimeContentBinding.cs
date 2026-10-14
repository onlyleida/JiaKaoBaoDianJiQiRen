using System.Web.Services.Configuration;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[XmlFormatExtensionPrefix("mime", "http://schemas.xmlsoap.org/wsdl/mime/")]
[XmlFormatExtension("content", "http://schemas.xmlsoap.org/wsdl/mime/", typeof(MimePart), typeof(InputBinding), typeof(OutputBinding))]
public sealed class MimeContentBinding : ServiceDescriptionFormatExtension
{
	private string type;

	private string part;

	public const string Namespace = "http://schemas.xmlsoap.org/wsdl/mime/";

	[XmlAttribute("part")]
	public string Part
	{
		get
		{
			return part;
		}
		set
		{
			part = value;
		}
	}

	[XmlAttribute("type")]
	public string Type
	{
		get
		{
			if (type != null)
			{
				return type;
			}
			return string.Empty;
		}
		set
		{
			type = value;
		}
	}
}
