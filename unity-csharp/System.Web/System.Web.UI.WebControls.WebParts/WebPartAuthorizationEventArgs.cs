namespace System.Web.UI.WebControls.WebParts;

public class WebPartAuthorizationEventArgs : EventArgs
{
	private bool authorized;

	private Type type;

	private string path;

	private string authorizationFilter;

	private bool isShared;

	public Type Type => type;

	public string Path => path;

	public string AuthorizationFilter => authorizationFilter;

	public bool IsShared => isShared;

	public bool IsAuthorized
	{
		get
		{
			return authorized;
		}
		set
		{
			authorized = value;
		}
	}

	public WebPartAuthorizationEventArgs(Type type, string path, string authorizationFilter, bool isShared)
	{
		this.type = type;
		this.path = path;
		this.authorizationFilter = authorizationFilter;
		this.isShared = isShared;
	}
}
