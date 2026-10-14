namespace System.Web.Profile;

public sealed class ProfileAutoSaveEventArgs : EventArgs
{
	private HttpContext context;

	private bool continueWithProfileAutoSave;

	public HttpContext Context => context;

	public bool ContinueWithProfileAutoSave
	{
		get
		{
			return continueWithProfileAutoSave;
		}
		set
		{
			continueWithProfileAutoSave = value;
		}
	}

	public ProfileAutoSaveEventArgs(HttpContext context)
	{
		this.context = context;
		continueWithProfileAutoSave = true;
	}
}
