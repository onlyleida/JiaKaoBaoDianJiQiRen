using System.Collections;

namespace System.Web.UI.WebControls;

public class ObjectDataSourceStatusEventArgs : EventArgs
{
	private object _returnValue;

	private IDictionary _outputParameters;

	private Exception _exception;

	private bool _exceptionHandled;

	private int _affectedRows = -1;

	public IDictionary OutputParameters => _outputParameters;

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

	public object ReturnValue => _returnValue;

	public int AffectedRows
	{
		get
		{
			return _affectedRows;
		}
		set
		{
			_affectedRows = value;
		}
	}

	public ObjectDataSourceStatusEventArgs(object returnValue, IDictionary outputParameters)
		: this(returnValue, outputParameters, null)
	{
	}

	public ObjectDataSourceStatusEventArgs(object returnValue, IDictionary outputParameters, Exception exception)
	{
		_returnValue = returnValue;
		_outputParameters = outputParameters;
		_exception = exception;
	}
}
