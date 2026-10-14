using System.Runtime.CompilerServices;

namespace System.Web.Routing;

[TypeForwardedFrom("System.Web.Routing, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public abstract class RouteBase
{
	private bool _routeExistingFiles = true;

	public bool RouteExistingFiles
	{
		get
		{
			return _routeExistingFiles;
		}
		set
		{
			_routeExistingFiles = value;
		}
	}

	public abstract RouteData GetRouteData(HttpContextBase httpContext);

	public abstract VirtualPathData GetVirtualPath(RequestContext requestContext, RouteValueDictionary values);
}
