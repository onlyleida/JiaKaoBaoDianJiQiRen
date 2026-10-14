using System.Web.Services.Configuration;
using System.Xml;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[XmlFormatExtensionPoint("Extensions")]
public sealed class Port : NamedItem
{
	private ServiceDescriptionFormatExtensionCollection extensions;

	private XmlQualifiedName binding = XmlQualifiedName.Empty;

	private Service parent;

	public Service Service => parent;

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

	[XmlAttribute("binding")]
	public XmlQualifiedName Binding
	{
		get
		{
			return binding;
		}
		set
		{
			binding = value;
		}
	}

	internal void SetParent(Service parent)
	{
		this.parent = parent;
	}
}
