using Unity;

namespace System.Web.Management;

public class WebAuditEvent : WebManagementEvent
{
	public WebRequestInformation RequestInformation
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal WebAuditEvent(string message, object eventSource, int eventCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal WebAuditEvent(string message, object eventSource, int eventCode, int eventDetailCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
