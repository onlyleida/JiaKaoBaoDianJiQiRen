using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class FormViewPageEventArgs : CancelEventArgs
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

	public FormViewPageEventArgs(int newPageIndex)
	{
		_newPageIndex = newPageIndex;
	}
}
