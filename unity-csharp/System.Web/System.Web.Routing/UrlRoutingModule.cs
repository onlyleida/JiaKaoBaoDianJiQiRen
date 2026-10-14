using System.Globalization;
using System.Runtime.CompilerServices;
using System.Web.Security;

namespace System.Web.Routing;

[TypeForwardedFrom("System.Web.Routing, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class UrlRoutingModule : IHttpModule
{
	private static readonly object _contextKey = new object();

	private static readonly object _requestDataKey = new object();

	private RouteCollection _routeCollection;

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

	protected virtual void Dispose()
	{
	}

	protected virtual void Init(HttpApplication application)
	{
		if (application.Context.Items[_contextKey] == null)
		{
			application.Context.Items[_contextKey] = _contextKey;
			application.PostResolveRequestCache += OnApplicationPostResolveRequestCache;
		}
	}

	private void OnApplicationPostResolveRequestCache(object sender, EventArgs e)
	{
		HttpContextBase context = new HttpContextWrapper(((HttpApplication)sender).Context);
		PostResolveRequestCache(context);
	}

	[Obsolete("This method is obsolete. Override the Init method to use the PostMapRequestHandler event.")]
	public virtual void PostMapRequestHandler(HttpContextBase context)
	{
	}

	public virtual void PostResolveRequestCache(HttpContextBase context)
	{
		RouteData routeData = RouteCollection.GetRouteData(context);
		if (routeData == null)
		{
			return;
		}
		IRouteHandler routeHandler = routeData.RouteHandler;
		if (routeHandler == null)
		{
			throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, SR.GetString("A RouteHandler must be specified for the selected route.")));
		}
		if (routeHandler is StopRoutingHandler)
		{
			return;
		}
		RequestContext requestContext = new RequestContext(context, routeData);
		context.Request.RequestContext = requestContext;
		IHttpHandler httpHandler = routeHandler.GetHttpHandler(requestContext);
		if (httpHandler == null)
		{
			throw new InvalidOperationException(string.Format(CultureInfo.CurrentUICulture, SR.GetString("The route handler '{0}' did not return an IHttpHandler from its GetHttpHandler() method."), routeHandler.GetType()));
		}
		if (httpHandler is UrlAuthFailureHandler)
		{
			if (!FormsAuthenticationModule.FormsAuthRequired)
			{
				throw new HttpException(401, SR.GetString("An error occurred while accessing the resources required to serve this request. You might not have permission to view the requested resources."));
			}
			UrlAuthorizationModule.ReportUrlAuthorizationFailure(HttpContext.Current, this);
		}
		else
		{
			context.RemapHandler(httpHandler);
		}
	}

	void IHttpModule.Dispose()
	{
		Dispose();
	}

	void IHttpModule.Init(HttpApplication application)
	{
		Init(application);
	}
}
