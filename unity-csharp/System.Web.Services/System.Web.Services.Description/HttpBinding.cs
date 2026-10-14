using System.Web.Services.Configuration;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[XmlFormatExtension("binding", "http://schemas.xmlsoap.org/wsdl/http/", typeof(Binding))]
[XmlFormatExtensionPrefix("http", "http://schemas.xmlsoap.org/wsdl/http/")]
public sealed class HttpBinding : ServiceDescriptionFormatExtension
{
	private string verb;

	public const string Namespace = "http://schemas.xmlsoap.org/wsdl/http/";

	[XmlAttribute("verb")]
	public string Verb
	{
		get
		{
			return verb;
		}
		set
		{
			verb = value;
		}
	}
}
