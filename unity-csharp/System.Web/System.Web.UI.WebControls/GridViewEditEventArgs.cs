using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class GridViewEditEventArgs : CancelEventArgs
{
	private int _newEditIndex;

	public int NewEditIndex
	{
		get
		{
			return _newEditIndex;
		}
		set
		{
			_newEditIndex = value;
		}
	}

	public GridViewEditEventArgs(int newEditIndex)
	{
		_newEditIndex = newEditIndex;
	}
}
