using System.Web.Services.Configuration;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[XmlFormatExtensionPrefix("tm", "http://microsoft.com/wsdl/mime/textMatching/")]
[XmlFormatExtension("text", "http://microsoft.com/wsdl/mime/textMatching/", typeof(InputBinding), typeof(OutputBinding), typeof(MimePart))]
public sealed class MimeTextBinding : ServiceDescriptionFormatExtension
{
	private MimeTextMatchCollection matches = new MimeTextMatchCollection();

	public const string Namespace = "http://microsoft.com/wsdl/mime/textMatching/";

	[XmlElement("match", typeof(MimeTextMatch))]
	public MimeTextMatchCollection Matches => matches;
}
