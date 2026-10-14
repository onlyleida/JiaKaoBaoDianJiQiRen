using System.Runtime.CompilerServices;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class XmlDataSourceDesigner : HierarchicalDataSourceDesigner, IDataSourceDesigner
{
	public string Data
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

	public string DataFile
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

	public string Transform
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

	public string TransformFile
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

	public string XPath
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

	public XmlDataSourceDesigner()
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
