using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.BaseDataListDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultProperty("DataSource")]
[DefaultEvent("SelectedIndexChanged")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class BaseDataList : WebControl
{
	private static readonly object selectedIndexChangedEvent = new object();

	private DataKeyCollection keycoll;

	private object source;

	private IDataSource boundDataSource;

	private bool initialized;

	private bool requiresDataBinding;

	private DataSourceSelectArguments selectArguments;

	private IEnumerable data;

	[WebCategory("Accessibility")]
	[WebSysDescription("")]
	[DefaultValue("")]
	[Localizable(true)]
	public virtual string Caption
	{
		get
		{
			return ViewState.GetString("Caption", string.Empty);
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("Caption");
			}
			else
			{
				ViewState["Caption"] = value;
			}
		}
	}

	[DefaultValue(TableCaptionAlign.NotSet)]
	public virtual TableCaptionAlign CaptionAlign
	{
		get
		{
			return (TableCaptionAlign)ViewState.GetInt("CaptionAlign", 0);
		}
		set
		{
			if (value < TableCaptionAlign.NotSet || value > TableCaptionAlign.Right)
			{
				throw new ArgumentOutOfRangeException(Locale.GetText("Invalid TableCaptionAlign value."));
			}
			ViewState["CaptionAlign"] = value;
		}
	}

	[WebCategory("Layout")]
	[WebSysDescription("")]
	[DefaultValue(-1)]
	public virtual int CellPadding
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return -1;
			}
			return TableStyle.CellPadding;
		}
		set
		{
			TableStyle.CellPadding = value;
		}
	}

	[WebCategory("Layout")]
	[DefaultValue(0)]
	[WebSysDescription("")]
	public virtual int CellSpacing
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return 0;
			}
			return TableStyle.CellSpacing;
		}
		set
		{
			TableStyle.CellSpacing = value;
		}
	}

	public override ControlCollection Controls
	{
		get
		{
			EnsureChildControls();
			return base.Controls;
		}
	}

	[DefaultValue("")]
	[Themeable(false)]
	[MonoTODO("incomplete")]
	[WebCategory("Data")]
	[WebSysDescription("")]
	public virtual string DataKeyField
	{
		get
		{
			return ViewState.GetString("DataKeyField", string.Empty);
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("DataKeyField");
			}
			else
			{
				ViewState["DataKeyField"] = value;
			}
		}
	}

	[WebCategory("Data")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public DataKeyCollection DataKeys
	{
		get
		{
			if (keycoll == null)
			{
				keycoll = new DataKeyCollection(DataKeysArray);
			}
			return keycoll;
		}
	}

	protected ArrayList DataKeysArray
	{
		get
		{
			ArrayList arrayList = (ArrayList)ViewState["DataKeys"];
			if (arrayList == null)
			{
				arrayList = new ArrayList();
				ViewState["DataKeys"] = arrayList;
			}
			return arrayList;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Data")]
	[DefaultValue("")]
	[Themeable(false)]
	public string DataMember
	{
		get
		{
			return ViewState.GetString("DataMember", string.Empty);
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
			OnDataPropertyChanged();
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Bindable(true)]
	[Themeable(false)]
	[WebSysDescription("")]
	[WebCategory("Data")]
	public virtual object DataSource
	{
		get
		{
			return source;
		}
		set
		{
			if (value == null || value is IEnumerable || value is IListSource)
			{
				source = value;
				OnDataPropertyChanged();
				return;
			}
			throw new ArgumentException(Locale.GetText("Invalid data source. This requires an object implementing {0} or {1}.", "IEnumerable", "IListSource"));
		}
	}

	[DefaultValue(GridLines.Both)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual GridLines GridLines
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return GridLines.Both;
			}
			return TableStyle.GridLines;
		}
		set
		{
			TableStyle.GridLines = value;
		}
	}

	[Category("Layout")]
	[DefaultValue(HorizontalAlign.NotSet)]
	[WebSysDescription("")]
	public virtual HorizontalAlign HorizontalAlign
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return HorizontalAlign.NotSet;
			}
			return TableStyle.HorizontalAlign;
		}
		set
		{
			TableStyle.HorizontalAlign = value;
		}
	}

	[DefaultValue(false)]
	public virtual bool UseAccessibleHeader
	{
		get
		{
			return ViewState.GetBool("UseAccessibleHeader", def: false);
		}
		set
		{
			ViewState["UseAccessibleHeader"] = value;
		}
	}

	[Themeable(false)]
	[IDReferenceProperty(typeof(DataSourceControl))]
	[DefaultValue("")]
	public virtual string DataSourceID
	{
		get
		{
			return ViewState.GetString("DataSourceID", string.Empty);
		}
		set
		{
			if (source != null)
			{
				throw new InvalidOperationException(Locale.GetText("DataSource is already set."));
			}
			ViewState["DataSourceID"] = value;
			OnDataPropertyChanged();
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

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	private TableStyle TableStyle => (TableStyle)ControlStyle;

	private bool IsDataBound
	{
		get
		{
			return ViewState.GetBool("_DataBound", def: false);
		}
		set
		{
			ViewState["_DataBound"] = value;
		}
	}

	[WebCategory("Action")]
	[WebSysDescription("")]
	public event EventHandler SelectedIndexChanged
	{
		add
		{
			Events.AddHandler(selectedIndexChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(selectedIndexChangedEvent, value);
		}
	}

	protected override void AddParsedSubObject(object obj)
	{
	}

	protected internal override void CreateChildControls()
	{
		if (HasControls())
		{
			base.Controls.Clear();
		}
		if (IsDataBound)
		{
			CreateControlHierarchy(useDataSource: false);
		}
		else if (RequiresDataBinding)
		{
			EnsureDataBound();
		}
	}

	protected abstract void CreateControlHierarchy(bool useDataSource);

	public override void DataBind()
	{
		OnDataBinding(EventArgs.Empty);
		if (HasControls())
		{
			Controls.Clear();
		}
		if (HasChildViewState)
		{
			ClearChildViewState();
		}
		if (!IsTrackingViewState)
		{
			TrackViewState();
		}
		CreateControlHierarchy(useDataSource: true);
		ChildControlsCreated = true;
		RequiresDataBinding = false;
		IsDataBound = true;
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
		if (DataSourceID.Length == 0)
		{
			return null;
		}
		if (boundDataSource == null)
		{
			ConnectToDataSource();
		}
		boundDataSource.GetView(string.Empty).Select(SelectArguments, SelectCallback);
		return data;
	}

	protected override void OnDataBinding(EventArgs e)
	{
		base.OnDataBinding(e);
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
		if (!Initialized)
		{
			Initialize();
		}
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
		if (page != null && (!page.IsPostBack || (IsViewStateEnabled && !IsDataBound)))
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
		EnsureDataBound();
		base.OnPreRender(e);
	}

	protected virtual void OnSelectedIndexChanged(EventArgs e)
	{
		((EventHandler)Events[selectedIndexChangedEvent])?.Invoke(this, e);
	}

	protected abstract void PrepareControlHierarchy();

	protected internal override void Render(HtmlTextWriter writer)
	{
		PrepareControlHierarchy();
		RenderContents(writer);
	}

	public static bool IsBindableType(Type type)
	{
		if (type == null)
		{
			throw new NullReferenceException();
		}
		TypeCode typeCode = Type.GetTypeCode(type);
		if ((uint)(typeCode - 3) <= 13u || typeCode == TypeCode.String)
		{
			return true;
		}
		return false;
	}

	private void ConnectToDataSource()
	{
		if (NamingContainer != null)
		{
			boundDataSource = NamingContainer.FindControl(DataSourceID) as IDataSource;
		}
		if (boundDataSource == null)
		{
			if (Parent != null)
			{
				boundDataSource = Parent.FindControl(DataSourceID) as IDataSource;
			}
			if (boundDataSource == null)
			{
				throw new HttpException(Locale.GetText("Coulnd't find a DataSource named '{0}'.", DataSourceID));
			}
		}
		boundDataSource.GetView(string.Empty).DataSourceViewChanged += OnDataSourceViewChanged;
	}
}
