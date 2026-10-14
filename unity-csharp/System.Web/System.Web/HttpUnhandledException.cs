using System.Security.Permissions;

namespace System.Web;

[Serializable]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpUnhandledException : HttpException
{
	public HttpUnhandledException()
	{
	}

	public HttpUnhandledException(string message)
		: base(message)
	{
	}

	public HttpUnhandledException(string message, Exception innerException)
		: base(message, innerException)
	{
	}
}
