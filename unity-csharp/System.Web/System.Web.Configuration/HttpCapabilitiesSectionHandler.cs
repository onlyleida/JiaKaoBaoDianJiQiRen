using System.Configuration;
using System.Xml;
using Unity;

namespace System.Web.Configuration;

public class HttpCapabilitiesSectionHandler : IConfigurationSectionHandler
{
	public HttpCapabilitiesSectionHandler()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public object Create(object parent, object configurationContext, XmlNode section)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
