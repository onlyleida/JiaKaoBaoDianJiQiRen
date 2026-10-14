using Unity;

namespace System.Web.UI.WebControls.WebParts;

[Serializable]
public sealed class UserPersonalizationStateInfo : PersonalizationStateInfo
{
	public DateTime LastActivityDate
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public string Username
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public UserPersonalizationStateInfo(string path, DateTime lastUpdatedDate, int size, string username, DateTime lastActivityDate)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
