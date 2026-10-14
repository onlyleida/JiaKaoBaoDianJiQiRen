using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Web.Hosting;
using System.Web.UI;

namespace System.Web.Routing;

[TypeForwardedFrom("System.Web.Routing, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
public class RouteCollection : Collection<RouteBase>
{
	private class ReadLockDisposable : IDisposable
	{
		private ReaderWriterLockSlim _rwLock;

		public ReadLockDisposable(ReaderWriterLockSlim rwLock)
		{
			_rwLock = rwLock;
		}

		void IDisposable.Dispose()
		{
			_rwLock.ExitReadLock();
		}
	}

	private class WriteLockDisposable : IDisposable
	{
		private ReaderWriterLockSlim _rwLock;

		public WriteLockDisposable(ReaderWriterLockSlim rwLock)
		{
			_rwLock = rwLock;
		}

		void IDisposable.Dispose()
		{
			_rwLock.ExitWriteLock();
		}
	}

	private sealed class IgnoreRouteInternal : Route
	{
		public IgnoreRouteInternal(string url)
			: base(url, new StopRoutingHandler())
		{
		}

		public override VirtualPathData GetVirtualPath(RequestContext requestContext, RouteValueDictionary routeValues)
		{
			return null;
		}
	}

	private Dictionary<string, RouteBase> _namedMap = new Dictionary<string, RouteBase>(StringComparer.OrdinalIgnoreCase);

	private VirtualPathProvider _vpp;

	private ReaderWriterLockSlim _rwLock = new ReaderWriterLockSlim();

	public bool AppendTrailingSlash { get; set; }

	public bool LowercaseUrls { get; set; }

	public bool RouteExistingFiles { get; set; }

	private VirtualPathProvider VPP
	{
		get
		{
			if (_vpp == null)
			{
				return HostingEnvironment.VirtualPathProvider;
			}
			return _vpp;
		}
		set
		{
			_vpp = value;
		}
	}

	public RouteBase this[string name]
	{
		get
		{
			if (string.IsNullOrEmpty(name))
			{
				return null;
			}
			if (_namedMap.TryGetValue(name, out var value))
			{
				return value;
			}
			return null;
		}
	}

	public RouteCollection()
	{
	}

	public RouteCollection(VirtualPathProvider virtualPathProvider)
	{
		VPP = virtualPathProvider;
	}

	public void Add(string name, RouteBase item)
	{
		if (item == null)
		{
			throw new ArgumentNullException("item");
		}
		if (!string.IsNullOrEmpty(name) && _namedMap.ContainsKey(name))
		{
			throw new ArgumentException(string.Format(CultureInfo.CurrentUICulture, SR.GetString("A route named '{0}' is already in the route collection. Route names must be unique."), name), "name");
		}
		Add(item);
		if (!string.IsNullOrEmpty(name))
		{
			_namedMap[name] = item;
		}
		if (item is Route { RouteHandler: not null } route)
		{
			TelemetryLogger.LogHttpHandler(route.RouteHandler.GetType());
		}
	}

	public Route MapPageRoute(string routeName, string routeUrl, string physicalFile)
	{
		return MapPageRoute(routeName, routeUrl, physicalFile, checkPhysicalUrlAccess: true, null, null, null);
	}

	public Route MapPageRoute(string routeName, string routeUrl, string physicalFile, bool checkPhysicalUrlAccess)
	{
		return MapPageRoute(routeName, routeUrl, physicalFile, checkPhysicalUrlAccess, null, null, null);
	}

	public Route MapPageRoute(string routeName, string routeUrl, string physicalFile, bool checkPhysicalUrlAccess, RouteValueDictionary defaults)
	{
		return MapPageRoute(routeName, routeUrl, physicalFile, checkPhysicalUrlAccess, defaults, null, null);
	}

	public Route MapPageRoute(string routeName, string routeUrl, string physicalFile, bool checkPhysicalUrlAccess, RouteValueDictionary defaults, RouteValueDictionary constraints)
	{
		return MapPageRoute(routeName, routeUrl, physicalFile, checkPhysicalUrlAccess, defaults, constraints, null);
	}

	public Route MapPageRoute(string routeName, string routeUrl, string physicalFile, bool checkPhysicalUrlAccess, RouteValueDictionary defaults, RouteValueDictionary constraints, RouteValueDictionary dataTokens)
	{
		if (routeUrl == null)
		{
			throw new ArgumentNullException("routeUrl");
		}
		Route route = new Route(routeUrl, defaults, constraints, dataTokens, new PageRouteHandler(physicalFile, checkPhysicalUrlAccess));
		Add(routeName, route);
		return route;
	}

	protected override void ClearItems()
	{
		_namedMap.Clear();
		base.ClearItems();
	}

	public IDisposable GetReadLock()
	{
		_rwLock.EnterReadLock();
		return new ReadLockDisposable(_rwLock);
	}

	private RequestContext GetRequestContext(RequestContext requestContext)
	{
		if (requestContext != null)
		{
			return requestContext;
		}
		return new RequestContext(new HttpContextWrapper(HttpContext.Current ?? throw new InvalidOperationException(SR.GetString("HttpContext.Current must be non-null when a RequestContext is not provided."))), new RouteData());
	}

	private bool IsRouteToExistingFile(HttpContextBase httpContext)
	{
		string appRelativeCurrentExecutionFilePath = httpContext.Request.AppRelativeCurrentExecutionFilePath;
		if (appRelativeCurrentExecutionFilePath != "~/" && VPP != null)
		{
			if (!VPP.FileExists(appRelativeCurrentExecutionFilePath))
			{
				return VPP.DirectoryExists(appRelativeCurrentExecutionFilePath);
			}
			return true;
		}
		return false;
	}

	public RouteData GetRouteData(HttpContextBase httpContext)
	{
		if (httpContext == null)
		{
			throw new ArgumentNullException("httpContext");
		}
		if (httpContext.Request == null)
		{
			throw new ArgumentException(SR.GetString("The context does not contain any request data."), "httpContext");
		}
		if (Count == 0)
		{
			return null;
		}
		bool flag = false;
		bool flag2 = false;
		if (!RouteExistingFiles)
		{
			flag = IsRouteToExistingFile(httpContext);
			flag2 = true;
			if (flag)
			{
				return null;
			}
		}
		using (GetReadLock())
		{
			using IEnumerator<RouteBase> enumerator = GetEnumerator();
			while (enumerator.MoveNext())
			{
				RouteBase current = enumerator.Current;
				RouteData routeData = current.GetRouteData(httpContext);
				if (routeData == null)
				{
					continue;
				}
				if (!current.RouteExistingFiles)
				{
					if (!flag2)
					{
						flag = IsRouteToExistingFile(httpContext);
						flag2 = true;
					}
					if (flag)
					{
						return null;
					}
				}
				return routeData;
			}
		}
		return null;
	}

	private string NormalizeVirtualPath(RequestContext requestContext, string virtualPath)
	{
		string text = System.Web.UI.Util.GetUrlWithApplicationPath(requestContext.HttpContext, virtualPath);
		if (LowercaseUrls || AppendTrailingSlash)
		{
			int num = text.IndexOfAny(new char[2] { '?', '#' });
			string text2;
			string text3;
			if (num >= 0)
			{
				text2 = text.Substring(0, num);
				text3 = text.Substring(num);
			}
			else
			{
				text2 = text;
				text3 = "";
			}
			if (LowercaseUrls)
			{
				text2 = text2.ToLowerInvariant();
			}
			if (AppendTrailingSlash && !text2.EndsWith("/"))
			{
				text2 += "/";
			}
			text = text2 + text3;
		}
		return text;
	}

	public VirtualPathData GetVirtualPath(RequestContext requestContext, RouteValueDictionary values)
	{
		requestContext = GetRequestContext(requestContext);
		using (GetReadLock())
		{
			using IEnumerator<RouteBase> enumerator = GetEnumerator();
			while (enumerator.MoveNext())
			{
				VirtualPathData virtualPath = enumerator.Current.GetVirtualPath(requestContext, values);
				if (virtualPath != null)
				{
					virtualPath.VirtualPath = NormalizeVirtualPath(requestContext, virtualPath.VirtualPath);
					return virtualPath;
				}
			}
		}
		return null;
	}

	public VirtualPathData GetVirtualPath(RequestContext requestContext, string name, RouteValueDictionary values)
	{
		requestContext = GetRequestContext(requestContext);
		if (!string.IsNullOrEmpty(name))
		{
			bool flag;
			RouteBase value;
			using (GetReadLock())
			{
				flag = _namedMap.TryGetValue(name, out value);
			}
			if (flag)
			{
				VirtualPathData virtualPath = value.GetVirtualPath(requestContext, values);
				if (virtualPath != null)
				{
					virtualPath.VirtualPath = NormalizeVirtualPath(requestContext, virtualPath.VirtualPath);
					return virtualPath;
				}
				return null;
			}
			throw new ArgumentException(string.Format(CultureInfo.CurrentUICulture, SR.GetString("A route named '{0}' could not be found in the route collection."), name), "name");
		}
		return GetVirtualPath(requestContext, values);
	}

	public IDisposable GetWriteLock()
	{
		_rwLock.EnterWriteLock();
		return new WriteLockDisposable(_rwLock);
	}

	public void Ignore(string url)
	{
		Ignore(url, null);
	}

	public void Ignore(string url, object constraints)
	{
		if (url == null)
		{
			throw new ArgumentNullException("url");
		}
		IgnoreRouteInternal item = new IgnoreRouteInternal(url)
		{
			Constraints = new RouteValueDictionary(constraints)
		};
		Add(item);
	}

	protected override void InsertItem(int index, RouteBase item)
	{
		if (item == null)
		{
			throw new ArgumentNullException("item");
		}
		if (Contains(item))
		{
			throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, SR.GetString("The route provided already exists in the route collection. The collection may not contain duplicate routes.")), "item");
		}
		base.InsertItem(index, item);
	}

	protected override void RemoveItem(int index)
	{
		RemoveRouteName(index);
		base.RemoveItem(index);
	}

	private void RemoveRouteName(int index)
	{
		RouteBase routeBase = base[index];
		foreach (KeyValuePair<string, RouteBase> item in _namedMap)
		{
			if (item.Value == routeBase)
			{
				_namedMap.Remove(item.Key);
				break;
			}
		}
	}

	protected override void SetItem(int index, RouteBase item)
	{
		if (item == null)
		{
			throw new ArgumentNullException("item");
		}
		if (Contains(item))
		{
			throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, SR.GetString("The route provided already exists in the route collection. The collection may not contain duplicate routes.")), "item");
		}
		RemoveRouteName(index);
		base.SetItem(index, item);
	}
}
