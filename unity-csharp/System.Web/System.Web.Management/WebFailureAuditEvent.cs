using Unity;

namespace System.Web.Management;

public class WebFailureAuditEvent : WebAuditEvent
{
	protected internal WebFailureAuditEvent(string message, object eventSource, int eventCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal WebFailureAuditEvent(string message, object eventSource, int eventCode, int eventDetailCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal override void IncrementPerfCounters()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
