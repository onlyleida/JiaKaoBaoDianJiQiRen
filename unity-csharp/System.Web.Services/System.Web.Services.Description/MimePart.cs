using System.Web.Services.Configuration;
using System.Xml.Serialization;

namespace System.Web.Services.Description;

[XmlFormatExtensionPoint("Extensions")]
public sealed class MimePart : ServiceDescriptionFormatExtension
{
	private ServiceDescriptionFormatExtensionCollection extensions;

	[XmlIgnore]
	public ServiceDescriptionFormatExtensionCollection Extensions
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
}
