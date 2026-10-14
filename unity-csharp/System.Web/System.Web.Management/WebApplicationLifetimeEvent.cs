using Unity;

namespace System.Web.Management;

public class WebApplicationLifetimeEvent : WebManagementEvent
{
	protected internal WebApplicationLifetimeEvent(string message, object eventSource, int eventCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal WebApplicationLifetimeEvent(string message, object eventSource, int eventCode, int eventDetailCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal override void IncrementPerfCounters()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
