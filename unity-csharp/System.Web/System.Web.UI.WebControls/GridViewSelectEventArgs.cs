using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class GridViewSelectEventArgs : CancelEventArgs
{
	private int _newSelectedIndex;

	public int NewSelectedIndex
	{
		get
		{
			return _newSelectedIndex;
		}
		set
		{
			_newSelectedIndex = value;
		}
	}

	public GridViewSelectEventArgs(int newSelectedIndex)
	{
		_newSelectedIndex = newSelectedIndex;
	}
}
