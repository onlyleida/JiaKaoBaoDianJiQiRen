using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class GridViewPageEventArgs : CancelEventArgs
{
	private int _newPageIndex;

	public int NewPageIndex
	{
		get
		{
			return _newPageIndex;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			_newPageIndex = value;
		}
	}

	public GridViewPageEventArgs(int newPageIndex)
	{
		_newPageIndex = newPageIndex;
	}
}
