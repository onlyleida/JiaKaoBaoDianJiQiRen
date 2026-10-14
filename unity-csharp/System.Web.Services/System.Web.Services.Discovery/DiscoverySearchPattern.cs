using System.Security.Permissions;

namespace System.Web.Services.Discovery;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
public abstract class DiscoverySearchPattern
{
	public abstract string Pattern { get; }

	public abstract DiscoveryReference GetDiscoveryReference(string filename);
}
