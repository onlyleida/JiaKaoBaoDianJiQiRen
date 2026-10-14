namespace System.Web.Profile;

[Serializable]
public class ProfileInfo
{
	private string _UserName;

	private DateTime _LastActivityDate;

	private DateTime _LastUpdatedDate;

	private bool _IsAnonymous;

	private int _Size;

	public virtual string UserName => _UserName;

	public virtual DateTime LastActivityDate => _LastActivityDate.ToLocalTime();

	public virtual DateTime LastUpdatedDate => _LastUpdatedDate.ToLocalTime();

	public virtual bool IsAnonymous => _IsAnonymous;

	public virtual int Size => _Size;

	public ProfileInfo(string username, bool isAnonymous, DateTime lastActivityDate, DateTime lastUpdatedDate, int size)
	{
		if (username != null)
		{
			username = username.Trim();
		}
		_UserName = username;
		if (lastActivityDate.Kind == DateTimeKind.Local)
		{
			lastActivityDate = lastActivityDate.ToUniversalTime();
		}
		_LastActivityDate = lastActivityDate;
		if (lastUpdatedDate.Kind == DateTimeKind.Local)
		{
			lastUpdatedDate = lastUpdatedDate.ToUniversalTime();
		}
		_LastUpdatedDate = lastUpdatedDate;
		_IsAnonymous = isAnonymous;
		_Size = size;
	}

	protected ProfileInfo()
	{
	}
}
