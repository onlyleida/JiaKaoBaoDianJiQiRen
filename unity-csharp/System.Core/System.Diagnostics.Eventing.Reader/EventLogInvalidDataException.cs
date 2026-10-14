using System.Runtime.Serialization;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[Serializable]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventLogInvalidDataException : EventLogException
{
	public EventLogInvalidDataException()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected EventLogInvalidDataException(SerializationInfo serializationInfo, StreamingContext streamingContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogInvalidDataException(string message)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogInvalidDataException(string message, Exception innerException)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
