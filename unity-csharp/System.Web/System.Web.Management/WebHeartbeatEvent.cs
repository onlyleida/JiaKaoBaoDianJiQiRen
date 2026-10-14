using Unity;

namespace System.Web.Management;

public class WebHeartbeatEvent : WebManagementEvent
{
	public WebProcessStatistics ProcessStatistics
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal WebHeartbeatEvent(string message, int eventCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
