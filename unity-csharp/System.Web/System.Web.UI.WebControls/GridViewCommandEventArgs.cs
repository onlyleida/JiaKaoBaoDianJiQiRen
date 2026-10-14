namespace System.Web.UI.WebControls;

public class GridViewCommandEventArgs : CommandEventArgs
{
	private GridViewRow _row;

	private object _commandSource;

	public object CommandSource => _commandSource;

	public bool Handled { get; set; }

	internal GridViewRow Row => _row;

	public GridViewCommandEventArgs(GridViewRow row, object commandSource, CommandEventArgs originalArgs)
		: base(originalArgs)
	{
		_row = row;
		_commandSource = commandSource;
	}

	public GridViewCommandEventArgs(object commandSource, CommandEventArgs originalArgs)
		: base(originalArgs)
	{
		_commandSource = commandSource;
	}
}
