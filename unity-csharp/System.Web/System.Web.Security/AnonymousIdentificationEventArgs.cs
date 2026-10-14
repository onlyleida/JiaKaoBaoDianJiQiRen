namespace System.Web.Security;

public sealed class AnonymousIdentificationEventArgs : EventArgs
{
	private HttpContext context;

	private string anonymousId;

	public HttpContext Context => context;

	public string AnonymousID
	{
		get
		{
			return anonymousId;
		}
		set
		{
			anonymousId = value;
		}
	}

	public AnonymousIdentificationEventArgs(HttpContext context)
	{
		this.context = context;
	}
}
