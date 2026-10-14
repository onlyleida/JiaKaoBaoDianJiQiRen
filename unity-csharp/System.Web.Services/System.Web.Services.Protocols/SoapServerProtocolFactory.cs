using System.Security.Permissions;

namespace System.Web.Services.Protocols;

[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
public class SoapServerProtocolFactory : ServerProtocolFactory
{
	protected override ServerProtocol CreateIfRequestCompatible(HttpRequest request)
	{
		if (request.PathInfo.Length > 0)
		{
			return null;
		}
		if (request.HttpMethod != "POST")
		{
			return new UnsupportedRequestProtocol(405);
		}
		return new SoapServerProtocol();
	}
}
