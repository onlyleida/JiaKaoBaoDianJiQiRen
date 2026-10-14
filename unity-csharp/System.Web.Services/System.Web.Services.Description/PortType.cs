using System.Web.Services.Configuration;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[XmlFormatExtensionPoint("Extensions")]
public sealed class PortType : NamedItem
{
	private OperationCollection operations;

	private ServiceDescription parent;

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

	public ServiceDescription ServiceDescription => parent;

	[XmlElement("operation")]
	public OperationCollection Operations
	{
		get
		{
			if (operations == null)
			{
				operations = new OperationCollection(this);
			}
			return operations;
		}
	}

	internal void SetParent(ServiceDescription parent)
	{
		this.parent = parent;
	}
}
