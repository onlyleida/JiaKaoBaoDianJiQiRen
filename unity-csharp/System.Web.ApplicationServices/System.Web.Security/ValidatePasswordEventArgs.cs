using System.Runtime.CompilerServices;

namespace System.Web.Security;

[TypeForwardedFrom("System.Web, Version=2.0.0.0, Culture=Neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public sealed class ValidatePasswordEventArgs : EventArgs
{
	private string _userName;

	private string _password;

	private bool _isNewUser;

	private bool _cancel;

	private Exception _failureInformation;

	public string UserName => _userName;

	public string Password => _password;

	public bool IsNewUser => _isNewUser;

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

	public Exception FailureInformation
	{
		get
		{
			return _failureInformation;
		}
		set
		{
			_failureInformation = value;
		}
	}

	public ValidatePasswordEventArgs(string userName, string password, bool isNewUser)
	{
		_userName = userName;
		_password = password;
		_isNewUser = isNewUser;
		_cancel = false;
	}
}
