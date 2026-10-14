using System.Data.Common;

namespace System.Web.UI.WebControls;

public class SqlDataSourceStatusEventArgs : EventArgs
{
	private DbCommand _command;

	private Exception _exception;

	private bool _exceptionHandled;

	private int _affectedRows;

	public int AffectedRows => _affectedRows;

	public DbCommand Command => _command;

	public Exception Exception => _exception;

	public bool ExceptionHandled
	{
		get
		{
			return _exceptionHandled;
		}
		set
		{
			_exceptionHandled = value;
		}
	}

	public SqlDataSourceStatusEventArgs(DbCommand command, int affectedRows, Exception exception)
	{
		_command = command;
		_affectedRows = affectedRows;
		_exception = exception;
	}
}
