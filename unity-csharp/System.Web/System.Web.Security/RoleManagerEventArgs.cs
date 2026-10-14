namespace System.Web.Security;

public sealed class RoleManagerEventArgs : EventArgs
{
	private HttpContext _Context;

	private bool _RolesPopulated;

	public bool RolesPopulated
	{
		get
		{
			return _RolesPopulated;
		}
		set
		{
			_RolesPopulated = value;
		}
	}

	public HttpContext Context => _Context;

	public RoleManagerEventArgs(HttpContext context)
	{
		_Context = context;
	}
}
