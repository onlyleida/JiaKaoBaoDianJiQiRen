using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Configuration.Provider;
using System.IO;
using System.Web.Configuration;
using System.Web.Hosting;
using System.Web.Util;
using System.Xml;

namespace System.Web;

public class XmlSiteMapProvider : StaticSiteMapProvider, IDisposable
{
	private static readonly char[] seperators = new char[2] { ';', ',' };

	private bool initialized;

	private string fileVirtualPath;

	private SiteMapNode root;

	private List<FileSystemWatcher> watchers;

	private Dictionary<string, bool> _childProvidersPresent;

	private List<SiteMapProvider> _childProviders;

	private Dictionary<string, bool> ChildProvidersPresent
	{
		get
		{
			if (_childProvidersPresent == null)
			{
				_childProvidersPresent = new Dictionary<string, bool>();
			}
			return _childProvidersPresent;
		}
	}

	private List<SiteMapProvider> ChildProviders
	{
		get
		{
			if (_childProviders == null)
			{
				_childProviders = new List<SiteMapProvider>();
			}
			return _childProviders;
		}
	}

	public override SiteMapNode RootNode
	{
		get
		{
			BuildSiteMap();
			return root;
		}
	}

	protected internal override void AddNode(SiteMapNode node, SiteMapNode parentNode)
	{
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
		if (parentNode == null)
		{
			throw new ArgumentNullException("parentNode");
		}
		SiteMapProvider provider = node.Provider;
		if (provider != this)
		{
			throw new ArgumentException(string.Concat("SiteMapNode '", node, "' cannot be found in current provider, only nodes in the same provider can be added."), "node");
		}
		SiteMapProvider provider2 = parentNode.Provider;
		if (provider != provider2)
		{
			throw new ArgumentException(string.Concat("SiteMapNode '", parentNode, "' cannot be found in current provider, only nodes in the same provider can be added."), "parentNode");
		}
		AddNodeNoCheck(node, parentNode);
	}

	private void AddNodeNoCheck(SiteMapNode node, SiteMapNode parentNode)
	{
		base.AddNode(node, parentNode);
		SiteMapProvider provider = node.Provider;
		if (provider != this)
		{
			RegisterChildProvider(provider.Name, provider);
		}
	}

	protected virtual void AddProvider(string providerName, SiteMapNode parentNode)
	{
		if (parentNode == null)
		{
			throw new ArgumentNullException("parentNode");
		}
		if (parentNode.Provider != this)
		{
			throw new ArgumentException("The Provider property of the parentNode does not reference the current provider.", "parentNode");
		}
		SiteMapProvider siteMapProvider = SiteMap.Providers[providerName];
		if (siteMapProvider == null)
		{
			throw new ProviderException("Provider with name [" + providerName + "] was not found.");
		}
		AddNode(siteMapProvider.GetRootNodeCore());
		RegisterChildProvider(providerName, siteMapProvider);
	}

	private void RegisterChildProvider(string name, SiteMapProvider smp)
	{
		Dictionary<string, bool> childProvidersPresent = ChildProvidersPresent;
		if (!childProvidersPresent.ContainsKey(name))
		{
			childProvidersPresent.Add(name, value: true);
			ChildProviders.Add(smp);
		}
	}

	private XmlNode FindStartingNode(string virtualPath, out bool enableLocalization)
	{
		XmlElement documentElement = GetConfigDocument(virtualPath).DocumentElement;
		if (string.Compare("siteMap", documentElement.Name, StringComparison.Ordinal) != 0)
		{
			throw new ConfigurationErrorsException("Top element must be 'siteMap'");
		}
		XmlNode xmlNode = documentElement.Attributes["enableLocalization"];
		if (xmlNode != null && !string.IsNullOrEmpty(xmlNode.Value))
		{
			enableLocalization = (bool)Convert.ChangeType(xmlNode.Value, typeof(bool));
		}
		else
		{
			enableLocalization = false;
		}
		XmlNodeList childNodes = documentElement.ChildNodes;
		XmlNode xmlNode2 = null;
		foreach (XmlNode item in childNodes)
		{
			if (string.Compare("siteMapNode", item.Name, StringComparison.Ordinal) != 0)
			{
				throw new ConfigurationErrorsException("Only <siteMapNode> elements are allowed at the document top level.");
			}
			if (xmlNode2 != null)
			{
				throw new ConfigurationErrorsException("Only one <siteMapNode> element is allowed at the document top level.");
			}
			xmlNode2 = item;
		}
		if (xmlNode2 == null)
		{
			throw new ConfigurationErrorsException("Missing <siteMapNode> element at the document top level.");
		}
		return xmlNode2;
	}

