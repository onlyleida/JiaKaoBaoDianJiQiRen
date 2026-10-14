using System.Security.Permissions;
using Unity;

namespace System.Management.Instrumentation;

[AttributeUsage(AttributeTargets.Constructor | AttributeTargets.Method, AllowMultiple = false)]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class ManagementEnumeratorAttribute : ManagementNewInstanceAttribute
{
	public Type Schema
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
