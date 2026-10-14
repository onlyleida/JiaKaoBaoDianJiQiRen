using System.Configuration;

namespace System.Xml.Serialization.Configuration;

public sealed class SerializationSectionGroup : ConfigurationSectionGroup
{
	[ConfigurationProperty("schemaImporterExtensions")]
	public SchemaImporterExtensionsSection SchemaImporterExtensions => (SchemaImporterExtensionsSection)Sections["schemaImporterExtensions"];

	[ConfigurationProperty("dateTimeSerialization")]
	public DateTimeSerializationSection DateTimeSerialization => (DateTimeSerializationSection)Sections["dateTimeSerialization"];

	public XmlSerializerSection XmlSerializer => (XmlSerializerSection)Sections["xmlSerializer"];
}
