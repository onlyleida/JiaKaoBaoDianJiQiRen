using System.Security.Permissions;
using System.Security.Principal;
using System.Web.Configuration;

namespace System.Web.Security;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class UrlAuthorizationModule : IHttpModule
{
	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public UrlAuthorizationModule()
	{
	}

	public void Dispose()
	{
	}

	public void Init(HttpApplication app)
	{
		app.AuthorizeRequest += OnAuthorizeRequest;
	}

	private void OnAuthorizeRequest(object sender, EventArgs args)
	{
		HttpApplication httpApplication = (HttpApplication)sender;
		HttpContext context = httpApplication.Context;
		if (context != null && !context.SkipAuthorization)
		{
			HttpRequest request = context.Request;
			if (!((AuthorizationSection)WebConfigurationManager.GetSection("system.web/authorization", request.Path, context)).IsValidUser(context.User, request.HttpMethod))
			{
				HttpException ex = new HttpException(401, "Unauthorized");
				HttpResponse response = context.Response;
				response.StatusCode = 401;
				response.Write(ex.GetHtmlErrorMessage());
				httpApplication.CompleteRequest();
			}
		}
	}

	public static bool CheckUrlAccessForPrincipal(string virtualPath, IPrincipal user, string verb)
	{
		return ((AuthorizationSection)WebConfigurationManager.GetSection("system.web/authorization", virtualPath))?.IsValidUser(user, verb) ?? true;
	}

	internal static void ReportUrlAuthorizationFailure(HttpContext context, object webEventSource)
	{
		context.Response.StatusCode = 401;
		context.Response.Write(new HttpException(401, "Unauthorized").GetHtmlErrorMessage());
		context.ApplicationInstance.CompleteRequest();
	}
}
