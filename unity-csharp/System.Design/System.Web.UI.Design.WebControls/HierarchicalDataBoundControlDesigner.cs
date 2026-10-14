using System.Collections;
using System.ComponentModel.Design;
using System.Web.UI.WebControls;

namespace System.Web.UI.Design.WebControls;

public class HierarchicalDataBoundControlDesigner : BaseDataBoundControlDesigner
{
	public override DesignerActionListCollection ActionLists
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public IHierarchicalDataSourceDesigner DataSourceDesigner
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public DesignerHierarchicalDataSourceView DesignerView
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	protected virtual bool UseDataSourcePickerActionList
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	protected override bool ConnectToDataSource()
	{
		throw new NotImplementedException();
	}

	protected override void CreateDataSource()
	{
		throw new NotImplementedException();
	}

	protected override void DataBind(BaseDataBoundControl dataBoundControl)
	{
		throw new NotImplementedException();
	}

	protected override void DisconnectFromDataSource()
	{
		throw new NotImplementedException();
	}

	protected virtual IHierarchicalEnumerable GetDesignTimeDataSource()
	{
		throw new NotImplementedException();
	}

	protected virtual IHierarchicalEnumerable GetSampleDataSource()
	{
		throw new NotImplementedException();
	}

	protected override void PreFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}
}
