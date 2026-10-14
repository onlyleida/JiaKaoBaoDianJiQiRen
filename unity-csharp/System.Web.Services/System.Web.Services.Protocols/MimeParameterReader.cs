using System.Security.Permissions;

namespace System.Web.Services.Protocols;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
public abstract class MimeParameterReader : MimeFormatter
{
	public abstract object[] Read(HttpRequest request);
}
