using System.Web.Services.Configuration;
using System.Xml.Schema;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[XmlFormatExtensionPoint("Extensions")]
public sealed class Types : DocumentableItem
{
	private XmlSchemas schemas;

	private ServiceDescriptionFormatExtensionCollection extensions;

	[XmlIgnore]
	public override ServiceDescriptionFormatExtensionCollection Extensions
	{
		get
		{
			if (extensions == null)
			{
				extensions = new ServiceDescriptionFormatExtensionCollection(this);
			}
			return extensions;
		}
	}

	[XmlElement("schema", typeof(XmlSchema), Namespace = "http://www.w3.org/2001/XMLSchema")]
	public XmlSchemas Schemas
	{
		get
		{
			if (schemas == null)
			{
				schemas = new XmlSchemas();
			}
			return schemas;
		}
	}

	internal bool HasItems()
	{
		if (schemas == null || schemas.Count <= 0)
		{
			if (extensions != null)
			{
				return extensions.Count > 0;
			}
			return false;
		}
		return true;
	}
}
