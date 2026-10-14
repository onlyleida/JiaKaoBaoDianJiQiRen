using System.Runtime.Serialization;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[Serializable]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventLogNotFoundException : EventLogException
{
	public EventLogNotFoundException()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected EventLogNotFoundException(SerializationInfo serializationInfo, StreamingContext streamingContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogNotFoundException(string message)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogNotFoundException(string message, Exception innerException)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
