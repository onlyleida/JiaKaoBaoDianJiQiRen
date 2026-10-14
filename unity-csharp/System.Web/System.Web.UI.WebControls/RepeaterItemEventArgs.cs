namespace System.Web.UI.WebControls;

public class RepeaterItemEventArgs : EventArgs
{
	private RepeaterItem item;

	public RepeaterItem Item => item;

	public RepeaterItemEventArgs(RepeaterItem item)
	{
		this.item = item;
	}
}
