namespace System.Web;

public class SiteMapResolveEventArgs : EventArgs
{
	private HttpContext _context;

	private SiteMapProvider _provider;

	public HttpContext Context => _context;

	public SiteMapProvider Provider => _provider;

	public SiteMapResolveEventArgs(HttpContext context, SiteMapProvider provider)
	{
		_context = context;
		_provider = provider;
	}
}
