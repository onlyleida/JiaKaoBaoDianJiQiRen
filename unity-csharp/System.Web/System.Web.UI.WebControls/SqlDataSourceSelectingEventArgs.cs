using System.Data.Common;

namespace System.Web.UI.WebControls;

public class SqlDataSourceSelectingEventArgs : SqlDataSourceCommandEventArgs
{
	private DataSourceSelectArguments _arguments;

	public DataSourceSelectArguments Arguments => _arguments;

	public SqlDataSourceSelectingEventArgs(DbCommand command, DataSourceSelectArguments arguments)
		: base(command)
	{
		_arguments = arguments;
	}
}
