using System.Security.Permissions;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class TraceContextRecord
{
	private string category;

	private Exception errorInfo;

	private bool isWarning;

	private string message;

	public string Category => category;

	public Exception ErrorInfo => errorInfo;

	public bool IsWarning => isWarning;

	public string Message => message;

	public TraceContextRecord(string category, string msg, bool isWarning, Exception errorInfo)
	{
		this.category = category;
		message = msg;
		this.isWarning = isWarning;
		this.errorInfo = errorInfo;
	}
}
