using System.Collections.Specialized;

namespace System.Web.UI.WebControls;

public class FormViewInsertedEventArgs : EventArgs
{
	private int rowsAffected;

	private Exception e;

	private bool exceptionHandled;

	private bool keepInsertedMode;

	private IOrderedDictionary values;

	public int AffectedRows => rowsAffected;

	public Exception Exception => e;

	public bool ExceptionHandled
	{
		get
		{
			return exceptionHandled;
		}
		set
		{
			exceptionHandled = value;
		}
	}

	public bool KeepInInsertMode
	{
		get
		{
			return keepInsertedMode;
		}
		set
		{
			keepInsertedMode = value;
		}
	}

	public IOrderedDictionary Values => values;

	public FormViewInsertedEventArgs(int affectedRows, Exception e)
	{
		rowsAffected = affectedRows;
		this.e = e;
	}

	internal FormViewInsertedEventArgs(int affectedRows, Exception e, IOrderedDictionary values)
		: this(affectedRows, e)
	{
		this.values = values;
	}
}
