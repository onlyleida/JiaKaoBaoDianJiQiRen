using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Configuration.Provider;
using System.Web.Configuration;

namespace System.Web;

public abstract class SiteMapProvider : ProviderBase
{
	private static readonly object siteMapResolveEvent = new object();

	internal object this_lock = new object();

	private bool enableLocalization;

	private SiteMapProvider parentProvider;

	private SiteMapProvider rootProviderCache;

	private bool securityTrimming;

	private object resolveLock = new object();

	private bool resolving;

	private EventHandlerList events = new EventHandlerList();

	private string resourceKey;

	public virtual SiteMapNode CurrentNode
	{
		get
		{
			if (HttpContext.Current != null)
			{
				SiteMapNode siteMapNode = ResolveSiteMapNode(HttpContext.Current);
				if (siteMapNode != null)
				{
					return siteMapNode;
				}
				return FindSiteMapNode(HttpContext.Current);
			}
			return null;
		}
	}

	public virtual SiteMapProvider ParentProvider
	{
		get
		{
			return parentProvider;
		}
		set
		{
			parentProvider = value;
		}
	}

	public virtual SiteMapProvider RootProvider
	{
		get
		{
			lock (this_lock)
			{
				if (rootProviderCache == null)
				{
					SiteMapProvider siteMapProvider = this;
					while (siteMapProvider.ParentProvider != null)
					{
						siteMapProvider = siteMapProvider.ParentProvider;
					}
					rootProviderCache = siteMapProvider;
				}
			}
			return rootProviderCache;
		}
	}

	public bool EnableLocalization
	{
		get
		{
			return enableLocalization;
		}
		set
		{
			enableLocalization = value;
		}
	}

	public bool SecurityTrimmingEnabled => securityTrimming;

	public string ResourceKey
	{
		get
		{
			return resourceKey;
		}
		set
		{
			resourceKey = value;
		}
	}

	public virtual SiteMapNode RootNode => ReturnNodeIfAccessible(GetRootNodeCore());

	public event SiteMapResolveEventHandler SiteMapResolve
	{
		add
		{
			events.AddHandler(siteMapResolveEvent, value);
		}
		remove
		{
			events.RemoveHandler(siteMapResolveEvent, value);
		}
	}

	protected virtual void AddNode(SiteMapNode node)
	{
		AddNode(node, null);
	}

	protected internal virtual void AddNode(SiteMapNode node, SiteMapNode parentNode)
	{
		throw new NotImplementedException();
	}

	public virtual SiteMapNode FindSiteMapNode(HttpContext context)
	{
		if (context == null)
		{
			return null;
		}
		HttpRequest request = context.Request;
		if (request == null)
		{
			return null;
		}
		SiteMapNode siteMapNode = FindSiteMapNode(request.RawUrl);
		if (siteMapNode == null)
		{
			siteMapNode = FindSiteMapNode(request.Path);
		}
		return siteMapNode;
	}

	public abstract SiteMapNode FindSiteMapNode(string rawUrl);

	public virtual SiteMapNode FindSiteMapNodeFromKey(string key)
	{
		return FindSiteMapNode(key);
	}

	public abstract SiteMapNodeCollection GetChildNodes(SiteMapNode node);

	public virtual SiteMapNode GetCurrentNodeAndHintAncestorNodes(int upLevel)
	{
		if (upLevel < -1)
		{
			throw new ArgumentOutOfRangeException("upLevel");
		}
		return CurrentNode;
	}

	public virtual SiteMapNode GetCurrentNodeAndHintNeighborhoodNodes(int upLevel, int downLevel)
	{
		if (upLevel < -1)
		{
			throw new ArgumentOutOfRangeException("upLevel");
		}
		if (downLevel < -1)
		{
			throw new ArgumentOutOfRangeException("downLevel");
		}
		return CurrentNode;
	}

	public abstract SiteMapNode GetParentNode(SiteMapNode node);

	public virtual SiteMapNode GetParentNodeRelativeToCurrentNodeAndHintDownFromParent(int walkupLevels, int relativeDepthFromWalkup)
	{
		if (walkupLevels < 0)
		{
			throw new ArgumentOutOfRangeException("walkupLevels");
		}
		if (relativeDepthFromWalkup < 0)
		{
			throw new ArgumentOutOfRangeException("relativeDepthFromWalkup");
		}
		SiteMapNode siteMapNode = GetCurrentNodeAndHintAncestorNodes(walkupLevels);
		for (int i = 0; i < walkupLevels; i++)
		{
			if (siteMapNode == null)
			{
				break;
			}
			siteMapNode = GetParentNode(siteMapNode);
		}
		if (siteMapNode == null)
		{
			return null;
		}
		HintNeighborhoodNodes(siteMapNode, 0, relativeDepthFromWalkup);
		return siteMapNode;
	}

