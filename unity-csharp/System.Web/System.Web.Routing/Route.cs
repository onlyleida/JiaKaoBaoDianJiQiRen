using System.Collections.Generic;
using System.Globalization;
using System.Runtime.CompilerServices;
using System.Text.RegularExpressions;

namespace System.Web.Routing;

[TypeForwardedFrom("System.Web.Routing, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class Route : RouteBase
{
	private const string HttpMethodParameterName = "httpMethod";

	private string _url;

	private ParsedRoute _parsedRoute;

	public RouteValueDictionary Constraints { get; set; }

	public RouteValueDictionary DataTokens { get; set; }

	public RouteValueDictionary Defaults { get; set; }

	public IRouteHandler RouteHandler { get; set; }

	public string Url
	{
		get
		{
			return _url ?? string.Empty;
		}
		set
		{
			_parsedRoute = RouteParser.Parse(value);
			_url = value;
		}
	}

	public Route(string url, IRouteHandler routeHandler)
	{
		Url = url;
		RouteHandler = routeHandler;
	}

	public Route(string url, RouteValueDictionary defaults, IRouteHandler routeHandler)
	{
		Url = url;
		Defaults = defaults;
		RouteHandler = routeHandler;
	}

	public Route(string url, RouteValueDictionary defaults, RouteValueDictionary constraints, IRouteHandler routeHandler)
	{
		Url = url;
		Defaults = defaults;
		Constraints = constraints;
		RouteHandler = routeHandler;
	}

	public Route(string url, RouteValueDictionary defaults, RouteValueDictionary constraints, RouteValueDictionary dataTokens, IRouteHandler routeHandler)
	{
		Url = url;
		Defaults = defaults;
		Constraints = constraints;
		DataTokens = dataTokens;
		RouteHandler = routeHandler;
	}

	public override RouteData GetRouteData(HttpContextBase httpContext)
	{
		string virtualPath = httpContext.Request.AppRelativeCurrentExecutionFilePath.Substring(2) + httpContext.Request.PathInfo;
		RouteValueDictionary routeValueDictionary = _parsedRoute.Match(virtualPath, Defaults);
		if (routeValueDictionary == null)
		{
			return null;
		}
		RouteData routeData = new RouteData(this, RouteHandler);
		if (!ProcessConstraints(httpContext, routeValueDictionary, RouteDirection.IncomingRequest))
		{
			return null;
		}
		foreach (KeyValuePair<string, object> item in routeValueDictionary)
		{
			routeData.Values.Add(item.Key, item.Value);
		}
		if (DataTokens != null)
		{
			foreach (KeyValuePair<string, object> dataToken in DataTokens)
			{
				routeData.DataTokens[dataToken.Key] = dataToken.Value;
			}
		}
		return routeData;
	}

	public override VirtualPathData GetVirtualPath(RequestContext requestContext, RouteValueDictionary values)
	{
		BoundUrl boundUrl = _parsedRoute.Bind(requestContext.RouteData.Values, values, Defaults, Constraints);
		if (boundUrl == null)
		{
			return null;
		}
		if (!ProcessConstraints(requestContext.HttpContext, boundUrl.Values, RouteDirection.UrlGeneration))
		{
			return null;
		}
		VirtualPathData virtualPathData = new VirtualPathData(this, boundUrl.Url);
		if (DataTokens != null)
		{
			foreach (KeyValuePair<string, object> dataToken in DataTokens)
			{
				virtualPathData.DataTokens[dataToken.Key] = dataToken.Value;
			}
		}
		return virtualPathData;
	}

	protected virtual bool ProcessConstraint(HttpContextBase httpContext, object constraint, string parameterName, RouteValueDictionary values, RouteDirection routeDirection)
	{
		if (constraint is IRouteConstraint routeConstraint)
		{
			return routeConstraint.Match(httpContext, this, parameterName, values, routeDirection);
		}
		if (!(constraint is string text))
		{
			throw new InvalidOperationException(string.Format(CultureInfo.CurrentUICulture, SR.GetString("The constraint entry '{0}' on the route with URL '{1}' must have a string value or be of a type which implements IRouteConstraint."), parameterName, Url));
		}
		values.TryGetValue(parameterName, out var value);
		string input = Convert.ToString(value, CultureInfo.InvariantCulture);
		string pattern = "^(" + text + ")$";
		return Regex.IsMatch(input, pattern, RegexOptions.IgnoreCase | RegexOptions.CultureInvariant);
	}

	private bool ProcessConstraints(HttpContextBase httpContext, RouteValueDictionary values, RouteDirection routeDirection)
	{
		if (Constraints != null)
		{
			foreach (KeyValuePair<string, object> constraint in Constraints)
			{
				if (!ProcessConstraint(httpContext, constraint.Value, constraint.Key, values, routeDirection))
				{
					return false;
				}
			}
		}
		return true;
	}
}
