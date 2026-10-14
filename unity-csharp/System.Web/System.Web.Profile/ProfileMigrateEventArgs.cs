namespace System.Web.Profile;

public sealed class ProfileMigrateEventArgs : EventArgs
{
	private HttpContext context;

	private string anonymousId;

	public string AnonymousID => anonymousId;

	public HttpContext Context => context;

	public ProfileMigrateEventArgs(HttpContext context, string anonymousId)
	{
		this.context = context;
		this.anonymousId = anonymousId;
	}
}
