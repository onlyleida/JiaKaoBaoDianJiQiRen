namespace System.Web.UI.WebControls;

public class DataGridCommandEventArgs : CommandEventArgs
{
	private DataGridItem item;

	private object commandSource;

	public object CommandSource => commandSource;

	public DataGridItem Item => item;

	public DataGridCommandEventArgs(DataGridItem item, object commandSource, CommandEventArgs originalArgs)
		: base(originalArgs)
	{
		this.item = item;
		this.commandSource = commandSource;
	}
}
