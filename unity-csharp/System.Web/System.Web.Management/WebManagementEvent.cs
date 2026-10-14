using System.Security.Permissions;
using Unity;

namespace System.Web.Management;

[PermissionSet(SecurityAction.InheritanceDemand, Unrestricted = true)]
public class WebManagementEvent : WebBaseEvent
{
	public WebProcessInformation ProcessInformation
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected internal WebManagementEvent(string message, object eventSource, int eventCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal WebManagementEvent(string message, object eventSource, int eventCode, int eventDetailCode)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
