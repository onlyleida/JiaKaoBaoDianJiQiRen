using System.Collections;
using System.IO;
using System.Text;
using System.Web.Services.Configuration;
using System.Xml;
using System.Xml.Serialization;

namespace System.Web.Services.Discovery;

[XmlRoot("discovery", Namespace = "http://schemas.xmlsoap.org/disco/")]
public sealed class DiscoveryDocument
{
	public const string Namespace = "http://schemas.xmlsoap.org/disco/";

	private ArrayList references = new ArrayList();

	[XmlIgnore]
	public IList References => references;

	public static DiscoveryDocument Read(Stream stream)
	{
		return Read(new XmlTextReader(stream)
		{
			WhitespaceHandling = WhitespaceHandling.Significant,
			XmlResolver = null,
			DtdProcessing = DtdProcessing.Prohibit
		});
	}

	public static DiscoveryDocument Read(TextReader reader)
	{
		return Read(new XmlTextReader(reader)
		{
			WhitespaceHandling = WhitespaceHandling.Significant,
			XmlResolver = null,
			DtdProcessing = DtdProcessing.Prohibit
		});
	}

	public static DiscoveryDocument Read(XmlReader xmlReader)
	{
		return (DiscoveryDocument)WebServicesSection.Current.DiscoveryDocumentSerializer.Deserialize(xmlReader);
	}

	public static bool CanRead(XmlReader xmlReader)
	{
		return WebServicesSection.Current.DiscoveryDocumentSerializer.CanDeserialize(xmlReader);
	}

	public void Write(TextWriter writer)
	{
		XmlTextWriter xmlTextWriter = new XmlTextWriter(writer);
		xmlTextWriter.Formatting = Formatting.Indented;
		xmlTextWriter.Indentation = 2;
		Write(xmlTextWriter);
	}

	public void Write(Stream stream)
	{
		TextWriter writer = new StreamWriter(stream, new UTF8Encoding(encoderShouldEmitUTF8Identifier: false));
		Write(writer);
	}

	public void Write(XmlWriter writer)
	{
		XmlSerializer discoveryDocumentSerializer = WebServicesSection.Current.DiscoveryDocumentSerializer;
		XmlSerializerNamespaces namespaces = new XmlSerializerNamespaces();
		discoveryDocumentSerializer.Serialize(writer, this, namespaces);
	}
}
