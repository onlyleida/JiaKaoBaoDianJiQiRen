using System.Runtime.Serialization;
using System.Security.Permissions;
using Unity;

namespace System.Management.Instrumentation;

[Serializable]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class InstanceNotFoundException : InstrumentationException
{
	public InstanceNotFoundException()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected InstanceNotFoundException(SerializationInfo info, StreamingContext context)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public InstanceNotFoundException(string message)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public InstanceNotFoundException(string message, Exception innerException)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
