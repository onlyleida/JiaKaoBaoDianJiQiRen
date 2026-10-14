using System.Runtime.Serialization;
using System.Security.Permissions;
using Unity;

namespace System.Management.Instrumentation;

[Serializable]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class InstrumentationBaseException : Exception
{
	public InstrumentationBaseException()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected InstrumentationBaseException(SerializationInfo info, StreamingContext context)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public InstrumentationBaseException(string message)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public InstrumentationBaseException(string message, Exception innerException)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
