using System.Runtime.Serialization;
using System.Security.Permissions;
using Unity;

namespace System.Management.Instrumentation;

[Serializable]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class InstrumentationException : InstrumentationBaseException
{
	public InstrumentationException()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public InstrumentationException(Exception innerException)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected InstrumentationException(SerializationInfo info, StreamingContext context)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public InstrumentationException(string message)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public InstrumentationException(string message, Exception innerException)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
