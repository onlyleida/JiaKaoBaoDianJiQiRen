using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls;

public class ModelDataSource : IDataSource, IStateManager
{
	public Control DataControl
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual ModelDataSourceView View
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

	event EventHandler IDataSource.DataSourceChanged
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

	public ModelDataSource(Control dataControl)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	bool IStateManager.get_IsTrackingViewState()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
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

	protected virtual object SaveViewState()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	DataSourceView IDataSource.GetView(string viewName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	ICollection IDataSource.GetViewNames()
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

	public void UpdateProperties(string modelTypeName, string selectMethod)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void UpdateProperties(string modelTypeName, string selectMethod, string updateMethod, string insertMethod, string deleteMethod, string dataKeyName)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
