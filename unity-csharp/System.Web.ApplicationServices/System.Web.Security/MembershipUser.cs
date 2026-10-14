using System.Runtime.CompilerServices;

namespace System.Web.Security;

[Serializable]
[TypeForwardedFrom("System.Web, Version=2.0.0.0, Culture=Neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public class MembershipUser
{
	private string providerName;

	private string name;

	private object providerUserKey;

	private string email;

	private string passwordQuestion;

	private string comment;

	private bool isApproved;

	private bool isLockedOut;

	private DateTime creationDate;

	private DateTime lastLoginDate;

	private DateTime lastActivityDate;

	private DateTime lastPasswordChangedDate;

	private DateTime lastLockoutDate;

	public virtual string Comment
	{
		get
		{
			return comment;
		}
		set
		{
			comment = value;
		}
	}

	public virtual DateTime CreationDate => creationDate.ToLocalTime();

	public virtual string Email
	{
		get
		{
			return email;
		}
		set
		{
			email = value;
		}
	}

	public virtual bool IsApproved
	{
		get
		{
			return isApproved;
		}
		set
		{
			isApproved = value;
		}
	}

	public virtual bool IsLockedOut => isLockedOut;

	public virtual bool IsOnline
	{
		get
		{
			int userIsOnlineTimeWindow = (MembershipProvider.Helper ?? throw new PlatformNotSupportedException("The method is not available.")).UserIsOnlineTimeWindow;
			return LastActivityDate > DateTime.Now - TimeSpan.FromMinutes(userIsOnlineTimeWindow);
		}
	}

	public virtual DateTime LastActivityDate
	{
		get
		{
			return lastActivityDate.ToLocalTime();
		}
		set
		{
			lastActivityDate = value.ToUniversalTime();
		}
	}

	public virtual DateTime LastLoginDate
	{
		get
		{
			return lastLoginDate.ToLocalTime();
		}
		set
		{
			lastLoginDate = value.ToUniversalTime();
		}
	}

	public virtual DateTime LastPasswordChangedDate => lastPasswordChangedDate.ToLocalTime();

	public virtual DateTime LastLockoutDate => lastLockoutDate.ToLocalTime();

	public virtual string PasswordQuestion => passwordQuestion;

	public virtual string ProviderName => providerName;

	public virtual string UserName => name;

	public virtual object ProviderUserKey => providerUserKey;

	private MembershipProvider Provider => (MembershipProvider.Helper ?? throw new PlatformNotSupportedException("The method is not available.")).Providers[ProviderName] ?? throw new InvalidOperationException("Membership provider '" + ProviderName + "' not found.");

	protected MembershipUser()
	{
	}

	public MembershipUser(string providerName, string name, object providerUserKey, string email, string passwordQuestion, string comment, bool isApproved, bool isLockedOut, DateTime creationDate, DateTime lastLoginDate, DateTime lastActivityDate, DateTime lastPasswordChangedDate, DateTime lastLockoutDate)
	{
		this.providerName = providerName;
		this.name = name;
		this.providerUserKey = providerUserKey;
		this.email = email;
		this.passwordQuestion = passwordQuestion;
		this.comment = comment;
		this.isApproved = isApproved;
		this.isLockedOut = isLockedOut;
		this.creationDate = creationDate.ToUniversalTime();
		this.lastLoginDate = lastLoginDate.ToUniversalTime();
		this.lastActivityDate = lastActivityDate.ToUniversalTime();
		this.lastPasswordChangedDate = lastPasswordChangedDate.ToUniversalTime();
		this.lastLockoutDate = lastLockoutDate.ToUniversalTime();
	}

	private void UpdateSelf(MembershipUser fromUser)
	{
		try
		{
			Comment = fromUser.Comment;
		}
		catch (NotSupportedException)
		{
		}
		try
		{
			creationDate = fromUser.CreationDate;
		}
		catch (NotSupportedException)
		{
		}
		try
		{
			Email = fromUser.Email;
		}
		catch (NotSupportedException)
		{
		}
		try
		{
			IsApproved = fromUser.IsApproved;
		}
		catch (NotSupportedException)
		{
		}
		try
		{
			isLockedOut = fromUser.IsLockedOut;
		}
		catch (NotSupportedException)
		{
		}
		try
		{
			LastActivityDate = fromUser.LastActivityDate;
		}
		catch (NotSupportedException)
		{
		}
		try
		{
			lastLockoutDate = fromUser.LastLockoutDate;
		}
		catch (NotSupportedException)
		{
		}
		try
		{
			LastLoginDate = fromUser.LastLoginDate;
		}
		catch (NotSupportedException)
		{
		}
		try
		{
			lastPasswordChangedDate = fromUser.LastPasswordChangedDate;
		}
		catch (NotSupportedException)
		{
		}
		try
		{
			passwordQuestion = fromUser.PasswordQuestion;
		}
		catch (NotSupportedException)
		{
		}
		try
		{
			providerUserKey = fromUser.ProviderUserKey;
		}
		catch (NotSupportedException)
		{
		}
	}

	internal void UpdateUser()
	{
		MembershipUser user = Provider.GetUser(UserName, userIsOnline: false);
		UpdateSelf(user);
	}

	public virtual bool ChangePassword(string oldPassword, string newPassword)
	{
		bool result = Provider.ChangePassword(UserName, oldPassword, newPassword);
		UpdateUser();
		return result;
	}

	public virtual bool ChangePasswordQuestionAndAnswer(string password, string newPasswordQuestion, string newPasswordAnswer)
	{
		bool result = Provider.ChangePasswordQuestionAndAnswer(UserName, password, newPasswordQuestion, newPasswordAnswer);
		UpdateUser();
		return result;
	}

	public virtual string GetPassword()
	{
		return GetPassword(null);
	}

	public virtual string GetPassword(string passwordAnswer)
	{
		return Provider.GetPassword(UserName, passwordAnswer);
	}

	public virtual string ResetPassword()
	{
		return ResetPassword(null);
	}

	public virtual string ResetPassword(string passwordAnswer)
	{
		string result = Provider.ResetPassword(UserName, passwordAnswer);
		UpdateUser();
		return result;
	}

	public override string ToString()
	{
		return UserName;
	}

	public virtual bool UnlockUser()
	{
		bool result = Provider.UnlockUser(UserName);
		UpdateUser();
		return result;
	}
}
