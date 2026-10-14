using System.Collections.Specialized;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class DetailsViewDeleteEventArgs : CancelEventArgs
{
	private int rowIndex;

	private IOrderedDictionary keys;

	private IOrderedDictionary values;

	public int RowIndex => rowIndex;

	public IOrderedDictionary Keys => keys;

	public IOrderedDictionary Values => values;

	public DetailsViewDeleteEventArgs(int rowIndex)
	{
		this.rowIndex = rowIndex;
	}

	internal DetailsViewDeleteEventArgs(int index, IOrderedDictionary keys, IOrderedDictionary values)
	{
		rowIndex = index;
		this.keys = keys;
		this.values = values;
	}
}
