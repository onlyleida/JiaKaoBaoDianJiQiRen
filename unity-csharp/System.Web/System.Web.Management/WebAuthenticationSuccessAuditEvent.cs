using Unity;

namespace System.Web.Management;

public class WebAuthenticationSuccessAuditEvent : WebSuccessAuditEvent
{
	public string NameToAuthenticate
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal WebAuthenticationSuccessAuditEvent(string message, object eventSource, int eventCode, int eventDetailCode, string nameToAuthenticate)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal WebAuthenticationSuccessAuditEvent(string message, object eventSource, int eventCode, string nameToAuthenticate)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
