using System.Collections;
using System.ComponentModel.Design;
using System.Web.UI.WebControls;

namespace System.Web.UI.Design.WebControls;

public class DataBoundControlDesigner : BaseDataBoundControlDesigner, IDataBindingSchemaProvider, IDataSourceProvider
{
	[System.MonoNotSupported("")]
	public override DesignerActionListCollection ActionLists
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public string DataMember
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
		[System.MonoNotSupported("")]
		set
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public IDataSourceDesigner DataSourceDesigner
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public DesignerDataSourceView DesignerView
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	protected virtual int SampleRowCount
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	protected virtual bool UseDataSourcePickerActionList
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	bool IDataBindingSchemaProvider.CanRefreshSchema
	{
		[System.MonoNotSupported("")]
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	IDataSourceViewSchema IDataBindingSchemaProvider.Schema
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public DataBoundControlDesigner()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected override void Dispose(bool disposing)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected override bool ConnectToDataSource()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected override void CreateDataSource()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected override void DataBind(BaseDataBoundControl dataBoundControl)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected override void DisconnectFromDataSource()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected virtual IEnumerable GetDesignTimeDataSource()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected virtual IEnumerable GetSampleDataSource()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected override void PreFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	void IDataBindingSchemaProvider.RefreshSchema(bool preferSilent)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	IEnumerable IDataSourceProvider.GetResolvedSelectedDataSource()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	object IDataSourceProvider.GetSelectedDataSource()
	{
		throw new NotImplementedException();
	}
}
