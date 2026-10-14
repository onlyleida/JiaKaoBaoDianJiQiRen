using System.Security.Permissions;
using System.Security.Principal;

namespace System.Web.Security;

public sealed class FormsAuthenticationEventArgs : EventArgs
{
	private IPrincipal _User;

	private HttpContext _Context;

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

	public FormsAuthenticationEventArgs(HttpContext context)
	{
		_Context = context;
	}
}
