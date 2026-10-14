using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Web.Caching;
using System.Xml;
using System.Xml.Xsl;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.XmlDataSourceDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[WebSysDescription("Connect to an XML file.")]
[ToolboxBitmap("")]
[DefaultEvent("Transforming")]
[ParseChildren(true)]
[PersistChildren(false)]
[DefaultProperty("DataFile")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class XmlDataSource : HierarchicalDataSourceControl, IDataSource, IListSource
{
	private string _data = string.Empty;

	private string _transform = string.Empty;

	private string _xpath = string.Empty;

	private string _dataFile = string.Empty;

	private string _transformFile = string.Empty;

	private string _cacheKeyDependency = string.Empty;

	private bool _enableCaching = true;

	private int _cacheDuration;

	private bool _documentNeedsUpdate;

	private DataSourceCacheExpiry _cacheExpirationPolicy;

	private static readonly string[] emptyNames = new string[1] { "DefaultView" };

	private static object EventTransforming = new object();

	private XmlDocument xmlDocument;

	private XsltArgumentList transformArgumentList;

	private Cache DataCache
	{
		get
		{
			if (HttpContext.Current != null)
			{
				return HttpContext.Current.InternalCache;
			}
			return null;
		}
	}

	private bool CanBeSaved
	{
		get
		{
			if (Transform == string.Empty && TransformFile == string.Empty)
			{
				return DataFile != string.Empty;
			}
			return false;
		}
	}

	bool IListSource.ContainsListCollection => ListSourceHelper.ContainsListCollection(this);

	[DefaultValue(0)]
	[TypeConverter(typeof(DataSourceCacheDurationConverter))]
	public virtual int CacheDuration
	{
		get
		{
			return _cacheDuration;
		}
		set
		{
			_cacheDuration = value;
		}
	}

	[DefaultValue(DataSourceCacheExpiry.Absolute)]
	public virtual DataSourceCacheExpiry CacheExpirationPolicy
	{
		get
		{
			return _cacheExpirationPolicy;
		}
		set
		{
			_cacheExpirationPolicy = value;
		}
	}

	[DefaultValue("")]
	public virtual string CacheKeyDependency
	{
		get
		{
			return _cacheKeyDependency;
		}
		set
		{
			_cacheKeyDependency = value;
		}
	}

	[DefaultValue(true)]
	public virtual bool EnableCaching
	{
		get
		{
			return _enableCaching;
		}
		set
		{
			_enableCaching = value;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Editor("System.ComponentModel.Design.MultilineStringEditor,System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[WebSysDescription("Inline XML data.")]
	[WebCategory("Data")]
	[DefaultValue("")]
	[TypeConverter(typeof(MultilineStringConverter))]
	public virtual string Data
	{
		get
		{
			return _data;
		}
		set
		{
			if (_data != value)
			{
				_data = value;
				_documentNeedsUpdate = true;
				OnDataSourceChanged(EventArgs.Empty);
			}
		}
	}

	[MonoLimitation("Absolute path to the file system is not supported; use a relative URI instead.")]
	[Editor("System.Web.UI.Design.XmlDataFileEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public virtual string DataFile
	{
		get
		{
			return _dataFile;
		}
		set
		{
			if (_dataFile != value)
			{
				_dataFile = value;
				_documentNeedsUpdate = true;
				OnDataSourceChanged(EventArgs.Empty);
			}
		}
	}

	[Browsable(false)]
	public virtual XsltArgumentList TransformArgumentList
	{
		get
		{
			return transformArgumentList;
		}
		set
		{
			transformArgumentList = value;
		}
	}

	[TypeConverter(typeof(MultilineStringConverter))]
	[DefaultValue("")]
	[Editor("System.ComponentModel.Design.MultilineStringEditor,System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public virtual string Transform
	{
		get
		{
			return _transform;
		}
		set
		{
			if (_transform != value)
			{
				_transform = value;
				_documentNeedsUpdate = true;
				OnDataSourceChanged(EventArgs.Empty);
			}
		}
	}

	[MonoLimitation("Absolute path to the file system is not supported; use a relative URI instead.")]
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.XslTransformFileEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public virtual string TransformFile
	{
		get
		{
			return _transformFile;
		}
		set
		{
			if (_transformFile != value)
			{
				_transformFile = value;
				_documentNeedsUpdate = true;
				OnDataSourceChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue("")]
	public virtual string XPath
	{
		get
		{
			return _xpath;
		}
		set
		{
			if (_xpath != value)
			{
				_xpath = value;
				OnDataSourceChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue("")]
	public virtual string CacheKeyContext
	{
		get
		{
			return ViewState.GetString("CacheKeyContext", string.Empty);
		}
		set
		{
			ViewState["CacheKeyContext"] = value;
		}
	}

	event EventHandler IDataSource.DataSourceChanged
	{
		add
		{
			((IHierarchicalDataSource)this).DataSourceChanged += value;
		}
		remove
		{
			((IHierarchicalDataSource)this).DataSourceChanged -= value;
		}
	}

	public event EventHandler Transforming
	{
		add
		{
			Events.AddHandler(EventTransforming, value);
		}
		remove
		{
			Events.RemoveHandler(EventTransforming, value);
		}
	}

	protected virtual void OnTransforming(EventArgs e)
	{
		if (Events[EventTransforming] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	public XmlDocument GetXmlDocument()
	{
		if (_documentNeedsUpdate)
		{
			UpdateXml();
		}
		if (xmlDocument == null && EnableCaching)
		{
			xmlDocument = GetXmlDocumentFromCache();
		}
		if (xmlDocument == null)
		{
			xmlDocument = LoadXmlDocument();
			UpdateCache();
		}
		return xmlDocument;
	}

	[MonoTODO("schema")]
	private XmlDocument LoadXmlDocument()
	{
		XmlDocument xmlDocument = LoadFileOrData(DataFile, Data);
		if (string.IsNullOrEmpty(TransformFile) && string.IsNullOrEmpty(Transform))
		{
			return xmlDocument;
		}
		XslTransform xslTransform = new XslTransform();
		XmlDocument stylesheet = LoadFileOrData(TransformFile, Transform);
		xslTransform.Load(stylesheet);
		OnTransforming(EventArgs.Empty);
		XmlDocument xmlDocument2 = new XmlDocument();
		xmlDocument2.Load(xslTransform.Transform(xmlDocument, TransformArgumentList));
		return xmlDocument2;
	}

	private XmlDocument LoadFileOrData(string filename, string data)
	{
		XmlDocument xmlDocument = new XmlDocument();
		if (!string.IsNullOrEmpty(filename))
		{
			if (Uri.TryCreate(filename, UriKind.Absolute, out var _))
			{
				xmlDocument.Load(filename);
			}
			else
			{
				xmlDocument.Load(MapPathSecure(filename));
			}
		}
		else if (!string.IsNullOrEmpty(data))
		{
			xmlDocument.LoadXml(data);
		}
		return xmlDocument;
	}

	private XmlDocument GetXmlDocumentFromCache()
	{
		if (DataCache != null)
		{
			return (XmlDocument)DataCache[GetDataKey()];
		}
		return null;
	}

	private string GetDataKey()
	{
		if (string.IsNullOrEmpty(DataFile) && !string.IsNullOrEmpty(Data))
		{
			string cacheKeyContext = CacheKeyContext;
			if (!string.IsNullOrEmpty(cacheKeyContext))
			{
				return cacheKeyContext;
			}
		}
		Page page = Page;
		string text = ((page != null) ? page.ToString() : "NullPage");
		return TemplateSourceDirectory + "_" + text + "_" + ID;
	}

	private void UpdateCache()
	{
		if (!EnableCaching || DataCache == null)
		{
			return;
		}
		string dataKey = GetDataKey();
		if (DataCache[dataKey] != null)
		{
			DataCache.Remove(dataKey);
		}
		DateTime absoluteExpiration = Cache.NoAbsoluteExpiration;
		TimeSpan slidingExpiration = Cache.NoSlidingExpiration;
		if (CacheDuration > 0)
		{
			if (CacheExpirationPolicy == DataSourceCacheExpiry.Absolute)
			{
				absoluteExpiration = DateTime.Now.AddSeconds(CacheDuration);
			}
			else
			{
				slidingExpiration = new TimeSpan((long)CacheDuration * 10000L);
			}
		}
		CacheDependency cacheDependency = null;
		cacheDependency = ((CacheKeyDependency.Length <= 0) ? new CacheDependency(new string[0], new string[0]) : new CacheDependency(new string[0], new string[1] { CacheKeyDependency }));
		DataCache.Add(dataKey, xmlDocument, cacheDependency, absoluteExpiration, slidingExpiration, CacheItemPriority.Normal, null);
	}

	private void UpdateXml()
	{
		xmlDocument = LoadXmlDocument();
		UpdateCache();
		_documentNeedsUpdate = false;
	}

	public void Save()
	{
		if (!CanBeSaved)
		{
			throw new InvalidOperationException();
		}
		if (xmlDocument != null)
		{
			xmlDocument.Save(MapPathSecure(DataFile));
		}
	}

	protected override HierarchicalDataSourceView GetHierarchicalView(string viewPath)
	{
		XmlNode xmlNode = GetXmlDocument();
		XmlNodeList nodeList = null;
		if (string.IsNullOrEmpty(viewPath))
		{
			nodeList = (string.IsNullOrEmpty(XPath) ? xmlNode.ChildNodes : xmlNode.SelectNodes(XPath));
		}
		else
		{
			XmlNode xmlNode2 = xmlNode.SelectSingleNode(viewPath);
			if (xmlNode2 != null)
			{
				nodeList = xmlNode2.ChildNodes;
			}
		}
		return new XmlHierarchicalDataSourceView(nodeList);
	}

	IList IListSource.GetList()
	{
		return ListSourceHelper.GetList(this);
	}

	DataSourceView IDataSource.GetView(string viewName)
	{
		if (string.IsNullOrEmpty(viewName))
		{
			viewName = "DefaultView";
		}
		return new XmlDataSourceView(this, viewName);
	}

	ICollection IDataSource.GetViewNames()
	{
		return emptyNames;
	}
}
