using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.Design.WebControls;

public class MenuDesigner : HierarchicalDataBoundControlDesigner, IDataBindingSchemaProvider
{
	protected bool CanRefreshSchema
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected IDataSourceViewSchema Schema
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public MenuDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
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

	protected void RefreshSchema(bool preferSilent)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void IDataBindingSchemaProvider.RefreshSchema(bool preferSilent)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
