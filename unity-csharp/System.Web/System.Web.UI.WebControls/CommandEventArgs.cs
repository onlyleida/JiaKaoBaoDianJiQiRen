namespace System.Web.UI.WebControls;

public class CommandEventArgs : EventArgs
{
	private string commandName;

	private object argument;

	public string CommandName => commandName;

	public object CommandArgument => argument;

	public CommandEventArgs(CommandEventArgs e)
		: this(e.CommandName, e.CommandArgument)
	{
	}

	public CommandEventArgs(string commandName, object argument)
	{
		this.commandName = commandName;
		this.argument = argument;
	}
}
