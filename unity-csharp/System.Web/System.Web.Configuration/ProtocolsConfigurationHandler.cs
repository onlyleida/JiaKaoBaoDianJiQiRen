using System.Configuration;
using System.Xml;
using Unity;

namespace System.Web.Configuration;

public sealed class ProtocolsConfigurationHandler : IConfigurationSectionHandler
{
	public ProtocolsConfigurationHandler()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public object Create(object parent, object configContextObj, XmlNode section)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
