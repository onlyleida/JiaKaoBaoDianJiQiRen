using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.Design.WebControls;

public abstract class BaseDataListDesigner : TemplatedControlDesigner, IDataSourceProvider, IDataBindingSchemaProvider
{
	private string data_key_field;

	private string data_member;

	private string data_source;

	public string DataKeyField
	{
		get
		{
			return data_key_field;
		}
		set
		{
			data_key_field = value;
		}
	}

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

	public override bool DesignTimeHtmlRequiresLoadComplete
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public override DesignerVerbCollection Verbs
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

	public BaseDataListDesigner()
	{
	}

	protected override void Dispose(bool disposing)
	{
		throw new NotImplementedException();
	}

	protected IEnumerable GetDesignTimeDataSource(int minimumRows, out bool dummyDataSource)
	{
		throw new NotImplementedException();
	}

	protected IEnumerable GetDesignTimeDataSource(IEnumerable selectedDataSource, int minimumRows, out bool dummyDataSource)
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

	public override IEnumerable GetTemplateContainerDataSource(string templateName)
	{
		throw new NotImplementedException();
	}

	public override void Initialize(IComponent component)
	{
		throw new NotImplementedException();
	}

	protected internal void InvokePropertyBuilder(int initialPage)
	{
		throw new NotImplementedException();
	}

	protected void OnAutoFormat(object sender, EventArgs e)
	{
		throw new NotImplementedException();
	}

	public override void OnComponentChanged(object sender, ComponentChangedEventArgs e)
	{
		throw new NotImplementedException();
	}

	protected internal virtual void OnDataSourceChanged()
	{
		throw new NotImplementedException();
	}

	protected void OnPropertyBuilder(object sender, EventArgs e)
	{
		throw new NotImplementedException();
	}

	protected internal void OnStylesChanged()
	{
		throw new NotImplementedException();
	}

	protected abstract void OnTemplateEditingVerbsChanged();

	protected override void PreFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}

	[SpecialName]
	bool IDataBindingSchemaProvider.get_CanRefreshSchema()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[SpecialName]
	IDataSourceViewSchema IDataBindingSchemaProvider.get_Schema()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual void OnSchemaRefreshed()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void IDataBindingSchemaProvider.RefreshSchema(bool preferSilent)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
