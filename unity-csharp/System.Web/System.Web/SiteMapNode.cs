using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Resources;
using System.Security.Principal;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace System.Web;

public class SiteMapNode : IHierarchyData, INavigateUIData, ICloneable
{
	private SiteMapProvider provider;

	private string key;

	private string url;

	private string title;

	private string description;

	private IList roles;

	private NameValueCollection attributes;

	private NameValueCollection resourceKeys;

	private bool readOnly;

	private string resourceKey;

	private SiteMapNode parent;

	private SiteMapNodeCollection childNodes;

	private IPrincipal user;

	public virtual bool HasChildNodes
	{
		get
		{
			SiteMapNodeCollection siteMapNodeCollection = ChildNodes;
			if (siteMapNodeCollection != null)
			{
				return siteMapNodeCollection.Count > 0;
			}
			return false;
		}
	}

	public virtual SiteMapNode NextSibling
	{
		get
		{
			IList siblingNodes = SiblingNodes;
			if (siblingNodes == null)
			{
				return null;
			}
			int num = siblingNodes.IndexOf(this);
			if (num >= 0 && num < siblingNodes.Count - 1)
			{
				return (SiteMapNode)siblingNodes[num + 1];
			}
			return null;
		}
	}

	public virtual SiteMapNode PreviousSibling
	{
		get
		{
			IList siblingNodes = SiblingNodes;
			if (siblingNodes == null)
			{
				return null;
			}
			int num = siblingNodes.IndexOf(this);
			if (num > 0 && num < siblingNodes.Count)
			{
				return (SiteMapNode)siblingNodes[num - 1];
			}
			return null;
		}
	}

	public virtual SiteMapNode ParentNode
	{
		get
		{
			if (parent != null)
			{
				return parent;
			}
			SiteMapProvider parentProvider = provider;
			do
			{
				parent = parentProvider.GetParentNode(this);
				if (parent != null)
				{
					return parent;
				}
				parentProvider = parentProvider.ParentProvider;
			}
			while (parentProvider != null);
			return null;
		}
		set
		{
			CheckWritable();
			parent = value;
		}
	}

	public virtual SiteMapNodeCollection ChildNodes
	{
		get
		{
			if (provider.SecurityTrimmingEnabled)
			{
				IPrincipal principal = HttpContext.Current.User;
				if ((user == null && user != principal) || (user != null && user != principal))
				{
					user = principal;
					childNodes = provider.GetChildNodes(this);
				}
			}
			else if (childNodes == null)
			{
				childNodes = provider.GetChildNodes(this);
			}
			return childNodes;
		}
		set
		{
			CheckWritable();
			user = null;
			childNodes = value;
		}
	}

	public virtual SiteMapNode RootNode => provider.RootProvider.RootNode;

	private SiteMapNodeCollection SiblingNodes
	{
		get
		{
			if (ParentNode != null)
			{
				return ParentNode.ChildNodes;
			}
			return null;
		}
	}

	public virtual string this[string key]
	{
		get
		{
			if (provider.EnableLocalization)
			{
				string text = GetImplicitResourceString(key);
				if (text == null)
				{
					text = GetExplicitResourceString(key, null, throwIfNotFound: true);
				}
				if (text != null)
				{
					return text;
				}
			}
			if (attributes != null)
			{
				return attributes[key];
			}
			return null;
		}
		set
		{
			CheckWritable();
			if (attributes == null)
			{
				attributes = new NameValueCollection();
			}
			attributes[key] = value;
		}
	}

	protected NameValueCollection Attributes
	{
		get
		{
			return attributes;
		}
		set
		{
			CheckWritable();
			attributes = value;
		}
	}

	[Localizable(true)]
	public virtual string Description
	{
		get
		{
			string text = null;
			if (provider.EnableLocalization)
			{
				text = GetImplicitResourceString("description");
				if (text == null)
				{
					text = GetExplicitResourceString("description", description, throwIfNotFound: true);
				}
			}
			else
			{
				text = description;
			}
			if (text == null)
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			CheckWritable();
			description = value;
		}
	}

