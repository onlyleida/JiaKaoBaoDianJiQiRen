using System.Runtime.CompilerServices;

namespace System.Web.Routing;

[TypeForwardedFrom("System.Web.Routing, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class RequestContext
{
	public virtual HttpContextBase HttpContext { get; set; }

	public virtual RouteData RouteData { get; set; }

	public RequestContext()
	{
	}

	public RequestContext(HttpContextBase httpContext, RouteData routeData)
	{
		if (httpContext == null)
		{
			throw new ArgumentNullException("httpContext");
		}
		if (routeData == null)
		{
			throw new ArgumentNullException("routeData");
		}
		HttpContext = httpContext;
		RouteData = routeData;
	}
}