	private XmlDocument GetConfigDocument(string virtualPath)
	{
		if (string.IsNullOrEmpty(virtualPath))
		{
			throw new ArgumentException("The siteMapFile attribute must be specified on the XmlSiteMapProvider");
		}
		string text = HostingEnvironment.MapPath(virtualPath);
		if (text == null)
		{
			throw new HttpException("Virtual path '" + virtualPath + "' cannot be mapped to physical path.");
		}
		if (string.Compare(Path.GetExtension(text), ".sitemap", RuntimeHelpers.StringComparison) != 0)
		{
			throw new InvalidOperationException($"The file {(string.IsNullOrEmpty(virtualPath) ? Path.GetFileName(text) : virtualPath)} has an invalid extension, only .sitemap files are allowed in XmlSiteMapProvider.");
		}
		if (!File.Exists(text))
		{
			throw new InvalidOperationException($"The file '{(string.IsNullOrEmpty(virtualPath) ? Path.GetFileName(text) : virtualPath)}' required by XmlSiteMapProvider does not exist.");
		}
		ResourceKey = Path.GetFileName(text);
		CreateWatcher(text);
		XmlDocument xmlDocument = new XmlDocument();
		xmlDocument.Load(text);
		return xmlDocument;
	}

	public override SiteMapNode BuildSiteMap()
	{
		if (root != null)
		{
			return root;
		}
		lock (this_lock)
		{
			if (root != null)
			{
				return root;
			}
			Clear();
			XmlNode xmlNode = FindStartingNode(fileVirtualPath, out var flag);
			EnableLocalization = flag;
			BuildSiteMapRecursive(xmlNode, null);
			return root;
		}
	}

	private SiteMapNode ConvertToSiteMapNode(XmlNode xmlNode)
	{
		bool flag = EnableLocalization;
		string optionalAttribute = GetOptionalAttribute(xmlNode, "url");
		string title = GetOptionalAttribute(xmlNode, "title");
		string description = GetOptionalAttribute(xmlNode, "description");
		string optionalAttribute2 = GetOptionalAttribute(xmlNode, "roles");
		string optionalAttribute3 = GetOptionalAttribute(xmlNode, "resourceKey");
		List<string> list = new List<string>();
		if (optionalAttribute2 != null && optionalAttribute2.Length > 0)
		{
			string[] array = optionalAttribute2.Split(seperators);
			for (int i = 0; i < array.Length; i++)
			{
				string text = array[i].Trim();
				if (text.Length > 0)
				{
					list.Add(text);
				}
			}
		}
		optionalAttribute = MapUrl(optionalAttribute);
		NameValueCollection attributes = null;
		NameValueCollection explicitResourceKeys = null;
		if (flag)
		{
			CollectLocalizationInfo(xmlNode, ref title, ref description, ref attributes, ref explicitResourceKeys);
		}
		else
		{
			foreach (XmlNode attribute in xmlNode.Attributes)
			{
				PutInCollection(attribute.Name, attribute.Value, ref attributes);
			}
		}
		string key = Guid.NewGuid().ToString();
		return new SiteMapNode(this, key, optionalAttribute, title, description, list.AsReadOnly(), attributes, explicitResourceKeys, optionalAttribute3);
	}

