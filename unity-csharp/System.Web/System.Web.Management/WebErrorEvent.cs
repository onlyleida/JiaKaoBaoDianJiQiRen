using Unity;

namespace System.Web.Management;

public class WebErrorEvent : WebBaseErrorEvent
{
	public WebRequestInformation RequestInformation
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebThreadInformation ThreadInformation
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal WebErrorEvent(string message, object eventSource, int eventCode, Exception exception)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal WebErrorEvent(string message, object eventSource, int eventCode, int eventDetailCode, Exception exception)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal override void IncrementPerfCounters()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