	public virtual SiteMapNode GetParentNodeRelativeToNodeAndHintDownFromParent(SiteMapNode node, int walkupLevels, int relativeDepthFromWalkup)
	{
		if (walkupLevels < 0)
		{
			throw new ArgumentOutOfRangeException("walkupLevels");
		}
		if (relativeDepthFromWalkup < 0)
		{
			throw new ArgumentOutOfRangeException("relativeDepthFromWalkup");
		}
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
		HintAncestorNodes(node, walkupLevels);
		for (int i = 0; i < walkupLevels; i++)
		{
			if (node == null)
			{
				break;
			}
			node = GetParentNode(node);
		}
		if (node == null)
		{
			return null;
		}
		HintNeighborhoodNodes(node, 0, relativeDepthFromWalkup);
		return node;
	}

	protected internal abstract SiteMapNode GetRootNodeCore();

	protected static SiteMapNode GetRootNodeCoreFromProvider(SiteMapProvider provider)
	{
		return provider.GetRootNodeCore();
	}

	public virtual void HintAncestorNodes(SiteMapNode node, int upLevel)
	{
		if (upLevel < -1)
		{
			throw new ArgumentOutOfRangeException("upLevel");
		}
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
	}

	public virtual void HintNeighborhoodNodes(SiteMapNode node, int upLevel, int downLevel)
	{
		if (upLevel < -1)
		{
			throw new ArgumentOutOfRangeException("upLevel");
		}
		if (downLevel < -1)
		{
			throw new ArgumentOutOfRangeException("downLevel");
		}
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
	}

	protected virtual void RemoveNode(SiteMapNode node)
	{
		throw new NotImplementedException();
	}

	public override void Initialize(string name, NameValueCollection attributes)
	{
		base.Initialize(name, attributes);
		if (attributes["securityTrimmingEnabled"] != null)
		{
			securityTrimming = (bool)Convert.ChangeType(attributes["securityTrimmingEnabled"], typeof(bool));
		}
	}

	[MonoTODO("need to implement cases 2 and 3")]
	public virtual bool IsAccessibleToUser(HttpContext context, SiteMapNode node)
	{
		if (context == null)
		{
			throw new ArgumentNullException("context");
		}
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
		if (!SecurityTrimmingEnabled)
		{
			return true;
		}
		IList roles = node.Roles;
		if (roles != null && roles.Count > 0)
		{
			foreach (string item in roles)
			{
				if (item == "*" || context.User.IsInRole(item))
				{
					return true;
				}
			}
		}
		string text2 = node.Url;
		if (!string.IsNullOrEmpty(text2))
		{
			if (VirtualPathUtility.IsAppRelative(text2) || !VirtualPathUtility.IsAbsolute(text2))
			{
				text2 = VirtualPathUtility.Combine(VirtualPathUtility.AppendTrailingSlash(HttpRuntime.AppDomainAppVirtualPath), text2);
			}
			AuthorizationSection authorizationSection = (AuthorizationSection)WebConfigurationManager.GetSection("system.web/authorization", text2);
			if (authorizationSection != null)
			{
				return authorizationSection.IsValidUser(context.User, context.Request.HttpMethod);
			}
		}
		return false;
	}

	protected SiteMapNode ResolveSiteMapNode(HttpContext context)
	{
		if (events[siteMapResolveEvent] is SiteMapResolveEventHandler siteMapResolveEventHandler)
		{
			lock (resolveLock)
			{
				if (resolving)
				{
					return null;
				}
				resolving = true;
				SiteMapResolveEventArgs e = new SiteMapResolveEventArgs(context, this);
				SiteMapNode result = siteMapResolveEventHandler(this, e);
				resolving = false;
				return result;
			}
		}
		return null;
	}

	internal static SiteMapNode ReturnNodeIfAccessible(SiteMapNode node)
	{
		if (node.IsAccessibleToUser(HttpContext.Current))
		{
			return node;
		}
		throw new InvalidOperationException();
	}
}
