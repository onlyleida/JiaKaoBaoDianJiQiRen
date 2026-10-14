namespace System.Web.UI.WebControls;

public class AuthenticateEventArgs : EventArgs
{
	private bool _authenticated;

	public bool Authenticated
	{
		get
		{
			return _authenticated;
		}
		set
		{
			_authenticated = value;
		}
	}

	public AuthenticateEventArgs()
		: this(authenticated: false)
	{
	}

	public AuthenticateEventArgs(bool authenticated)
	{
		_authenticated = authenticated;
	}
}
