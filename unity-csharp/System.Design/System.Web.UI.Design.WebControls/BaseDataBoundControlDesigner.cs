using System.Collections;
using System.ComponentModel;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace System.Web.UI.Design.WebControls;

public abstract class BaseDataBoundControlDesigner : ControlDesigner
{
	[System.MonoNotSupported("")]
	public string DataSource
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
	public string DataSourceID
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
	protected BaseDataBoundControlDesigner()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected override void Dispose(bool disposing)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public override string GetDesignTimeHtml()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public override void Initialize(IComponent component)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public static DialogResult ShowCreateDataSourceDialog(ControlDesigner controlDesigner, Type dataSourceType, bool configure, out string dataSourceID)
	{
		throw new NotImplementedException();
	}

	protected abstract bool ConnectToDataSource();

	protected abstract void CreateDataSource();

	protected abstract void DataBind(BaseDataBoundControl dataBoundControl);

	protected abstract void DisconnectFromDataSource();

	[System.MonoNotSupported("")]
	protected override string GetEmptyDesignTimeHtml()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected override string GetErrorDesignTimeHtml(Exception e)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected virtual void OnDataSourceChanged(bool forceUpdateView)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected virtual void OnSchemaRefreshed()
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected override void PreFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}
}
