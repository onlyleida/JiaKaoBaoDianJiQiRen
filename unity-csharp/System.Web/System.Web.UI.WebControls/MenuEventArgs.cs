namespace System.Web.UI.WebControls;

public sealed class MenuEventArgs : CommandEventArgs
{
	private MenuItem _item;

	private object _commandSource;

	public object CommandSource => _commandSource;

	public MenuItem Item => _item;

	public MenuEventArgs(MenuItem item, object commandSource, CommandEventArgs originalArgs)
		: base(originalArgs)
	{
		_item = item;
		_commandSource = commandSource;
	}

	public MenuEventArgs(MenuItem item)
		: this(item, null, new CommandEventArgs(string.Empty, null))
	{
	}
}
