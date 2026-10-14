using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class GridViewCancelEditEventArgs : CancelEventArgs
{
	private int _rowIndex;

	public int RowIndex => _rowIndex;

	public GridViewCancelEditEventArgs(int rowIndex)
	{
		_rowIndex = rowIndex;
	}
}
