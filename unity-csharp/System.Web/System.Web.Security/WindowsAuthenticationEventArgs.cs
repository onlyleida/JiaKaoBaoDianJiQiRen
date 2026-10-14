using System.Security.Permissions;
using System.Security.Principal;

namespace System.Web.Security;

public sealed class WindowsAuthenticationEventArgs : EventArgs
{
	private IPrincipal _User;

	private HttpContext _Context;

	private WindowsIdentity _Identity;

	public IPrincipal User
	{
		get
		{
			return _User;
		}
		[SecurityPermission(SecurityAction.Demand, ControlPrincipal = true)]
		set
		{
			_User = value;
		}
	}

	public HttpContext Context => _Context;

	public WindowsIdentity Identity => _Identity;

	public WindowsAuthenticationEventArgs(WindowsIdentity identity, HttpContext context)
	{
		_Identity = identity;
		_Context = context;
	}
}
