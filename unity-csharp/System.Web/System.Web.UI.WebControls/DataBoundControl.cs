using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;
using System.Web.UI.WebControls.Adapters;
using System.Web.Util;
using Unity;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.DataBoundControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class DataBoundControl : BaseDataBoundControl
{
	private DataSourceSelectArguments selectArguments;

	private DataSourceView currentView;

	[DefaultValue("")]
	[WebCategory("Data")]
	[Themeable(false)]
	public virtual string DataMember
	{
		get
		{
			return ViewState.GetString("DataMember", string.Empty);
		}
		set
		{
			ViewState["DataMember"] = value;
		}
	}

	[IDReferenceProperty(typeof(DataSourceControl))]
	public override string DataSourceID
	{
		get
		{
			return ViewState.GetString("DataSourceID", string.Empty);
		}
		set
		{
			ViewState["DataSourceID"] = value;
			base.DataSourceID = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IDataSource DataSourceObject => GetDataSource();

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
		private set
		{
			selectArguments = value;
		}
	}

	private bool IsDataBound
	{
		get
		{
			object obj = ViewState["DataBound"];
			if (obj == null)
			{
				return false;
			}
			return (bool)obj;
		}
		set
		{
			ViewState["DataBound"] = value;
		}
	}

	protected override bool IsUsingModelBinders
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

	protected DataBoundControl()
	{
	}

	internal DataBoundControl(HtmlTextWriterTag tag)
		: base(tag)
	{
	}

	protected virtual IDataSource GetDataSource()
	{
		if (IsBoundUsingDataSourceID)
		{
			Control control = FindDataSource() ?? throw new HttpException($"A control with ID '{DataSourceID}' could not be found.");
			if (!(control is IDataSource))
			{
				throw new HttpException($"The control with ID '{DataSourceID}' is not a control of type IDataSource.");
			}
			return (IDataSource)control;
		}
		if (DataSource is IDataSource result)
		{
			return result;
		}
		return new CollectionDataSource(DataSourceResolver.ResolveDataSource(DataSource, DataMember));
	}

	protected virtual DataSourceView GetData()
	{
		if (currentView == null)
		{
			UpdateViewData();
		}
		return currentView;
	}

	private DataSourceView InternalGetData()
	{
		if (currentView != null)
		{
			return currentView;
		}
		if (DataSource != null && IsBoundUsingDataSourceID)
		{
			throw new HttpException("Control bound using both DataSourceID and DataSource properties.");
		}
		return GetDataSource()?.GetView(DataMember);
	}

	protected override void OnDataPropertyChanged()
	{
		base.OnDataPropertyChanged();
		currentView = null;
	}

	protected virtual void OnDataSourceViewChanged(object sender, EventArgs e)
	{
		RequiresDataBinding = true;
	}

	protected override void OnPagePreLoad(object sender, EventArgs e)
	{
		base.OnPagePreLoad(sender, e);
		Initialize();
	}

	private void Initialize()
	{
		Page page = Page;
		if (page != null && !IsDataBound)
		{
			if (!page.IsPostBack)
			{
				RequiresDataBinding = true;
			}
			else if (IsViewStateEnabled)
			{
				RequiresDataBinding = true;
			}
		}
	}

	private void UpdateViewData()
	{
		if (currentView != null)
		{
			currentView.DataSourceViewChanged -= OnDataSourceViewChanged;
		}
		DataSourceView dataSourceView = InternalGetData();
		if (dataSourceView != currentView)
		{
			currentView = dataSourceView;
		}
		if (currentView != null)
		{
			currentView.DataSourceViewChanged += OnDataSourceViewChanged;
		}
	}

	protected internal override void OnLoad(EventArgs e)
	{
		UpdateViewData();
		if (!Initialized)
		{
			Initialize();
			ConfirmInitState();
		}
		base.OnLoad(e);
	}

	protected internal virtual void PerformDataBinding(IEnumerable data)
	{
	}

	protected override void ValidateDataSource(object dataSource)
	{
		if (dataSource == null || dataSource is IListSource || dataSource is IEnumerable || dataSource is IDataSource)
		{
			return;
		}
		throw new ArgumentException("Invalid data source source type. The data source must be of type IListSource, IEnumerable or IDataSource.");
	}

	protected override void PerformSelect()
	{
		if (!IsBoundUsingDataSourceID)
		{
			OnDataBinding(EventArgs.Empty);
		}
		RequiresDataBinding = false;
		SelectArguments = CreateDataSourceSelectArguments();
		GetData().Select(SelectArguments, OnSelect);
		MarkAsDataBound();
		OnDataBound(EventArgs.Empty);
	}

	private void OnSelect(IEnumerable data)
	{
		if (IsBoundUsingDataSourceID)
		{
			OnDataBinding(EventArgs.Empty);
		}
		InternalPerformDataBinding(data);
	}

	internal void InternalPerformDataBinding(IEnumerable data)
	{
		if (Adapter is DataBoundControlAdapter dataBoundControlAdapter)
		{
			dataBoundControlAdapter.PerformDataBinding(data);
		}
		else
		{
			PerformDataBinding(data);
		}
	}

	protected virtual DataSourceSelectArguments CreateDataSourceSelectArguments()
	{
		return DataSourceSelectArguments.Empty;
	}

	protected void MarkAsDataBound()
	{
		IsDataBound = true;
	}

	protected virtual void OnCreatingModelDataSource(CreatingModelDataSourceEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
