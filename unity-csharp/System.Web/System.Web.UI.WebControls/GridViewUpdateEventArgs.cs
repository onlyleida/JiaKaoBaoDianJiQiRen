using System.Collections.Specialized;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class GridViewUpdateEventArgs : CancelEventArgs
{
	private int rowIndex;

	private IOrderedDictionary keys;

	private IOrderedDictionary newValues;

	private IOrderedDictionary oldValues;

	public int RowIndex => rowIndex;

	public IOrderedDictionary Keys => keys;

	public IOrderedDictionary NewValues => newValues;

	public IOrderedDictionary OldValues => oldValues;

	public GridViewUpdateEventArgs(int rowIndex)
	{
		this.rowIndex = rowIndex;
	}

	internal GridViewUpdateEventArgs(int rowIndex, IOrderedDictionary keys, IOrderedDictionary oldValues, IOrderedDictionary newValues)
	{
		this.rowIndex = rowIndex;
		this.keys = keys;
		this.newValues = newValues;
		this.oldValues = oldValues;
	}
}
