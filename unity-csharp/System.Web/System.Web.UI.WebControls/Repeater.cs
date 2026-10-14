using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;
using System.Web.Util;
using Unity;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.RepeaterDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultEvent("ItemCommand")]
[PersistChildren(false)]
[DefaultProperty("DataSource")]
[ParseChildren(true)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Repeater : Control, INamingContainer
{
	private object dataSource;

	private IDataSource boundDataSource;

	private bool initialized;

	private bool preRendered;

	private bool requiresDataBinding;

	private DataSourceSelectArguments selectArguments;

	private IEnumerable data;

	private RepeaterItemCollection itemscol;

	private ArrayList items;

	private ITemplate alt_itm_tmpl;

	private ITemplate footer_tmpl;

	private ITemplate header_tmpl;

	private ITemplate item_tmpl;

	private ITemplate separator_tmpl;

	private static readonly object ItemCommandEvent = new object();

	private static readonly object ItemCreatedEvent = new object();

	private static readonly object ItemDataBoundEvent = new object();

	public override ControlCollection Controls
	{
		get
		{
			EnsureChildControls();
			return base.Controls;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	public virtual RepeaterItemCollection Items
	{
		get
		{
			if (itemscol == null)
			{
				if (items == null)
				{
					items = new ArrayList();
				}
				itemscol = new RepeaterItemCollection(items);
			}
			return itemscol;
		}
	}

	[WebCategory("Data")]
	[WebSysDescription("")]
	[DefaultValue("")]
	public virtual string DataMember
	{
		get
		{
			return ViewState.GetString("DataMember", "");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("DataMember");
			}
			else
			{
				ViewState["DataMember"] = value;
			}
			if (!Initialized)
			{
				OnDataPropertyChanged();
			}
		}
	}

	[Bindable(true)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Data")]
	public virtual object DataSource
	{
		get
		{
			return dataSource;
		}
		set
		{
			if (value == null || value is IListSource || value is IEnumerable)
			{
				dataSource = value;
				if (!Initialized)
				{
					OnDataPropertyChanged();
				}
				return;
			}
			throw new ArgumentException($"An invalid data source is being used for {ID}. A valid data source must implement either IListSource or IEnumerable");
		}
	}

	[DefaultValue("")]
	[IDReferenceProperty(typeof(DataSourceControl))]
	public virtual string DataSourceID
	{
		get
		{
			return ViewState.GetString("DataSourceID", "");
		}
		set
		{
			if (dataSource != null)
			{
				throw new HttpException("Only one of DataSource and DataSourceID can be specified.");
			}
			ViewState["DataSourceID"] = value;
			if (!Initialized)
			{
				OnDataPropertyChanged();
			}
		}
	}

	[Browsable(true)]
	public override bool EnableTheming
	{
		get
		{
			return base.EnableTheming;
		}
		set
		{
			base.EnableTheming = value;
		}
	}

	[Browsable(false)]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(RepeaterItem))]
	[WebSysDescription("")]
	public virtual ITemplate AlternatingItemTemplate
	{
		get
		{
			return alt_itm_tmpl;
		}
		set
		{
			alt_itm_tmpl = value;
		}
	}

	[TemplateContainer(typeof(RepeaterItem))]
	[Browsable(false)]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	public virtual ITemplate FooterTemplate
	{
		get
		{
			return footer_tmpl;
		}
		set
		{
			footer_tmpl = value;
		}
	}

	[WebSysDescription("")]
	[TemplateContainer(typeof(RepeaterItem))]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
	public virtual ITemplate HeaderTemplate
	{
		get
		{
			return header_tmpl;
		}
		set
		{
			header_tmpl = value;
		}
	}

	[TemplateContainer(typeof(RepeaterItem))]
	[Browsable(false)]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	public virtual ITemplate ItemTemplate
	{
		get
		{
			return item_tmpl;
		}
		set
		{
			item_tmpl = value;
		}
	}

	[Browsable(false)]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[TemplateContainer(typeof(RepeaterItem))]
	public virtual ITemplate SeparatorTemplate
	{
		get
		{
			return separator_tmpl;
		}
		set
		{
			separator_tmpl = value;
		}
	}

	protected bool Initialized => initialized;

	protected bool IsBoundUsingDataSourceID => DataSourceID.Length != 0;

	protected bool RequiresDataBinding
	{
		get
		{
			return requiresDataBinding;
		}
		set
		{
			requiresDataBinding = value;
			if (value && preRendered && IsBoundUsingDataSourceID && Page != null && !Page.IsCallback)
			{
				EnsureDataBound();
			}
		}
	}

	protected DataSourceSelectArguments SelectArguments
	{
		get
		{
			if (selectArguments == null)
			{
				selectArguments = CreateDataSourceSelectArguments();
			}
			return selectArguments;
		}
	}

	protected bool IsDataBindingAutomatic
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual string ItemType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public virtual string SelectMethod
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event RepeaterCommandEventHandler ItemCommand
	{
		add
		{
			Events.AddHandler(ItemCommandEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ItemCommandEvent, value);
		}
	}

	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public event RepeaterItemEventHandler ItemCreated
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

	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public event RepeaterItemEventHandler ItemDataBound
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

	public event CallingDataMethodsEventHandler CallingDataMethods
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event CreatingModelDataSourceEventHandler CreatingModelDataSource
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	protected internal override void CreateChildControls()
	{
		Controls.Clear();
		if (ViewState["Items"] != null)
		{
			CreateControlHierarchy(useDataSource: false);
		}
	}

	protected override void OnDataBinding(EventArgs e)
	{
		base.OnDataBinding(EventArgs.Empty);
		Controls.Clear();
		ClearChildViewState();
		TrackViewState();
		CreateControlHierarchy(useDataSource: true);
		ChildControlsCreated = true;
	}

	private void DoItem(int i, ListItemType t, object d, bool databind)
	{
		RepeaterItem repeaterItem = CreateItem(i, t);
		if (t == ListItemType.Item || t == ListItemType.AlternatingItem)
		{
			items.Add(repeaterItem);
		}
		repeaterItem.DataItem = d;
		RepeaterItemEventArgs e = new RepeaterItemEventArgs(repeaterItem);
		InitializeItem(repeaterItem);
		Controls.Add(repeaterItem);
		OnItemCreated(e);
		if (databind)
		{
			repeaterItem.DataBind();
			OnItemDataBound(e);
		}
	}

	protected virtual void CreateControlHierarchy(bool useDataSource)
	{
		items = new ArrayList();
		itemscol = null;
		IEnumerable enumerable = ((!useDataSource) ? new object[(int)ViewState["Items"]] : GetData());
		if (enumerable == null)
		{
			return;
		}
		if (HeaderTemplate != null)
		{
			DoItem(-1, ListItemType.Header, null, useDataSource);
		}
		int num = 0;
		foreach (object item in enumerable)
		{
			if (num != 0 && SeparatorTemplate != null)
			{
				DoItem(num - 1, ListItemType.Separator, null, useDataSource);
			}
			DoItem(num, (num % 2 == 0) ? ListItemType.Item : ListItemType.AlternatingItem, item, useDataSource);
			num++;
		}
		if (FooterTemplate != null)
		{
			DoItem(-1, ListItemType.Footer, null, useDataSource);
		}
		ViewState["Items"] = num;
	}

	public override void DataBind()
	{
		OnDataBinding(EventArgs.Empty);
		RequiresDataBinding = false;
	}

	protected virtual RepeaterItem CreateItem(int itemIndex, ListItemType itemType)
	{
		return new RepeaterItem(itemIndex, itemType);
	}

	protected virtual void InitializeItem(RepeaterItem item)
	{
		ITemplate template = null;
		switch (item.ItemType)
		{
		case ListItemType.Header:
			template = HeaderTemplate;
			break;
		case ListItemType.Footer:
			template = FooterTemplate;
			break;
		case ListItemType.Item:
			template = ItemTemplate;
			break;
		case ListItemType.AlternatingItem:
			template = AlternatingItemTemplate;
			if (template == null)
			{
				template = ItemTemplate;
			}
			break;
		case ListItemType.Separator:
			template = SeparatorTemplate;
			break;
		}
		template?.InstantiateIn(item);
	}

	protected override bool OnBubbleEvent(object sender, EventArgs e)
	{
		if (e is RepeaterCommandEventArgs e2)
		{
			OnItemCommand(e2);
			return true;
		}
		return false;
	}

	protected virtual void OnItemCommand(RepeaterCommandEventArgs e)
	{
		((RepeaterCommandEventHandler)Events[ItemCommandEvent])?.Invoke(this, e);
	}

	protected virtual void OnItemCreated(RepeaterItemEventArgs e)
	{
		((RepeaterItemEventHandler)Events[ItemCreatedEvent])?.Invoke(this, e);
	}

	protected virtual void OnItemDataBound(RepeaterItemEventArgs e)
	{
		((RepeaterItemEventHandler)Events[ItemDataBoundEvent])?.Invoke(this, e);
	}

	protected virtual DataSourceSelectArguments CreateDataSourceSelectArguments()
	{
		return DataSourceSelectArguments.Empty;
	}

	protected void EnsureDataBound()
	{
		if (IsBoundUsingDataSourceID && RequiresDataBinding)
		{
			DataBind();
		}
	}

	private void SelectCallback(IEnumerable data)
	{
		this.data = data;
	}

	protected virtual IEnumerable GetData()
	{
		IEnumerable result;
		if (IsBoundUsingDataSourceID)
		{
			if (DataSourceID.Length == 0)
			{
				return null;
			}
			if (boundDataSource == null)
			{
				return null;
			}
			boundDataSource.GetView(string.Empty).Select(SelectArguments, SelectCallback);
			result = data;
			data = null;
		}
		else
		{
			result = DataSourceResolver.ResolveDataSource(DataSource, DataMember);
		}
		return result;
	}

	protected virtual void OnDataPropertyChanged()
	{
		if (Initialized)
		{
			RequiresDataBinding = true;
		}
	}

	protected virtual void OnDataSourceViewChanged(object sender, EventArgs e)
	{
		RequiresDataBinding = true;
	}

	protected internal override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		Page page = Page;
		if (page != null)
		{
			page.PreLoad += OnPagePreLoad;
			if (!IsViewStateEnabled && page.IsPostBack)
			{
				RequiresDataBinding = true;
			}
		}
	}

	private void OnPagePreLoad(object sender, EventArgs e)
	{
		Initialize();
	}

	protected internal override void OnLoad(EventArgs e)
	{
		if (!Initialized)
		{
			Initialize();
		}
		base.OnLoad(e);
	}

	private void Initialize()
	{
		Page page = Page;
		if (page != null && (!page.IsPostBack || (IsViewStateEnabled && ViewState["Items"] == null)))
		{
			RequiresDataBinding = true;
		}
		if (IsBoundUsingDataSourceID)
		{
			ConnectToDataSource();
		}
		initialized = true;
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		preRendered = true;
		EnsureDataBound();
		base.OnPreRender(e);
	}

	private void ConnectToDataSource()
	{
		object obj = null;
		if (Parent != null)
		{
			obj = Parent.FindControl(DataSourceID);
		}
		if (obj == null || !(obj is IDataSource))
		{
			string format = ((obj != null) ? "DataSourceID of '{0}' must be the ID of a control of type IDataSource.  '{1}' is not an IDataSource." : "DataSourceID of '{0}' must be the ID of a control of type IDataSource.  A control with ID '{1}' could not be found.");
			throw new HttpException(string.Format(format, ID, DataSourceID));
		}
		boundDataSource = (IDataSource)obj;
		boundDataSource.GetView(string.Empty).DataSourceViewChanged += OnDataSourceViewChanged;
	}

	protected virtual void OnCreatingModelDataSource(CreatingModelDataSourceEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
