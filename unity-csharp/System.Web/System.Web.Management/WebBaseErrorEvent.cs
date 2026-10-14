using Unity;

namespace System.Web.Management;

public class WebBaseErrorEvent : WebManagementEvent
{
	public Exception ErrorException
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal WebBaseErrorEvent(string message, object eventSource, int eventCode, Exception e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal WebBaseErrorEvent(string message, object eventSource, int eventCode, int eventDetailCode, Exception e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal override void IncrementPerfCounters()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