	private void BuildSiteMapRecursive(XmlNode xmlNode, SiteMapNode parent)
	{
		if (xmlNode.Name != "siteMapNode")
		{
			throw new ConfigurationException("incorrect element name", xmlNode);
		}
		string nonEmptyOptionalAttribute = GetNonEmptyOptionalAttribute(xmlNode, "provider");
		if (nonEmptyOptionalAttribute != null)
		{
			SiteMapProvider siteMapProvider = SiteMap.Providers[nonEmptyOptionalAttribute] ?? throw new ProviderException("Provider with name [" + nonEmptyOptionalAttribute + "] was not found.");
			siteMapProvider.ParentProvider = this;
			SiteMapNode rootNodeCore = siteMapProvider.GetRootNodeCore();
			if (parent == null)
			{
				root = rootNodeCore;
			}
			else
			{
				AddNodeNoCheck(rootNodeCore, parent);
			}
			return;
		}
		nonEmptyOptionalAttribute = GetNonEmptyOptionalAttribute(xmlNode, "siteMapFile");
		if (nonEmptyOptionalAttribute != null)
		{
			NameValueCollection nameValueCollection = new NameValueCollection();
			nameValueCollection.Add("siteMapFile", nonEmptyOptionalAttribute);
			string optionalAttribute = GetOptionalAttribute(xmlNode, "description");
			if (!string.IsNullOrEmpty(optionalAttribute))
			{
				nameValueCollection.Add("description", optionalAttribute);
			}
			string name = MapUrl(nonEmptyOptionalAttribute);
			XmlSiteMapProvider xmlSiteMapProvider = new XmlSiteMapProvider();
			xmlSiteMapProvider.Initialize(name, nameValueCollection);
			SiteMapNode rootNodeCore2 = xmlSiteMapProvider.GetRootNodeCore();
			if (parent == null)
			{
				root = rootNodeCore2;
			}
			else
			{
				AddNodeNoCheck(rootNodeCore2, parent);
			}
			return;
		}
		SiteMapNode siteMapNode = ConvertToSiteMapNode(xmlNode);
		if (parent == null)
		{
			root = siteMapNode;
		}
		else
		{
			AddNodeNoCheck(siteMapNode, parent);
		}
		XmlNodeList childNodes = xmlNode.ChildNodes;
		if (childNodes == null || childNodes.Count < 1)
		{
			return;
		}
		foreach (XmlNode item in childNodes)
		{
			if (item.NodeType == XmlNodeType.Element)
			{
				BuildSiteMapRecursive(item, siteMapNode);
			}
		}
	}

	private string GetNonEmptyOptionalAttribute(XmlNode n, string name)
	{
		return HandlersUtil.ExtractAttributeValue(name, n, optional: true);
	}

	private string GetOptionalAttribute(XmlNode n, string name)
	{
		return HandlersUtil.ExtractAttributeValue(name, n, optional: true, allowEmpty: true);
	}

	private void PutInCollection(string name, string value, ref NameValueCollection coll)
	{
		PutInCollection(name, null, value, ref coll);
	}

	private void PutInCollection(string name, string classKey, string value, ref NameValueCollection coll)
	{
		if (coll == null)
		{
			coll = new NameValueCollection();
		}
		if (!string.IsNullOrEmpty(classKey))
		{
			coll.Add(name, classKey);
		}
		coll.Add(name, value);
	}

	private bool GetAttributeLocalization(string value, out string resClass, out string resKey, out string resDefault)
	{
		resClass = null;
		resKey = null;
		resDefault = null;
		if (string.IsNullOrEmpty(value))
		{
			return false;
		}
		string text = value.TrimStart(' ', '\t');
		if (text.Length < 11 || string.Compare(text, 0, "$resources:", 0, 11, StringComparison.InvariantCultureIgnoreCase) != 0)
		{
			return false;
		}
		text = text.Substring(11);
		if (text.Length == 0)
		{
			return false;
		}
		string[] array = text.Split(',');
		if (array.Length < 2)
		{
			return false;
		}
		resClass = array[0].Trim();
		resKey = array[1].Trim();
		if (array.Length == 3)
		{
			resDefault = array[2];
		}
		else if (array.Length > 3)
		{
			resDefault = string.Join(",", array, 2, array.Length - 2);
		}
		return true;
	}

