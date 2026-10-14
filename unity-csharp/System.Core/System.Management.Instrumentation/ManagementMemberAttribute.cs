using System.Security.Permissions;
using Unity;

namespace System.Management.Instrumentation;

[AttributeUsage(AttributeTargets.All)]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public abstract class ManagementMemberAttribute : Attribute
{
	public string Name
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}
}
