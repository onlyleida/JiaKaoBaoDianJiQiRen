using System.Globalization;
using System.Runtime.CompilerServices;

namespace System.Web.Routing;

[TypeForwardedFrom("System.Web.Routing, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class RouteData
{
	private IRouteHandler _routeHandler;

	private RouteValueDictionary _values = new RouteValueDictionary();

	private RouteValueDictionary _dataTokens = new RouteValueDictionary();

	public RouteValueDictionary DataTokens => _dataTokens;

	public RouteBase Route { get; set; }

	public IRouteHandler RouteHandler
	{
		get
		{
			return _routeHandler;
		}
		set
		{
			_routeHandler = value;
		}
	}

	public RouteValueDictionary Values => _values;

	public RouteData()
	{
	}

	public RouteData(RouteBase route, IRouteHandler routeHandler)
	{
		Route = route;
		RouteHandler = routeHandler;
	}

	public string GetRequiredString(string valueName)
	{
		if (Values.TryGetValue(valueName, out var value))
		{
			string text = value as string;
			if (!string.IsNullOrEmpty(text))
			{
				return text;
			}
		}
		throw new InvalidOperationException(string.Format(CultureInfo.CurrentUICulture, SR.GetString("The RouteData must contain an item named '{0}' with a non-empty string value."), valueName));
	}
}
