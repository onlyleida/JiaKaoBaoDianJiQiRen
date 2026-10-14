using System.Runtime.Serialization;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[Serializable]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventLogException : Exception
{
	public EventLogException()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected EventLogException(int errorCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected EventLogException(SerializationInfo serializationInfo, StreamingContext streamingContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogException(string message)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogException(string message, Exception innerException)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
