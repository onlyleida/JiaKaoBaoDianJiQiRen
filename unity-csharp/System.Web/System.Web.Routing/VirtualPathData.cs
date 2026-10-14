using System.Runtime.CompilerServices;

namespace System.Web.Routing;

[TypeForwardedFrom("System.Web.Routing, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class VirtualPathData
{
	private string _virtualPath;

	private RouteValueDictionary _dataTokens = new RouteValueDictionary();

	public RouteValueDictionary DataTokens => _dataTokens;

	public RouteBase Route { get; set; }

	public string VirtualPath
	{
		get
		{
			return _virtualPath ?? string.Empty;
		}
		set
		{
			_virtualPath = value;
		}
	}

	public VirtualPathData(RouteBase route, string virtualPath)
	{
		Route = route;
		VirtualPath = virtualPath;
	}
}
