using System.Globalization;
using System.Runtime.CompilerServices;

namespace System.Web.Routing;

[TypeForwardedFrom("System.Web.Routing, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public abstract class UrlRoutingHandler : IHttpHandler
{
	private RouteCollection _routeCollection;

	protected virtual bool IsReusable => false;

	public RouteCollection RouteCollection
	{
		get
		{
			if (_routeCollection == null)
			{
				_routeCollection = RouteTable.Routes;
			}
			return _routeCollection;
		}
		set
		{
			_routeCollection = value;
		}
	}

	bool IHttpHandler.IsReusable => IsReusable;

	protected virtual void ProcessRequest(HttpContext httpContext)
	{
		ProcessRequest(new HttpContextWrapper(httpContext));
	}

	protected virtual void ProcessRequest(HttpContextBase httpContext)
	{
		RouteData routeData = RouteCollection.GetRouteData(httpContext);
		if (routeData == null)
		{
			throw new HttpException(404, SR.GetString("The incoming request does not match any route."));
		}
		IRouteHandler routeHandler = routeData.RouteHandler;
		if (routeHandler == null)
		{
			throw new InvalidOperationException(SR.GetString("A RouteHandler must be specified for the selected route."));
		}
		RequestContext requestContext = new RequestContext(httpContext, routeData);
		IHttpHandler httpHandler = routeHandler.GetHttpHandler(requestContext);
		if (httpHandler == null)
		{
			throw new InvalidOperationException(string.Format(CultureInfo.CurrentUICulture, SR.GetString("The route handler '{0}' did not return an IHttpHandler from its GetHttpHandler() method."), routeHandler.GetType()));
		}
		VerifyAndProcessRequest(httpHandler, httpContext);
	}

	protected abstract void VerifyAndProcessRequest(IHttpHandler httpHandler, HttpContextBase httpContext);

	void IHttpHandler.ProcessRequest(HttpContext context)
	{
		ProcessRequest(context);
	}
}
