using Unity;

namespace System.Web.Management;

public class WebSuccessAuditEvent : WebAuditEvent
{
	protected internal WebSuccessAuditEvent(string message, object eventSource, int eventCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal WebSuccessAuditEvent(string message, object eventSource, int eventCode, int eventDetailCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal override void IncrementPerfCounters()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
