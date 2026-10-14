namespace System.Web.UI.WebControls;

public class DetailsViewCommandEventArgs : CommandEventArgs
{
	private object _commandSource;

	public object CommandSource => _commandSource;

	public bool Handled { get; set; }

	public DetailsViewCommandEventArgs(object commandSource, CommandEventArgs originalArgs)
		: base(originalArgs)
	{
		_commandSource = commandSource;
	}
}
