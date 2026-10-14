using System.Runtime.CompilerServices;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class SiteMapDataSourceDesigner : HierarchicalDataSourceDesigner, IDataSourceDesigner
{
	event EventHandler IDataSourceDesigner.DataSourceChanged
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

	event EventHandler IDataSourceDesigner.SchemaRefreshed
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

	public SiteMapDataSourceDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	bool IDataSourceDesigner.get_CanConfigure()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[SpecialName]
	bool IDataSourceDesigner.get_CanRefreshSchema()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual string[] GetViewNames()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	void IDataSourceDesigner.Configure()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	DesignerDataSourceView IDataSourceDesigner.GetView(string viewName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	string[] IDataSourceDesigner.GetViewNames()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	void IDataSourceDesigner.RefreshSchema(bool preferSilent)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void IDataSourceDesigner.ResumeDataSourceEvents()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void IDataSourceDesigner.SuppressDataSourceEvents()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
