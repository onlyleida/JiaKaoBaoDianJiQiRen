using System.Collections.Specialized;

namespace System.Web.UI.WebControls;

public class FormViewDeletedEventArgs : EventArgs
{
	private int rowsAffected;

	private Exception e;

	private bool exceptionHandled;

	private IOrderedDictionary keys;

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

	public IOrderedDictionary Keys => keys;

	public IOrderedDictionary Values => values;

	public FormViewDeletedEventArgs(int affectedRows, Exception e)
	{
		rowsAffected = affectedRows;
		this.e = e;
	}

	internal FormViewDeletedEventArgs(int affectedRows, Exception e, IOrderedDictionary keys, IOrderedDictionary values)
		: this(affectedRows, e)
	{
		this.keys = keys;
		this.values = values;
	}
}
