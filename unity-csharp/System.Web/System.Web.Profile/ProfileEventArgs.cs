namespace System.Web.Profile;

public sealed class ProfileEventArgs : EventArgs
{
	private HttpContext _Context;

	private ProfileBase _Profile;

	public HttpContext Context => _Context;

	public ProfileBase Profile
	{
		get
		{
			return _Profile;
		}
		set
		{
			_Profile = value;
		}
	}

	public ProfileEventArgs(HttpContext context)
	{
		_Context = context;
	}
}
