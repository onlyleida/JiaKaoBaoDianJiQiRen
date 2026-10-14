namespace System.Web.UI.Design;

public class ViewEventArgs : EventArgs
{
	private ViewEvent event_type;

	private DesignerRegion region;

	private EventArgs event_args;

	public ViewEvent EventType => event_type;

	public DesignerRegion Region => region;

	public EventArgs EventArgs => event_args;

	public ViewEventArgs(ViewEvent eventType, DesignerRegion region, EventArgs eventArgs)
	{
		event_type = eventType;
		this.region = region;
		event_args = eventArgs;
	}
}
