namespace System.Web.UI.WebControls;

public class DataGridSortCommandEventArgs : EventArgs
{
	private string sortExpression;

	private object commandSource;

	public object CommandSource => commandSource;

	public string SortExpression => sortExpression;

	public DataGridSortCommandEventArgs(object commandSource, DataGridCommandEventArgs dce)
	{
		this.commandSource = commandSource;
		sortExpression = (string)dce.CommandArgument;
	}
}
