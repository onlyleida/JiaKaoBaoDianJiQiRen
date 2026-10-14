using System.Collections.Specialized;

namespace System.Web.UI.WebControls;

public class GridViewUpdatedEventArgs : EventArgs
{
	private int rowsAffected;

	private Exception e;

	private bool exceptionHandled;

	private bool keepEditMode;

	private IOrderedDictionary keys;

	private IOrderedDictionary newValues;

	private IOrderedDictionary oldValues;

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

	public GridViewUpdatedEventArgs(int affectedRows, Exception e)
	{
		rowsAffected = affectedRows;
		this.e = e;
		exceptionHandled = false;
		keepEditMode = false;
	}

	internal GridViewUpdatedEventArgs(int affectedRows, Exception e, IOrderedDictionary keys, IOrderedDictionary oldValues, IOrderedDictionary newValues)
		: this(affectedRows, e)
	{
		this.keys = keys;
		this.newValues = newValues;
		this.oldValues = oldValues;
	}
}
