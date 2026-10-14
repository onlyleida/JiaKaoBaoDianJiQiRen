using System.Runtime.Serialization;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[Serializable]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventLogReadingException : EventLogException
{
	public EventLogReadingException()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected EventLogReadingException(SerializationInfo serializationInfo, StreamingContext streamingContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogReadingException(string message)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogReadingException(string message, Exception innerException)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
