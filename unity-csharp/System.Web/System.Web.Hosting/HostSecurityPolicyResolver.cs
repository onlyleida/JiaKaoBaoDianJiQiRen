using System.Security.Permissions;
using System.Security.Policy;
using Unity;

namespace System.Web.Hosting;

[PermissionSet(SecurityAction.InheritanceDemand, Unrestricted = true)]
public class HostSecurityPolicyResolver
{
	public HostSecurityPolicyResolver()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual HostSecurityPolicyResults ResolvePolicy(Evidence evidence)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
