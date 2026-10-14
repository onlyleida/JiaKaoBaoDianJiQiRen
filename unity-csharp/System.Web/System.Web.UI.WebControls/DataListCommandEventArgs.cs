namespace System.Web.UI.WebControls;

public class DataListCommandEventArgs : CommandEventArgs
{
	private DataListItem item;

	private object commandSource;

	public DataListItem Item => item;

	public object CommandSource => commandSource;

	public DataListCommandEventArgs(DataListItem item, object commandSource, CommandEventArgs originalArgs)
		: base(originalArgs)
	{
		this.item = item;
		this.commandSource = commandSource;
	}
}
