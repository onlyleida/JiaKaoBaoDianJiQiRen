using System.Security.Permissions;

namespace System.Web.Caching;

[Serializable]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class TableNotEnabledForNotificationException : SystemException
{
	public TableNotEnabledForNotificationException()
	{
	}

	public TableNotEnabledForNotificationException(string message)
		: base(message)
	{
	}

	public TableNotEnabledForNotificationException(string message, Exception innerException)
		: base(message, innerException)
	{
	}
}
