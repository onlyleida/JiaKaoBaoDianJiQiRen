using System.Web.Services.Configuration;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[XmlFormatExtension("operation", "http://schemas.xmlsoap.org/wsdl/http/", typeof(OperationBinding))]
public sealed class HttpOperationBinding : ServiceDescriptionFormatExtension
{
	private string location;

	[XmlAttribute("location")]
	public string Location
	{
		get
		{
			if (location != null)
			{
				return location;
			}
			return string.Empty;
		}
		set
		{
			location = value;
		}
	}
}
