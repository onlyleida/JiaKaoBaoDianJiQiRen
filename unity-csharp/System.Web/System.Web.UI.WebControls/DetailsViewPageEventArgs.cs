using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class DetailsViewPageEventArgs : CancelEventArgs
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
			_newPageIndex = value;
		}
	}

	public DetailsViewPageEventArgs(int newPageIndex)
	{
		_newPageIndex = newPageIndex;
	}
}
