namespace System.Web.UI.WebControls;

public class DataGridPageChangedEventArgs : EventArgs
{
	private object commandSource;

	private int newPageIndex;

	public object CommandSource => commandSource;

	public int NewPageIndex => newPageIndex;

	public DataGridPageChangedEventArgs(object commandSource, int newPageIndex)
	{
		this.commandSource = commandSource;
		this.newPageIndex = newPageIndex;
	}
}
