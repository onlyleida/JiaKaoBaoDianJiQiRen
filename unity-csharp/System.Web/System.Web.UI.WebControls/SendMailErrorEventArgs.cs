namespace System.Web.UI.WebControls;

public class SendMailErrorEventArgs : EventArgs
{
	private Exception exception;

	private bool exceptionHandled;

	public Exception Exception
	{
		get
		{
			return exception;
		}
		set
		{
			exception = value;
		}
	}

	public bool Handled
	{
		get
		{
			return exceptionHandled;
		}
		set
		{
			exceptionHandled = value;
		}
	}

	public SendMailErrorEventArgs(Exception e)
	{
		exception = e;
		exceptionHandled = true;
	}
}
