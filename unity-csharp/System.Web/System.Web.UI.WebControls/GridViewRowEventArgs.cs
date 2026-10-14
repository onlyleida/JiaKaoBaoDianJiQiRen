namespace System.Web.UI.WebControls;

public class GridViewRowEventArgs : EventArgs
{
	private GridViewRow _row;

	public GridViewRow Row => _row;

	public GridViewRowEventArgs(GridViewRow row)
	{
		_row = row;
	}
}
