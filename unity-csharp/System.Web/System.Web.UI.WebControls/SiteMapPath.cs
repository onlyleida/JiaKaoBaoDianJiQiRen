using System.Collections;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.SiteMapPathDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
public class SiteMapPath : CompositeControl
{
	private SiteMapProvider provider;

	private Style currentNodeStyle;

	private Style nodeStyle;

	private Style pathSeparatorStyle;

	private Style rootNodeStyle;

	private ITemplate currentNodeTemplate;

	private ITemplate nodeTemplate;

	private ITemplate pathSeparatorTemplate;

	private ITemplate rootNodeTemplate;

	private static readonly object ItemCreatedEvent = new object();

	private static readonly object ItemDataBoundEvent = new object();

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	public Style CurrentNodeStyle
	{
		get
		{
			if (currentNodeStyle == null)
			{
				currentNodeStyle = new Style();
				if (IsTrackingViewState)
				{
					((IStateManager)currentNodeStyle).TrackViewState();
				}
			}
			return currentNodeStyle;
		}
	}

	[DefaultValue(null)]
	[TemplateContainer(typeof(SiteMapNodeItem), BindingDirection.OneWay)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
	public virtual ITemplate CurrentNodeTemplate
	{
		get
		{
			return currentNodeTemplate;
		}
		set
		{
			currentNodeTemplate = value;
			UpdateControls();
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public Style NodeStyle
	{
		get
		{
			if (nodeStyle == null)
			{
				nodeStyle = new Style();
				if (IsTrackingViewState)
				{
					((IStateManager)nodeStyle).TrackViewState();
				}
			}
			return nodeStyle;
		}
	}

	[DefaultValue(null)]
	[Browsable(false)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(SiteMapNodeItem), BindingDirection.OneWay)]
	public virtual ITemplate NodeTemplate
	{
		get
		{
			return nodeTemplate;
		}
		set
		{
			nodeTemplate = value;
			UpdateControls();
		}
	}

	[Themeable(false)]
	[DefaultValue(-1)]
	public virtual int ParentLevelsDisplayed
	{
		get
		{
			return ViewState.GetInt("ParentLevelsDisplayed", -1);
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["ParentLevelsDisplayed"] = value;
			UpdateControls();
		}
	}

	[DefaultValue(PathDirection.RootToCurrent)]
	public virtual PathDirection PathDirection
	{
		get
		{
			return (PathDirection)ViewState.GetInt("PathDirection", 0);
		}
		set
		{
			if (value != PathDirection.RootToCurrent && value != PathDirection.CurrentToRoot)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["PathDirection"] = value;
			UpdateControls();
		}
	}

	[DefaultValue(" > ")]
	[Localizable(true)]
	public virtual string PathSeparator
	{
		get
		{
			return ViewState.GetString("PathSeparator", " > ");
		}
		set
		{
			ViewState["PathSeparator"] = value;
			UpdateControls();
		}
	}

	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public Style PathSeparatorStyle
	{
		get
		{
			if (pathSeparatorStyle == null)
			{
				pathSeparatorStyle = new Style();
				if (IsTrackingViewState)
				{
					((IStateManager)pathSeparatorStyle).TrackViewState();
				}
			}
			return pathSeparatorStyle;
		}
	}

	[TemplateContainer(typeof(SiteMapNodeItem), BindingDirection.OneWay)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
	[DefaultValue(null)]
	public virtual ITemplate PathSeparatorTemplate
	{
		get
		{
			return pathSeparatorTemplate;
		}
		set
		{
			pathSeparatorTemplate = value;
			UpdateControls();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
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
			UpdateControls();
		}
	}

	[DefaultValue(false)]
	public virtual bool RenderCurrentNodeAsLink
	{
		get
		{
			return ViewState.GetBool("RenderCurrentNodeAsLink", def: false);
		}
		set
		{
			ViewState["RenderCurrentNodeAsLink"] = value;
			UpdateControls();
		}
	}

	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public Style RootNodeStyle
	{
		get
		{
			if (rootNodeStyle == null)
			{
				rootNodeStyle = new Style();
				if (IsTrackingViewState)
				{
					((IStateManager)rootNodeStyle).TrackViewState();
				}
			}
			return rootNodeStyle;
		}
	}

	[Browsable(false)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	[TemplateContainer(typeof(SiteMapNodeItem), BindingDirection.OneWay)]
	public virtual ITemplate RootNodeTemplate
	{
		get
		{
			return rootNodeTemplate;
		}
		set
		{
			rootNodeTemplate = value;
			UpdateControls();
		}
	}

	[DefaultValue(true)]
	[Themeable(false)]
	public virtual bool ShowToolTips
	{
		get
		{
			return ViewState.GetBool("ShowToolTips", def: true);
		}
		set
		{
			ViewState["ShowToolTips"] = value;
			UpdateControls();
		}
	}

	[DefaultValue("")]
	[Themeable(false)]
	public virtual string SiteMapProvider
	{
		get
		{
			return ViewState.GetString("SiteMapProvider", "");
		}
		set
		{
			ViewState["SiteMapProvider"] = value;
			UpdateControls();
		}
	}

	[Localizable(true)]
	public virtual string SkipLinkText
	{
		get
		{
			return ViewState.GetString("SkipLinkText", "Skip Navigation Links");
		}
		set
		{
			ViewState["SkipLinkText"] = value;
		}
	}

	public event SiteMapNodeItemEventHandler ItemCreated
	{
		add
		{
			Events.AddHandler(ItemCreatedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ItemCreatedEvent, value);
		}
	}

	public event SiteMapNodeItemEventHandler ItemDataBound
	{
		add
		{
			Events.AddHandler(ItemDataBoundEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ItemDataBoundEvent, value);
		}
	}

	protected virtual void OnItemCreated(SiteMapNodeItemEventArgs e)
	{
		if (Events != null)
		{
			((SiteMapNodeItemEventHandler)Events[ItemCreatedEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnItemDataBound(SiteMapNodeItemEventArgs e)
	{
		if (Events != null)
		{
			((SiteMapNodeItemEventHandler)Events[ItemDataBoundEvent])?.Invoke(this, e);
		}
	}

	private void UpdateControls()
	{
		ChildControlsCreated = false;
	}

	public override void DataBind()
	{
		base.DataBind();
		foreach (Control control in Controls)
		{
			if (control is SiteMapNodeItem)
			{
				SiteMapNodeItem item = (SiteMapNodeItem)control;
				OnItemDataBound(new SiteMapNodeItemEventArgs(item));
			}
		}
	}

	protected internal override void CreateChildControls()
	{
		Controls.Clear();
		CreateControlHierarchy();
		DataBind();
	}

	protected virtual void CreateControlHierarchy()
	{
		ArrayList arrayList = new ArrayList();
		SiteMapNode siteMapNode = Provider.CurrentNode;
		if (siteMapNode == null)
		{
			return;
		}
		int num = ((ParentLevelsDisplayed != -1) ? (ParentLevelsDisplayed + 1) : int.MaxValue);
		while (siteMapNode != null && num > 0)
		{
			if (arrayList.Count > 0)
			{
				SiteMapNodeItem siteMapNodeItem = new SiteMapNodeItem(arrayList.Count, SiteMapNodeItemType.PathSeparator);
				InitializeItem(siteMapNodeItem);
				SiteMapNodeItemEventArgs e = new SiteMapNodeItemEventArgs(siteMapNodeItem);
				OnItemCreated(e);
				arrayList.Add(siteMapNodeItem);
			}
			SiteMapNodeItem siteMapNodeItem2 = new SiteMapNodeItem(itemType: (arrayList.Count != 0) ? ((siteMapNode.ParentNode != null) ? SiteMapNodeItemType.Parent : SiteMapNodeItemType.Root) : SiteMapNodeItemType.Current, itemIndex: arrayList.Count);
			siteMapNodeItem2.SiteMapNode = siteMapNode;
			InitializeItem(siteMapNodeItem2);
			SiteMapNodeItemEventArgs e2 = new SiteMapNodeItemEventArgs(siteMapNodeItem2);
			OnItemCreated(e2);
			arrayList.Add(siteMapNodeItem2);
			siteMapNode = siteMapNode.ParentNode;
			num--;
		}
		if (PathDirection == PathDirection.RootToCurrent)
		{
			for (int num2 = arrayList.Count - 1; num2 >= 0; num2--)
			{
				Controls.Add((Control)arrayList[num2]);
			}
		}
		else
		{
			for (int i = 0; i < arrayList.Count; i++)
			{
				Controls.Add((Control)arrayList[i]);
			}
		}
	}

	protected virtual void InitializeItem(SiteMapNodeItem item)
	{
		switch (item.ItemType)
		{
		case SiteMapNodeItemType.Root:
			if (RootNodeTemplate != null)
			{
				item.ApplyStyle(NodeStyle);
				item.ApplyStyle(RootNodeStyle);
				RootNodeTemplate.InstantiateIn(item);
			}
			else if (NodeTemplate != null)
			{
				item.ApplyStyle(NodeStyle);
				item.ApplyStyle(RootNodeStyle);
				NodeTemplate.InstantiateIn(item);
			}
			else
			{
				WebControl webControl = CreateHyperLink(item);
				webControl.ApplyStyle(NodeStyle);
				webControl.ApplyStyle(RootNodeStyle);
				item.Controls.Add(webControl);
			}
			break;
		case SiteMapNodeItemType.Current:
			if (CurrentNodeTemplate != null)
			{
				item.ApplyStyle(NodeStyle);
				item.ApplyStyle(CurrentNodeStyle);
				CurrentNodeTemplate.InstantiateIn(item);
			}
			else if (NodeTemplate != null)
			{
				item.ApplyStyle(NodeStyle);
				item.ApplyStyle(CurrentNodeStyle);
				NodeTemplate.InstantiateIn(item);
			}
			else if (RenderCurrentNodeAsLink)
			{
				HyperLink hyperLink = CreateHyperLink(item);
				hyperLink.ApplyStyle(NodeStyle);
				hyperLink.ApplyStyle(CurrentNodeStyle);
				item.Controls.Add(hyperLink);
			}
			else
			{
				Literal child = CreateLiteral(item);
				item.ApplyStyle(NodeStyle);
				item.ApplyStyle(CurrentNodeStyle);
				item.Controls.Add(child);
			}
			break;
		case SiteMapNodeItemType.Parent:
			if (NodeTemplate != null)
			{
				item.ApplyStyle(NodeStyle);
				NodeTemplate.InstantiateIn(item);
			}
			else
			{
				WebControl webControl2 = CreateHyperLink(item);
				webControl2.ApplyStyle(NodeStyle);
				item.Controls.Add(webControl2);
			}
			break;
		case SiteMapNodeItemType.PathSeparator:
		{
			if (PathSeparatorTemplate != null)
			{
				item.ApplyStyle(PathSeparatorStyle);
				PathSeparatorTemplate.InstantiateIn(item);
				break;
			}
			Literal literal = new Literal();
			literal.Text = HttpUtility.HtmlEncode(PathSeparator);
			item.ApplyStyle(PathSeparatorStyle);
			item.Controls.Add(literal);
			break;
		}
		}
	}

	private HyperLink CreateHyperLink(SiteMapNodeItem item)
	{
		HyperLink hyperLink = new HyperLink();
		hyperLink.Text = item.SiteMapNode.Title;
		hyperLink.NavigateUrl = item.SiteMapNode.Url;
		if (ShowToolTips)
		{
			hyperLink.ToolTip = item.SiteMapNode.Description;
		}
		return hyperLink;
	}

	private Literal CreateLiteral(SiteMapNodeItem item)
	{
		return new Literal
		{
			Text = item.SiteMapNode.Title
		};
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState == null)
		{
			base.LoadViewState(null);
			return;
		}
		object[] array = (object[])savedState;
		base.LoadViewState(array[0]);
		if (array[1] != null)
		{
			((IStateManager)CurrentNodeStyle).LoadViewState(array[1]);
		}
		if (array[2] != null)
		{
			((IStateManager)NodeStyle).LoadViewState(array[2]);
		}
		if (array[3] != null)
		{
			((IStateManager)PathSeparatorStyle).LoadViewState(array[3]);
		}
		if (array[4] != null)
		{
			((IStateManager)RootNodeStyle).LoadViewState(array[4]);
		}
	}

	[MonoTODO("why override?")]
	protected override void OnDataBinding(EventArgs e)
	{
		base.OnDataBinding(e);
	}

	[MonoTODO("why override?")]
	protected internal override void Render(HtmlTextWriter writer)
	{
		base.Render(writer);
	}

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
		string text = ClientID + "_SkipLink";
		string skipLinkText = SkipLinkText;
		bool flag = !string.IsNullOrEmpty(skipLinkText);
		if (flag)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Href, "#" + text);
			writer.RenderBeginTag(HtmlTextWriterTag.A);
			writer.AddAttribute(HtmlTextWriterAttribute.Alt, skipLinkText);
			writer.AddAttribute(HtmlTextWriterAttribute.Height, "0");
			writer.AddAttribute(HtmlTextWriterAttribute.Width, "0");
			writer.AddAttribute(HtmlTextWriterAttribute.Src, Page.ClientScript.GetWebResourceUrl(typeof(SiteMapPath), "transparent.gif"));
			writer.AddStyleAttribute(HtmlTextWriterStyle.BorderWidth, "0px");
			writer.RenderBeginTag(HtmlTextWriterTag.Img);
			writer.RenderEndTag();
			writer.RenderEndTag();
		}
		base.RenderContents(writer);
		if (flag)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Id, text);
			writer.RenderBeginTag(HtmlTextWriterTag.A);
			writer.RenderEndTag();
		}
	}

	protected override object SaveViewState()
	{
		object[] array = new object[5]
		{
			base.SaveViewState(),
			null,
			null,
			null,
			null
		};
		if (currentNodeStyle != null)
		{
			array[1] = ((IStateManager)currentNodeStyle).SaveViewState();
		}
		if (nodeStyle != null)
		{
			array[2] = ((IStateManager)nodeStyle).SaveViewState();
		}
		if (pathSeparatorStyle != null)
		{
			array[3] = ((IStateManager)pathSeparatorStyle).SaveViewState();
		}
		if (rootNodeStyle != null)
		{
			array[4] = ((IStateManager)rootNodeStyle).SaveViewState();
		}
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] != null)
			{
				return array;
			}
		}
		return null;
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		if (currentNodeStyle != null)
		{
			((IStateManager)currentNodeStyle).TrackViewState();
		}
		if (nodeStyle != null)
		{
			((IStateManager)nodeStyle).TrackViewState();
		}
		if (pathSeparatorStyle != null)
		{
			((IStateManager)pathSeparatorStyle).TrackViewState();
		}
		if (rootNodeStyle != null)
		{
			((IStateManager)rootNodeStyle).TrackViewState();
		}
	}
}
