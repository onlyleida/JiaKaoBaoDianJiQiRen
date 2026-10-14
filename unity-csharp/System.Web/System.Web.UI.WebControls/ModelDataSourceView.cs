using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls;

public class ModelDataSourceView : DataSourceView, IStateManager
{
	public string DataKeyName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string DeleteMethod
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string InsertMethod
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string ModelTypeName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string SelectMethod
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string UpdateMethod
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
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

	public ModelDataSourceView(ModelDataSource owner)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	bool IStateManager.get_IsTrackingViewState()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected virtual IEnumerable CreateSelectResult(object result)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual ModelDataSourceMethod EvaluateDeleteMethodParameters(IDictionary keys, IDictionary oldValues)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual ModelDataSourceMethod EvaluateInsertMethodParameters(IDictionary values)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual void EvaluateMethodParameters(DataSourceOperation dataSourceOperation, ModelDataSourceMethod modelDataSourceMethod, IDictionary controlValues)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void EvaluateMethodParameters(DataSourceOperation dataSourceOperation, ModelDataSourceMethod modelDataSourceMethod, IDictionary controlValues, bool isPageLoadComplete)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual ModelDataSourceMethod EvaluateSelectMethodParameters(DataSourceSelectArguments arguments, out DataSourceSelectResultProcessingOptions selectResultProcessingOptions)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual ModelDataSourceMethod EvaluateUpdateMethodParameters(IDictionary keys, IDictionary values, IDictionary oldValues)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected internal override IEnumerable ExecuteSelect(DataSourceSelectArguments arguments)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual ModelDataSourceMethod FindMethod(string methodName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual object GetDeleteMethodResult(IDictionary keys, IDictionary oldValues)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual object GetInsertMethodResult(IDictionary values)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual object GetSelectMethodResult(DataSourceSelectArguments arguments)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual object GetUpdateMethodResult(IDictionary keys, IDictionary values, IDictionary oldValues)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual ModelDataMethodResult InvokeMethod(ModelDataSourceMethod method)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual bool IsTrackingViewState()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected virtual void LoadViewState(object savedState)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnCallingDataMethods(CallingDataMethodsEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual object ProcessSelectMethodResult(DataSourceSelectArguments arguments, DataSourceSelectResultProcessingOptions selectResultProcessingOptions, ModelDataMethodResult result)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual object SaveViewState()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	void IStateManager.LoadViewState(object savedState)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	object IStateManager.SaveViewState()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	void IStateManager.TrackViewState()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void TrackViewState()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void UpdateProperties(string modelTypeName, string selectMethod, string updateMethod, string insertMethod, string deleteMethod, string dataKeyName)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
