using System.Collections.Specialized;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class FormViewDeleteEventArgs : CancelEventArgs
{
	private int rowIndex;

	private IOrderedDictionary keys;

	private IOrderedDictionary values;

	public int RowIndex => rowIndex;

	public IOrderedDictionary Keys => keys;

	public IOrderedDictionary Values => values;

	public FormViewDeleteEventArgs(int rowIndex)
	{
		this.rowIndex = rowIndex;
	}

	internal FormViewDeleteEventArgs(int index, IOrderedDictionary keys, IOrderedDictionary values)
		: this(index)
	{
		this.keys = keys;
		this.values = values;
	}
}
