using Unity;

namespace System.Web.Security;

[Serializable]
public class ActiveDirectoryMembershipUser : MembershipUser
{
	protected ActiveDirectoryMembershipUser()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ActiveDirectoryMembershipUser(string providerName, string name, object providerUserKey, string email, string passwordQuestion, string comment, bool isApproved, bool isLockedOut, DateTime creationDate, DateTime lastLoginDate, DateTime lastActivityDate, DateTime lastPasswordChangedDate, DateTime lastLockoutDate)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
