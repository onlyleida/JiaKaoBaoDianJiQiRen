using System.Security.Permissions;
using System.Security.Principal;

namespace System.Web.Security;

[Obsolete("This type is obsolete. The Passport authentication product is no longer supported and has been superseded by Live ID.")]
public sealed class PassportAuthenticationEventArgs : EventArgs
{
	private IPrincipal _User;

	private HttpContext _Context;

	private PassportIdentity _Identity;

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

	public PassportIdentity Identity => _Identity;

	public PassportAuthenticationEventArgs(PassportIdentity identity, HttpContext context)
	{
		_Identity = identity;
		_Context = context;
	}
}
