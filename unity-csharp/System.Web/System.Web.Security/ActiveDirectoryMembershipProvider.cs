using System.Collections.Specialized;

namespace System.Web.Security;

[MonoTODO("that's only a stub")]
public class ActiveDirectoryMembershipProvider : MembershipProvider
{
	[MonoTODO("Not implemented")]
	public override string ApplicationName
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public ActiveDirectoryConnectionProtection CurrentConnectionProtection
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public override bool EnablePasswordReset
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public override bool EnablePasswordRetrieval
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public bool EnableSearchMethods
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public override MembershipPasswordFormat PasswordFormat
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public override bool RequiresQuestionAndAnswer
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public override bool RequiresUniqueEmail
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public override int MaxInvalidPasswordAttempts
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public override int MinRequiredNonAlphanumericCharacters
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public override int MinRequiredPasswordLength
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public override int PasswordAttemptWindow
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public int PasswordAnswerAttemptLockoutDuration
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public override string PasswordStrengthRegularExpression
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public override bool ChangePassword(string username, string oldPassword, string newPassword)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override bool ChangePasswordQuestionAndAnswer(string username, string password, string newPasswordQuestion, string newPasswordAnswer)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, object providerUserKey, out MembershipCreateStatus status)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override bool DeleteUser(string username, bool deleteAllRelatedData)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public virtual string GeneratePassword()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override int GetNumberOfUsersOnline()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override string GetPassword(string username, string passwordAnswer)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override MembershipUser GetUser(string username, bool userIsOnline)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override MembershipUser GetUser(object providerUserKey, bool userIsOnline)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override string GetUserNameByEmail(string email)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override void Initialize(string name, NameValueCollection config)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override string ResetPassword(string username, string passwordAnswer)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override void UpdateUser(MembershipUser user)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override bool ValidateUser(string username, string password)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public override bool UnlockUser(string username)
	{
		throw new NotImplementedException();
	}
}