	[Localizable(true)]
	public virtual string Title
	{
		get
		{
			string text = null;
			if (provider.EnableLocalization)
			{
				text = GetImplicitResourceString("title");
				if (text == null)
				{
					text = GetExplicitResourceString("title", title, throwIfNotFound: true);
				}
			}
			else
			{
				text = title;
			}
			if (text == null)
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			CheckWritable();
			title = value;
		}
	}

	public virtual string Url
	{
		get
		{
			if (url == null)
			{
				return "";
			}
			return url;
		}
		set
		{
			CheckWritable();
			url = value;
		}
	}

	public IList Roles
	{
		get
		{
			return roles;
		}
		set
		{
			CheckWritable();
			roles = value;
		}
	}

	public bool ReadOnly
	{
		get
		{
			return readOnly;
		}
		set
		{
			readOnly = value;
		}
	}

	public string ResourceKey
	{
		get
		{
			return resourceKey;
		}
		set
		{
			if (ReadOnly)
			{
				throw new InvalidOperationException("The node is read-only.");
			}
			resourceKey = value;
		}
	}

	public string Key => key;

	public SiteMapProvider Provider => provider;

	bool IHierarchyData.HasChildren => HasChildNodes;

	object IHierarchyData.Item => this;

	string IHierarchyData.Path => Url;

	string IHierarchyData.Type => "SiteMapNode";

	string INavigateUIData.Name => Title;

	string INavigateUIData.NavigateUrl => Url;

	string INavigateUIData.Value => Title;

	private SiteMapNode()
	{
	}

	public SiteMapNode(SiteMapProvider provider, string key)
		: this(provider, key, null, null, null, null, null, null, null)
	{
	}

	public SiteMapNode(SiteMapProvider provider, string key, string url)
		: this(provider, key, url, null, null, null, null, null, null)
	{
	}

	public SiteMapNode(SiteMapProvider provider, string key, string url, string title)
		: this(provider, key, url, title, null, null, null, null, null)
	{
	}

	public SiteMapNode(SiteMapProvider provider, string key, string url, string title, string description)
		: this(provider, key, url, title, description, null, null, null, null)
	{
	}

	public SiteMapNode(SiteMapProvider provider, string key, string url, string title, string description, IList roles, NameValueCollection attributes, NameValueCollection explicitResourceKeys, string implicitResourceKey)
	{
		if (provider == null)
		{
			throw new ArgumentNullException("provider");
		}
		if (key == null)
		{
			throw new ArgumentNullException("key");
		}
		this.provider = provider;
		this.key = key;
		this.url = url;
		this.title = title;
		this.description = description;
		this.roles = roles;
		this.attributes = attributes;
		resourceKeys = explicitResourceKeys;
		resourceKey = implicitResourceKey;
	}

	public SiteMapDataSourceView GetDataSourceView(SiteMapDataSource owner, string viewName)
	{
		return new SiteMapDataSourceView(owner, viewName, this);
	}

	public SiteMapHierarchicalDataSourceView GetHierarchicalDataSourceView()
	{
		return new SiteMapHierarchicalDataSourceView(this);
	}

	public virtual bool IsAccessibleToUser(HttpContext context)
	{
		return provider.IsAccessibleToUser(context, this);
	}

	public override string ToString()
	{
		return Title;
	}

	public SiteMapNodeCollection GetAllNodes()
	{
		SiteMapNodeCollection siteMapNodeCollection = new SiteMapNodeCollection();
		GetAllNodesRecursive(siteMapNodeCollection);
		return SiteMapNodeCollection.ReadOnly(siteMapNodeCollection);
	}

	private void GetAllNodesRecursive(SiteMapNodeCollection c)
	{
		SiteMapNodeCollection siteMapNodeCollection = ChildNodes;
		if (siteMapNodeCollection == null || siteMapNodeCollection.Count <= 0)
		{
			return;
		}
		c.AddRange(siteMapNodeCollection);
		foreach (SiteMapNode item in siteMapNodeCollection)
		{
			item.GetAllNodesRecursive(c);
		}
	}

