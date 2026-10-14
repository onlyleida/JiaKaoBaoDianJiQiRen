using System.ComponentModel;
using System.Data.Common;

namespace System.Web.UI.WebControls;

public class SqlDataSourceCommandEventArgs : CancelEventArgs
{
	private DbCommand _command;

	public DbCommand Command => _command;

	public SqlDataSourceCommandEventArgs(DbCommand command)
	{
		_command = command;
	}
}
