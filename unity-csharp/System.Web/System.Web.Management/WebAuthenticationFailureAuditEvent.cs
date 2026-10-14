using Unity;

namespace System.Web.Management;

public class WebAuthenticationFailureAuditEvent : WebFailureAuditEvent
{
	public string NameToAuthenticate
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal WebAuthenticationFailureAuditEvent(string message, object eventSource, int eventCode, int eventDetailCode, string nameToAuthenticate)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal WebAuthenticationFailureAuditEvent(string message, object eventSource, int eventCode, string nameToAuthenticate)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
