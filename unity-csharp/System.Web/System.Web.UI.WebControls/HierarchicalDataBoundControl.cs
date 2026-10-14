using System.ComponentModel;
using System.Web.UI.WebControls.Adapters;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.HierarchicalDataBoundControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
public abstract class HierarchicalDataBoundControl : BaseDataBoundControl
{
	[IDReferenceProperty(typeof(HierarchicalDataSourceControl))]
	public override string DataSourceID
	{
		get
		{
			object obj = ViewState["DataSourceID"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (Initialized)
			{
				RequiresDataBinding = true;
			}
			ViewState["DataSourceID"] = value;
		}
	}

	private bool IsDataBound
	{
		get
		{
			return ViewState.GetBool("DataBound", def: false);
		}
		set
		{
			ViewState["DataBound"] = value;
		}
	}

	protected virtual HierarchicalDataSourceView GetData(string viewPath)
	{
		if (DataSource != null && !string.IsNullOrEmpty(DataSourceID))
		{
			throw new HttpException();
		}
		IHierarchicalDataSource hierarchicalDataSource = GetDataSource();
		if (hierarchicalDataSource != null)
		{
			return hierarchicalDataSource.GetHierarchicalView(viewPath);
		}
		if (DataSource is IHierarchicalEnumerable)
		{
			return new ReadOnlyDataSourceView((IHierarchicalEnumerable)DataSource);
		}
		return null;
	}

	protected virtual IHierarchicalDataSource GetDataSource()
	{
		if (IsBoundUsingDataSourceID)
		{
			Control control = FindDataSource() ?? throw new HttpException($"A control with ID '{DataSourceID}' could not be found.");
			if (!(control is IHierarchicalDataSource))
			{
				throw new HttpException($"The control with ID '{DataSourceID}' is not a control of type IHierarchicalDataSource.");
			}
			return (IHierarchicalDataSource)control;
		}
		return DataSource as IHierarchicalDataSource;
	}

	protected void MarkAsDataBound()
	{
		IsDataBound = true;
	}

	protected override void OnDataPropertyChanged()
	{
		RequiresDataBinding = true;
	}

	protected virtual void OnDataSourceChanged(object sender, EventArgs e)
	{
		RequiresDataBinding = true;
	}

	protected internal override void OnLoad(EventArgs e)
	{
		if (!Initialized)
		{
			Initialize();
			ConfirmInitState();
		}
		base.OnLoad(e);
	}

	private void Initialize()
	{
		if (!Page.IsPostBack || (IsViewStateEnabled && !IsDataBound))
		{
			RequiresDataBinding = true;
		}
		IHierarchicalDataSource hierarchicalDataSource = GetDataSource();
		if (hierarchicalDataSource != null && DataSourceID != "")
		{
			hierarchicalDataSource.DataSourceChanged += OnDataSourceChanged;
		}
	}

	protected override void OnPagePreLoad(object sender, EventArgs e)
	{
		base.OnPagePreLoad(sender, e);
		Initialize();
	}

	protected void InternalPerformDataBinding()
	{
		if (Adapter is HierarchicalDataBoundControlAdapter hierarchicalDataBoundControlAdapter)
		{
			hierarchicalDataBoundControlAdapter.PerformDataBinding();
		}
		else
		{
			PerformDataBinding();
		}
	}

	protected internal virtual void PerformDataBinding()
	{
	}

	protected override void PerformSelect()
	{
		OnDataBinding(EventArgs.Empty);
		InternalPerformDataBinding();
		RequiresDataBinding = false;
		MarkAsDataBound();
		OnDataBound(EventArgs.Empty);
	}

	protected override void ValidateDataSource(object dataSource)
	{
		if (dataSource == null || dataSource is IHierarchicalDataSource || dataSource is IHierarchicalEnumerable)
		{
			return;
		}
		throw new InvalidOperationException("Invalid data source");
	}
}
