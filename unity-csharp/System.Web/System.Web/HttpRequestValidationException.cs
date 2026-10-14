using System.Security.Permissions;

namespace System.Web;

[Serializable]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpRequestValidationException : HttpException
{
	internal override string Description => "Request validation detected a potentially dangerous input value from the client and aborted the request. This might be an attemp of using cross-site scripting to compromise the security of your site. You can disable request validation using the 'validateRequest=false' attribute in your page or setting it in your machine.config or web.config configuration files. If you disable it, you're encouraged to properly check the input values you get from the client.<br>\r\nYou can get more information on input validation <a href=\"http://www.cert.org/tech_tips/malicious_code_mitigation.html\">here</a>.";

	public HttpRequestValidationException()
	{
	}

	public HttpRequestValidationException(string message)
		: base(message)
	{
	}

	public HttpRequestValidationException(string message, Exception innerException)
		: base(message, innerException)
	{
	}
}
