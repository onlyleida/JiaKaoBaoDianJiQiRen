using System.Security.Permissions;

namespace System.Web.Security;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class DefaultAuthenticationEventArgs : EventArgs
{
	private HttpContext _context;

	public HttpContext Context => _context;

	public DefaultAuthenticationEventArgs(HttpContext context)
	{
		if (context == null)
		{
			throw new ArgumentNullException("context");
		}
		_context = context;
	}
}
