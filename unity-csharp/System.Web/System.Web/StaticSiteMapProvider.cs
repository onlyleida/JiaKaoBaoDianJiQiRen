using System.Collections.Generic;
using System.Web.Util;

namespace System.Web;

public abstract class StaticSiteMapProvider : SiteMapProvider
{
	private Dictionary<string, SiteMapNode> keyToNode;

	private Dictionary<SiteMapNode, SiteMapNode> nodeToParent;

	private Dictionary<SiteMapNode, SiteMapNodeCollection> nodeToChildren;

	private Dictionary<string, SiteMapNode> urlToNode;

	protected StaticSiteMapProvider()
	{
		keyToNode = new Dictionary<string, SiteMapNode>();
		nodeToParent = new Dictionary<SiteMapNode, SiteMapNode>();
		nodeToChildren = new Dictionary<SiteMapNode, SiteMapNodeCollection>();
		urlToNode = new Dictionary<string, SiteMapNode>(StringComparer.InvariantCultureIgnoreCase);
	}

	protected internal override void AddNode(SiteMapNode node, SiteMapNode parentNode)
	{
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
		lock (this_lock)
		{
			string key = node.Key;
			if (FindSiteMapNodeFromKey(key) != null && node.Provider == this)
			{
				throw new InvalidOperationException($"A node with key '{key}' already exists.");
			}
			string url = node.Url;
			if (!string.IsNullOrEmpty(url))
			{
				string text = MapUrl(url);
				SiteMapNode siteMapNode = FindSiteMapNode(text);
				if (siteMapNode != null && string.Compare(siteMapNode.Url, text, RuntimeHelpers.StringComparison) == 0)
				{
					throw new InvalidOperationException($"Multiple nodes with the same URL '{node.Url}' were found. StaticSiteMapProvider requires that sitemap nodes have unique URLs.");
				}
				urlToNode.Add(text, node);
			}
			keyToNode.Add(key, node);
			if (node != RootNode)
			{
				if (parentNode == null)
				{
					parentNode = RootNode;
				}
				nodeToParent.Add(node, parentNode);
				if (!nodeToChildren.TryGetValue(parentNode, out var value))
				{
					nodeToChildren.Add(parentNode, value = new SiteMapNodeCollection());
				}
				value.Add(node);
			}
		}
	}

	protected virtual void Clear()
	{
		lock (this_lock)
		{
			urlToNode.Clear();
			nodeToChildren.Clear();
			nodeToParent.Clear();
			keyToNode.Clear();
		}
	}

	public override SiteMapNode FindSiteMapNode(string rawUrl)
	{
		if (rawUrl == null)
		{
			throw new ArgumentNullException("rawUrl");
		}
		if (rawUrl == string.Empty)
		{
			return null;
		}
		BuildSiteMap();
		if (VirtualPathUtility.IsAppRelative(rawUrl))
		{
			rawUrl = VirtualPathUtility.ToAbsolute(rawUrl, HttpRuntime.AppDomainAppVirtualPath, normalize: false);
		}
		if (!urlToNode.TryGetValue(rawUrl, out var value))
		{
			return null;
		}
		return CheckAccessibility(value);
	}

	public override SiteMapNodeCollection GetChildNodes(SiteMapNode node)
	{
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
		BuildSiteMap();
		if (!nodeToChildren.TryGetValue(node, out var value))
		{
			return SiteMapNodeCollection.EmptyCollection;
		}
		SiteMapNodeCollection siteMapNodeCollection = null;
		for (int i = 0; i < value.Count; i++)
		{
			if (!IsAccessibleToUser(HttpContext.Current, value[i]))
			{
				if (siteMapNodeCollection == null)
				{
					siteMapNodeCollection = new SiteMapNodeCollection();
					for (int j = 0; j < i; j++)
					{
						siteMapNodeCollection.Add(value[j]);
					}
				}
			}
			else
			{
				siteMapNodeCollection?.Add(value[i]);
			}
		}
		if (siteMapNodeCollection == null)
		{
			return SiteMapNodeCollection.ReadOnly(value);
		}
		if (siteMapNodeCollection.Count > 0)
		{
			return SiteMapNodeCollection.ReadOnly(siteMapNodeCollection);
		}
		return SiteMapNodeCollection.EmptyCollection;
	}

	public override SiteMapNode GetParentNode(SiteMapNode node)
	{
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
		BuildSiteMap();
		nodeToParent.TryGetValue(node, out var value);
		return CheckAccessibility(value);
	}

	protected override void RemoveNode(SiteMapNode node)
	{
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
		string key = node.Key;
		lock (this_lock)
		{
			if (keyToNode.ContainsKey(key))
			{
				keyToNode.Remove(key);
			}
			string url = node.Url;
			if (!string.IsNullOrEmpty(url))
			{
				url = MapUrl(url);
				if (urlToNode.ContainsKey(url))
				{
					urlToNode.Remove(url);
				}
			}
			if (node != RootNode && nodeToParent.TryGetValue(node, out var value))
			{
				nodeToParent.Remove(node);
				if (nodeToChildren.ContainsKey(value))
				{
					nodeToChildren[value].Remove(node);
				}
			}
		}
	}

	public override SiteMapNode FindSiteMapNodeFromKey(string key)
	{
		if (key == null)
		{
			throw new ArgumentNullException("key");
		}
		keyToNode.TryGetValue(key, out var value);
		return CheckAccessibility(value);
	}

	public abstract SiteMapNode BuildSiteMap();

	private SiteMapNode CheckAccessibility(SiteMapNode node)
	{
		if (node == null || !IsAccessibleToUser(HttpContext.Current, node))
		{
			return null;
		}
		return node;
	}

	internal string MapUrl(string url)
	{
		if (string.IsNullOrEmpty(url))
		{
			return url;
		}
		string text = HttpRuntime.AppDomainAppVirtualPath;
		if (string.IsNullOrEmpty(text))
		{
			text = "/";
		}
		if (VirtualPathUtility.IsAppRelative(url))
		{
			return VirtualPathUtility.ToAbsolute(url, text, normalize: true);
		}
		return VirtualPathUtility.ToAbsolute(UrlUtils.Combine(text, url), text, normalize: true);
	}
}
