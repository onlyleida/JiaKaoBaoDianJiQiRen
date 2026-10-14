namespace System.Web.UI.WebControls;

public class DataGridItemEventArgs : EventArgs
{
	private DataGridItem item;

	public DataGridItem Item => item;

	public DataGridItemEventArgs(DataGridItem item)
	{
		this.item = item;
	}
}