	private void CollectLocalizationInfo(XmlNode xmlNode, ref string title, ref string description, ref NameValueCollection attributes, ref NameValueCollection explicitResourceKeys)
	{
		if (GetAttributeLocalization(title, out var resClass, out var resKey, out var resDefault))
		{
			PutInCollection("title", resClass, resKey, ref explicitResourceKeys);
			title = resDefault;
		}
		if (GetAttributeLocalization(description, out resClass, out resKey, out resDefault))
		{
			PutInCollection("description", resClass, resKey, ref explicitResourceKeys);
			description = resDefault;
		}
		foreach (XmlNode attribute in xmlNode.Attributes)
		{
			string value;
			if (GetAttributeLocalization(attribute.Value, out resClass, out resKey, out resDefault))
			{
				PutInCollection(attribute.Name, resClass, resKey, ref explicitResourceKeys);
				value = resDefault;
			}
			else
			{
				value = attribute.Value;
			}
			PutInCollection(attribute.Name, value, ref attributes);
		}
	}

	protected override void Clear()
	{
		base.Clear();
		root = null;
		ChildProviders.Clear();
		ChildProvidersPresent.Clear();
	}

	protected virtual void Dispose(bool disposing)
	{
		if (!disposing)
		{
			return;
		}
		foreach (FileSystemWatcher watcher in watchers)
		{
			watcher.Dispose();
		}
		watchers = null;
	}

	public void Dispose()
	{
		Dispose(disposing: true);
	}

	public override SiteMapNode FindSiteMapNode(string rawUrl)
	{
		SiteMapNode siteMapNode = base.FindSiteMapNode(rawUrl);
		if (siteMapNode != null)
		{
			return siteMapNode;
		}
		siteMapNode = RootNode;
		string text = MapUrl(rawUrl);
		if (siteMapNode != null && string.Compare(text, siteMapNode.Url, RuntimeHelpers.StringComparison) == 0)
		{
			return siteMapNode;
		}
		foreach (SiteMapProvider childProvider in ChildProviders)
		{
			siteMapNode = childProvider.FindSiteMapNode(text);
			if (siteMapNode != null)
			{
				return siteMapNode;
			}
		}
		return null;
	}

	public override SiteMapNode FindSiteMapNodeFromKey(string key)
	{
		SiteMapNode siteMapNode = base.FindSiteMapNodeFromKey(key);
		if (siteMapNode != null)
		{
			return siteMapNode;
		}
		foreach (SiteMapProvider childProvider in ChildProviders)
		{
			siteMapNode = childProvider.FindSiteMapNodeFromKey(key);
			if (siteMapNode != null)
			{
				return siteMapNode;
			}
		}
		return null;
	}

	public override void Initialize(string name, NameValueCollection attributes)
	{
		if (initialized)
		{
			throw new InvalidOperationException("XmlSiteMapProvider cannot be initialized twice.");
		}
		initialized = true;
		if (attributes != null)
		{
			string[] allKeys = attributes.AllKeys;
			foreach (string text in allKeys)
			{
				switch (text)
				{
				case "siteMapFile":
					fileVirtualPath = MapUrl(attributes["siteMapFile"]);
					continue;
				case "description":
				case "securityTrimmingEnabled":
					continue;
				}
				throw new ConfigurationErrorsException("The attribute '" + text + "' is unexpected in the configuration of the '" + name + "' provider.");
			}
		}
		base.Initialize(name, (attributes != null) ? attributes : new NameValueCollection());
	}

	private void CreateWatcher(string file)
	{
		FileSystemWatcher fileSystemWatcher = new FileSystemWatcher();
		fileSystemWatcher.NotifyFilter |= NotifyFilters.Size;
		fileSystemWatcher.Path = Path.GetFullPath(Path.GetDirectoryName(file));
		fileSystemWatcher.Filter = Path.GetFileName(file);
		fileSystemWatcher.Changed += OnFileChanged;
		fileSystemWatcher.EnableRaisingEvents = true;
		if (watchers == null)
		{
			watchers = new List<FileSystemWatcher>();
		}
		watchers.Add(fileSystemWatcher);
	}

	protected override void RemoveNode(SiteMapNode node)
	{
		base.RemoveNode(node);
	}

	[MonoTODO("Not implemented")]
	protected virtual void RemoveProvider(string providerName)
	{
		throw new NotImplementedException();
	}

	private void OnFileChanged(object sender, FileSystemEventArgs args)
	{
		Clear();
	}

	protected internal override SiteMapNode GetRootNodeCore()
	{
		return BuildSiteMap();
	}
}
