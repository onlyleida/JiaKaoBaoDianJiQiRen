namespace System.Web.UI.WebControls;

public class LoginCancelEventArgs : EventArgs
{
	private bool _cancel;

	public bool Cancel
	{
		get
		{
			return _cancel;
		}
		set
		{
			_cancel = value;
		}
	}

	public LoginCancelEventArgs()
		: this(cancel: false)
	{
	}

	public LoginCancelEventArgs(bool cancel)
	{
		_cancel = cancel;
	}
}
