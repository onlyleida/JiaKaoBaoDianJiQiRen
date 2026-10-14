namespace System.Web.UI.WebControls;

public class RepeaterCommandEventArgs : CommandEventArgs
{
	private RepeaterItem item;

	private object commandSource;

	public RepeaterItem Item => item;

	public object CommandSource => commandSource;

	public RepeaterCommandEventArgs(RepeaterItem item, object commandSource, CommandEventArgs originalArgs)
		: base(originalArgs)
	{
		this.item = item;
		this.commandSource = commandSource;
	}
}
