using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Web.Util;

namespace System.Web.UI.WebControls;

[ToolboxBitmap("")]
[Designer("System.Web.UI.Design.WebControls.SiteMapDataSourceDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[PersistChildren(false)]
[ParseChildren(true)]
public class SiteMapDataSource : HierarchicalDataSourceControl, IDataSource, IListSource
{
	private static string[] emptyNames = new string[1] { "DefaultView" };

	private SiteMapProvider provider;

	bool IListSource.ContainsListCollection => ContainsListCollection;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual bool ContainsListCollection => ListSourceHelper.ContainsListCollection(this);

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public SiteMapProvider Provider
	{
		get
		{
			if (provider == null)
			{
				if (SiteMapProvider.Length == 0)
				{
					provider = SiteMap.Provider;
					if (provider == null)
					{
						throw new HttpException("There is no default provider configured for the site.");
					}
				}
				else
				{
					provider = SiteMap.Providers[SiteMapProvider];
					if (provider == null)
					{
						throw new HttpException("SiteMap provider '" + SiteMapProvider + "' not found.");
					}
				}
			}
			return provider;
		}
		set
		{
			provider = value;
			OnDataSourceChanged(EventArgs.Empty);
		}
	}

	[DefaultValue("")]
	public virtual string SiteMapProvider
	{
		get
		{
			return ViewState.GetString("SiteMapProvider", "");
		}
		set
		{
			ViewState["SiteMapProvider"] = value;
			OnDataSourceChanged(EventArgs.Empty);
		}
	}

	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[DefaultValue("")]
	public virtual string StartingNodeUrl
	{
		get
		{
			return ViewState.GetString("StartingNodeUrl", "");
		}
		set
		{
			ViewState["StartingNodeUrl"] = value;
			OnDataSourceChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(0)]
	public virtual int StartingNodeOffset
	{
		get
		{
			return ViewState.GetInt("StartingNodeOffset", 0);
		}
		set
		{
			ViewState["StartingNodeOffset"] = value;
			OnDataSourceChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(false)]
	public virtual bool StartFromCurrentNode
	{
		get
		{
			return ViewState.GetBool("StartFromCurrentNode", def: false);
		}
		set
		{
			ViewState["StartFromCurrentNode"] = value;
			OnDataSourceChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(true)]
	public virtual bool ShowStartingNode
	{
		get
		{
			return ViewState.GetBool("ShowStartingNode", def: true);
		}
		set
		{
			ViewState["ShowStartingNode"] = value;
			OnDataSourceChanged(EventArgs.Empty);
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

	public virtual ICollection GetViewNames()
	{
		return emptyNames;
	}

	IList IListSource.GetList()
	{
		return GetList();
	}

	public virtual IList GetList()
	{
		return ListSourceHelper.GetList(this);
	}

	DataSourceView IDataSource.GetView(string viewName)
	{
		return GetView(viewName);
	}

	ICollection IDataSource.GetViewNames()
	{
		return GetViewNames();
	}

	public virtual DataSourceView GetView(string viewName)
	{
		SiteMapNode startNode = GetStartNode(viewName);
		if (startNode == null)
		{
			return new SiteMapDataSourceView(this, viewName, SiteMapNodeCollection.EmptyList);
		}
		if (ShowStartingNode)
		{
			return new SiteMapDataSourceView(this, viewName, startNode);
		}
		return new SiteMapDataSourceView(this, viewName, startNode.ChildNodes);
	}

	protected override HierarchicalDataSourceView GetHierarchicalView(string viewPath)
	{
		SiteMapNode startNode = GetStartNode(viewPath);
		if (startNode == null)
		{
			return new SiteMapHierarchicalDataSourceView(SiteMapNodeCollection.EmptyList);
		}
		if (ShowStartingNode || startNode == null)
		{
			return new SiteMapHierarchicalDataSourceView(startNode);
		}
		return new SiteMapHierarchicalDataSourceView(startNode.ChildNodes);
	}

	[MonoTODO("handle StartNodeOffsets > 0")]
	private SiteMapNode GetStartNode(string viewPath)
	{
		if (viewPath != null && viewPath.Length != 0)
		{
			string rawUrl = MapUrl(StartingNodeUrl);
			return Provider.FindSiteMapNode(rawUrl);
		}
		SiteMapNode siteMapNode;
		if (StartFromCurrentNode)
		{
			if (StartingNodeUrl.Length != 0)
			{
				throw new InvalidOperationException("StartingNodeUrl can't be set if StartFromCurrentNode is set to true.");
			}
			siteMapNode = SiteMap.CurrentNode;
		}
		else if (StartingNodeUrl.Length != 0)
		{
			string rawUrl2 = MapUrl(StartingNodeUrl);
			siteMapNode = Provider.FindSiteMapNode(rawUrl2) ?? throw new ArgumentException("Can't find a site map node for the url: " + StartingNodeUrl);
		}
		else
		{
			siteMapNode = Provider.RootNode;
		}
		if (siteMapNode == null)
		{
			return null;
		}
		if (StartingNodeOffset < 0)
		{
			for (int i = StartingNodeOffset; i < 0; i++)
			{
				if (siteMapNode.ParentNode == null)
				{
					break;
				}
				siteMapNode = siteMapNode.ParentNode;
			}
		}
		else if (StartingNodeOffset > 0)
		{
			List<SiteMapNode> list = new List<SiteMapNode>();
			SiteMapNode siteMapNode2 = Provider.CurrentNode;
			while (siteMapNode2 != null && siteMapNode2 != siteMapNode)
			{
				list.Insert(0, siteMapNode2);
				siteMapNode2 = siteMapNode2.ParentNode;
			}
			if (siteMapNode2 == siteMapNode && StartingNodeOffset <= list.Count)
			{
				siteMapNode = list[StartingNodeOffset - 1];
			}
		}
		return siteMapNode;
	}

	private string MapUrl(string url)
	{
		if (string.IsNullOrEmpty(url))
		{
			return string.Empty;
		}
		if (UrlUtils.IsRelativeUrl(url))
		{
			return UrlUtils.Combine(HttpRuntime.AppDomainAppVirtualPath, url);
		}
		return UrlUtils.ResolveVirtualPathFromAppAbsolute(url);
	}
}
