using System.Security.Permissions;
using System.Security.Principal;
using System.Web.Compilation;
using System.Web.Security;
using System.Web.UI;

namespace System.Web.Routing;

public class PageRouteHandler : IRouteHandler
{
	private bool _useRouteVirtualPath;

	private Route _routeVirtualPath;

	public string VirtualPath { get; private set; }

	public bool CheckPhysicalUrlAccess { get; private set; }

	private Route RouteVirtualPath
	{
		get
		{
			if (_routeVirtualPath == null)
			{
				_routeVirtualPath = new Route(VirtualPath.Substring(2), this);
			}
			return _routeVirtualPath;
		}
	}

	public PageRouteHandler(string virtualPath)
		: this(virtualPath, checkPhysicalUrlAccess: true)
	{
	}

	public PageRouteHandler(string virtualPath, bool checkPhysicalUrlAccess)
	{
		if (string.IsNullOrEmpty(virtualPath) || !virtualPath.StartsWith("~/", StringComparison.OrdinalIgnoreCase))
		{
			throw new ArgumentException(SR.GetString("VirtualPath must be a non-empty string starting with ~/."), "virtualPath");
		}
		VirtualPath = virtualPath;
		CheckPhysicalUrlAccess = checkPhysicalUrlAccess;
		_useRouteVirtualPath = VirtualPath.Contains("{");
	}

	private bool CheckUrlAccess(string virtualPath, RequestContext requestContext)
	{
		IPrincipal principal = requestContext.HttpContext.User;
		if (principal == null)
		{
			principal = new GenericPrincipal(new GenericIdentity(string.Empty, string.Empty), new string[0]);
		}
		return CheckUrlAccessWithAssert(virtualPath, requestContext, principal);
	}

	[SecurityPermission(SecurityAction.Assert, Unrestricted = true)]
	private bool CheckUrlAccessWithAssert(string virtualPath, RequestContext requestContext, IPrincipal user)
	{
		return UrlAuthorizationModule.CheckUrlAccessForPrincipal(virtualPath, user, requestContext.HttpContext.Request.HttpMethod);
	}

	public virtual IHttpHandler GetHttpHandler(RequestContext requestContext)
	{
		if (requestContext == null)
		{
			throw new ArgumentNullException("requestContext");
		}
		string text = GetSubstitutedVirtualPath(requestContext);
		int num = text.IndexOf('?');
		if (num != -1)
		{
			text = text.Substring(0, num);
		}
		if (CheckPhysicalUrlAccess && !CheckUrlAccess(text, requestContext))
		{
			return new UrlAuthFailureHandler();
		}
		return BuildManager.CreateInstanceFromVirtualPath(text, typeof(Page)) as Page;
	}

	public string GetSubstitutedVirtualPath(RequestContext requestContext)
	{
		if (requestContext == null)
		{
			throw new ArgumentNullException("requestContext");
		}
		if (!_useRouteVirtualPath)
		{
			return VirtualPath;
		}
		VirtualPathData virtualPath = RouteVirtualPath.GetVirtualPath(requestContext, requestContext.RouteData.Values);
		if (virtualPath == null)
		{
			return VirtualPath;
		}
		return "~/" + virtualPath.VirtualPath;
	}
}
