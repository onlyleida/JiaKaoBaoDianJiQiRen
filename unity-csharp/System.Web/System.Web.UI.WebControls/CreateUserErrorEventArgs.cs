using System.Web.Security;

namespace System.Web.UI.WebControls;

public class CreateUserErrorEventArgs : EventArgs
{
	private MembershipCreateStatus _error;

	public MembershipCreateStatus CreateUserError
	{
		get
		{
			return _error;
		}
		set
		{
			_error = value;
		}
	}

	public CreateUserErrorEventArgs(MembershipCreateStatus s)
	{
		_error = s;
	}
}
