using System.Web.UI;
using Unity;

namespace System.Web.Management;

public class WebViewStateFailureAuditEvent : WebFailureAuditEvent
{
	public ViewStateException ViewStateException
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal WebViewStateFailureAuditEvent(string message, object eventSource, int eventCode, int eventDetailCode, ViewStateException viewStateException)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal WebViewStateFailureAuditEvent(string message, object eventSource, int eventCode, ViewStateException viewStateException)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
