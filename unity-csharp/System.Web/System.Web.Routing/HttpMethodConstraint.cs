using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Runtime.CompilerServices;

namespace System.Web.Routing;

[TypeForwardedFrom("System.Web.Routing, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class HttpMethodConstraint : IRouteConstraint
{
	public ICollection<string> AllowedMethods { get; private set; }

	public HttpMethodConstraint(params string[] allowedMethods)
	{
		if (allowedMethods == null)
		{
			throw new ArgumentNullException("allowedMethods");
		}
		AllowedMethods = allowedMethods.ToList().AsReadOnly();
	}

	protected virtual bool Match(HttpContextBase httpContext, Route route, string parameterName, RouteValueDictionary values, RouteDirection routeDirection)
	{
		if (httpContext == null)
		{
			throw new ArgumentNullException("httpContext");
		}
		if (route == null)
		{
			throw new ArgumentNullException("route");
		}
		if (parameterName == null)
		{
			throw new ArgumentNullException("parameterName");
		}
		if (values == null)
		{
			throw new ArgumentNullException("values");
		}
		switch (routeDirection)
		{
		case RouteDirection.IncomingRequest:
			return AllowedMethods.Any((string method) => string.Equals(method, httpContext.Request.HttpMethod, StringComparison.OrdinalIgnoreCase));
		case RouteDirection.UrlGeneration:
		{
			if (!values.TryGetValue(parameterName, out var value))
			{
				return true;
			}
			string parameterValueString = value as string;
			if (parameterValueString == null)
			{
				throw new InvalidOperationException(string.Format(CultureInfo.CurrentUICulture, SR.GetString("The constraint for route parameter '{0}' on the route with URL '{1}' must have a string value in order to use an HttpMethodConstraint."), parameterName, route.Url));
			}
			return AllowedMethods.Any((string method) => string.Equals(method, parameterValueString, StringComparison.OrdinalIgnoreCase));
		}
		default:
			return true;
		}
	}

	bool IRouteConstraint.Match(HttpContextBase httpContext, Route route, string parameterName, RouteValueDictionary values, RouteDirection routeDirection)
	{
		return Match(httpContext, route, parameterName, values, routeDirection);
	}
}
