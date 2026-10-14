using System.Runtime.Serialization;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[Serializable]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventLogProviderDisabledException : EventLogException
{
	public EventLogProviderDisabledException()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected EventLogProviderDisabledException(SerializationInfo serializationInfo, StreamingContext streamingContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogProviderDisabledException(string message)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogProviderDisabledException(string message, Exception innerException)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
