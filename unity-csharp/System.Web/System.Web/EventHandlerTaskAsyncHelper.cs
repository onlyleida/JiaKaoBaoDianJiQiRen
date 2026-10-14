namespace System.Web;

public sealed class EventHandlerTaskAsyncHelper
{
	private readonly TaskEventHandler taskEventHandler;

	private readonly BeginEventHandler beginEventHandler;

	private static readonly EndEventHandler endEventHandler = TaskAsyncResult.Wait;

	public BeginEventHandler BeginEventHandler => beginEventHandler;

	public EndEventHandler EndEventHandler => endEventHandler;

	public EventHandlerTaskAsyncHelper(TaskEventHandler handler)
	{
		if (handler == null)
		{
			throw new ArgumentNullException("handler");
		}
		taskEventHandler = handler;
		beginEventHandler = GetAsyncResult;
	}

	private IAsyncResult GetAsyncResult(object sender, EventArgs e, AsyncCallback callback, object state)
	{
		return TaskAsyncResult.GetAsyncResult(taskEventHandler(sender, e), callback, state);
	}
}
