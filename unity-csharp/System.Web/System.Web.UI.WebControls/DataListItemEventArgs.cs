namespace System.Web.UI.WebControls;

public class DataListItemEventArgs : EventArgs
{
	private DataListItem item;

	public DataListItem Item => item;

	public DataListItemEventArgs(DataListItem item)
	{
		this.item = item;
	}
}
