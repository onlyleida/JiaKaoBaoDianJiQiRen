using System.Security.Permissions;
using System.Security.Policy;

namespace System.Web.Services.Protocols;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
public class ServerType
{
	private Type type;

	internal Type Type => type;

	internal Evidence Evidence
	{
		get
		{
			new SecurityPermission(SecurityPermissionFlag.ControlEvidence).Assert();
			return Type.Assembly.Evidence;
		}
	}

	public ServerType(Type type)
	{
		this.type = type;
	}
}
