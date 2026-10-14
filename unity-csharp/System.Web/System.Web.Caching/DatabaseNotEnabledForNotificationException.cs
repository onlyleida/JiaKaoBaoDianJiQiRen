using System.Security.Permissions;

namespace System.Web.Caching;

[Serializable]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class DatabaseNotEnabledForNotificationException : SystemException
{
	public DatabaseNotEnabledForNotificationException()
	{
	}

	public DatabaseNotEnabledForNotificationException(string message)
		: base(message)
	{
	}

	public DatabaseNotEnabledForNotificationException(string message, Exception innerException)
		: base(message, innerException)
	{
	}
}
