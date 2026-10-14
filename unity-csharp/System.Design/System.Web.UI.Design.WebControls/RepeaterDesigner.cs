using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using Unity;

namespace System.Web.UI.Design.WebControls;

public class RepeaterDesigner : ControlDesigner, IDataSourceProvider
{
	private string data_member;

	private string data_source;

	public string DataMember
	{
		get
		{
			return data_member;
		}
		set
		{
			data_member = value;
		}
	}

	public string DataSource
	{
		get
		{
			return data_source;
		}
		set
		{
			data_source = value;
		}
	}

	protected bool TemplatesExist
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public IDataSourceDesigner DataSourceDesigner
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string DataSourceID
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

	public DesignerDataSourceView DesignerView
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected override void Dispose(bool disposing)
	{
		throw new NotImplementedException();
	}

	protected IEnumerable GetDesignTimeDataSource(int minimumRows)
	{
		throw new NotImplementedException();
	}

	protected IEnumerable GetDesignTimeDataSource(IEnumerable selectedDataSource, int minimumRows)
	{
		throw new NotImplementedException();
	}

	public override string GetDesignTimeHtml()
	{
		throw new NotImplementedException();
	}

	protected override string GetEmptyDesignTimeHtml()
	{
		throw new NotImplementedException();
	}

	protected override string GetErrorDesignTimeHtml(Exception e)
	{
		throw new NotImplementedException();
	}

	public virtual IEnumerable GetResolvedSelectedDataSource()
	{
		throw new NotImplementedException();
	}

	public virtual object GetSelectedDataSource()
	{
		throw new NotImplementedException();
	}

	public override void Initialize(IComponent component)
	{
		throw new NotImplementedException();
	}

	public override void OnComponentChanged(object source, ComponentChangedEventArgs ce)
	{
		throw new NotImplementedException();
	}

	protected internal virtual void OnDataSourceChanged()
	{
		throw new NotImplementedException();
	}

	protected override void PreFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}

	protected virtual void ExecuteChooseDataSourcePostSteps()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
