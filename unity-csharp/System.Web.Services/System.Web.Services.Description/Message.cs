using System.Web.Services.Configuration;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[XmlFormatExtensionPoint("Extensions")]
public sealed class Message : NamedItem
{
	private MessagePartCollection parts;

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

	[XmlElement("part")]
	public MessagePartCollection Parts
	{
		get
		{
			if (parts == null)
			{
				parts = new MessagePartCollection(this);
			}
			return parts;
		}
	}

	internal void SetParent(ServiceDescription parent)
	{
		this.parent = parent;
	}

	public MessagePart[] FindPartsByName(string[] partNames)
	{
		MessagePart[] array = new MessagePart[partNames.Length];
		for (int i = 0; i < partNames.Length; i++)
		{
			array[i] = FindPartByName(partNames[i]);
		}
		return array;
	}

	public MessagePart FindPartByName(string partName)
	{
		for (int i = 0; i < parts.Count; i++)
		{
			MessagePart messagePart = parts[i];
			if (messagePart.Name == partName)
			{
				return messagePart;
			}
		}
		throw new ArgumentException(Res.GetString("MissingMessagePartForMessageFromNamespace3", partName, Name, ServiceDescription.TargetNamespace), "partName");
	}
}
