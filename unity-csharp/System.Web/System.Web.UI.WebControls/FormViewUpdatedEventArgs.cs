using System.Collections.Specialized;

namespace System.Web.UI.WebControls;

public class FormViewUpdatedEventArgs : EventArgs
{
	private int rowsAffected;

	private Exception e;

	private bool exceptionHandled;

	private bool keepEditMode;

	private IOrderedDictionary keys;

	private IOrderedDictionary oldValues;

	private IOrderedDictionary newValues;

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

	public bool KeepInEditMode
	{
		get
		{
			return keepEditMode;
		}
		set
		{
			keepEditMode = value;
		}
	}

	public IOrderedDictionary Keys => keys;

	public IOrderedDictionary NewValues => newValues;

	public IOrderedDictionary OldValues => oldValues;

	public FormViewUpdatedEventArgs(int affectedRows, Exception e)
	{
		rowsAffected = affectedRows;
		this.e = e;
		exceptionHandled = false;
		keepEditMode = false;
	}

	internal FormViewUpdatedEventArgs(int affectedRows, Exception e, IOrderedDictionary keys, IOrderedDictionary oldValues, IOrderedDictionary newValues)
		: this(affectedRows, e)
	{
		this.keys = keys;
		this.oldValues = oldValues;
		this.newValues = newValues;
	}
}