	public virtual bool IsDescendantOf(SiteMapNode node)
	{
		for (SiteMapNode parentNode = ParentNode; parentNode != null; parentNode = parentNode.ParentNode)
		{
			if (parentNode == node)
			{
				return true;
			}
		}
		return false;
	}

	protected string GetExplicitResourceString(string attributeName, string defaultValue, bool throwIfNotFound)
	{
		if (attributeName == null)
		{
			throw new ArgumentNullException("attributeName");
		}
		if (resourceKeys != null)
		{
			string[] values = resourceKeys.GetValues(attributeName);
			if (values != null && values.Length == 2)
			{
				try
				{
					object globalResourceObject = HttpContext.GetGlobalResourceObject(values[0], values[1]);
					if (globalResourceObject is string)
					{
						return (string)globalResourceObject;
					}
				}
				catch (MissingManifestResourceException)
				{
				}
				if (throwIfNotFound && defaultValue == null)
				{
					throw new InvalidOperationException($"The resource object with classname '{values[0]}' and key '{values[1]}' was not found.");
				}
			}
		}
		return defaultValue;
	}

	protected string GetImplicitResourceString(string attributeName)
	{
		if (attributeName == null)
		{
			throw new ArgumentNullException("attributeName");
		}
		string text = ResourceKey;
		if (string.IsNullOrEmpty(text))
		{
			return null;
		}
		try
		{
			object globalResourceObject = HttpContext.GetGlobalResourceObject(provider.ResourceKey, text + "." + attributeName);
			if (globalResourceObject is string)
			{
				return (string)globalResourceObject;
			}
		}
		catch (MissingManifestResourceException)
		{
		}
		return null;
	}

	object ICloneable.Clone()
	{
		return Clone(cloneParentNodes: false);
	}

	public virtual SiteMapNode Clone()
	{
		return Clone(cloneParentNodes: false);
	}

	public virtual SiteMapNode Clone(bool cloneParentNodes)
	{
		SiteMapNode siteMapNode = new SiteMapNode();
		siteMapNode.provider = provider;
		siteMapNode.key = key;
		siteMapNode.url = url;
		siteMapNode.title = title;
		siteMapNode.description = description;
		if (roles != null)
		{
			siteMapNode.roles = new ArrayList(roles);
		}
		if (attributes != null)
		{
			siteMapNode.attributes = new NameValueCollection(attributes);
		}
		if (cloneParentNodes && ParentNode != null)
		{
			siteMapNode.parent = ParentNode.Clone(cloneParentNodes: true);
		}
		return siteMapNode;
	}

	public override bool Equals(object obj)
	{
		if (!(obj is SiteMapNode siteMapNode))
		{
			return false;
		}
		if (siteMapNode.key != key || siteMapNode.url != url || siteMapNode.title != title || siteMapNode.description != description)
		{
			return false;
		}
		if (roles == null || siteMapNode.roles == null)
		{
			if (roles != siteMapNode.roles)
			{
				return false;
			}
		}
		else
		{
			if (roles.Count != siteMapNode.roles.Count)
			{
				return false;
			}
			foreach (object role in roles)
			{
				if (!siteMapNode.roles.Contains(role))
				{
					return false;
				}
			}
		}
		if (attributes == null || siteMapNode.attributes == null)
		{
			if (attributes != siteMapNode.attributes)
			{
				return false;
			}
		}
		else
		{
			if (attributes.Count != siteMapNode.attributes.Count)
			{
				return false;
			}
			foreach (string attribute in attributes)
			{
				if (attributes[attribute] != siteMapNode.attributes[attribute])
				{
					return false;
				}
			}
		}
		return true;
	}

	public override int GetHashCode()
	{
		return (key + url + title + description).GetHashCode();
	}

	private void CheckWritable()
	{
		if (readOnly)
		{
			throw new InvalidOperationException("Can't modify read-only node");
		}
	}

	IHierarchicalEnumerable IHierarchyData.GetChildren()
	{
		return ChildNodes;
	}

	IHierarchyData IHierarchyData.GetParent()
	{
		return ParentNode;
	}
}
