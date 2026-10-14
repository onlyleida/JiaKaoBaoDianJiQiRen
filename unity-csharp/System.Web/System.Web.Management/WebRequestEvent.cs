using Unity;

namespace System.Web.Management;

public class WebRequestEvent : WebManagementEvent
{
	public WebRequestInformation RequestInformation
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal WebRequestEvent(string message, object eventSource, int eventCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal WebRequestEvent(string message, object eventSource, int eventCode, int eventDetailCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal override void IncrementPerfCounters()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
