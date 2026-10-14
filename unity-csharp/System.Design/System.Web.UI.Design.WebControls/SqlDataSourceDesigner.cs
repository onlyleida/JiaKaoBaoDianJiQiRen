using System.ComponentModel.Design.Data;
using System.Data.Common;
using System.Security.Permissions;
using System.Web.UI.WebControls;
using Unity;

namespace System.Web.UI.Design.WebControls;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class SqlDataSourceDesigner : DataSourceDesigner
{
	public string ConnectionString
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

	public DataSourceOperation DeleteQuery
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public DataSourceOperation InsertQuery
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string ProviderName
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

	public string SelectCommand
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

	public DataSourceOperation SelectQuery
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public DataSourceOperation UpdateQuery
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public SqlDataSourceDesigner()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual SqlDesignerDataSourceView CreateView(string viewName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual void DeriveParameters(string providerName, DbCommand command)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual string GetConnectionString()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected internal virtual Parameter[] InferParameterNames(DesignerDataConnection connection, string commandText, SqlDataSourceCommandType commandType)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
