using System.ComponentModel;
using System.Configuration.Provider;
using System.Runtime.CompilerServices;
using System.Web.Configuration;

namespace System.Web.Security;

[TypeForwardedFrom("System.Web, Version=2.0.0.0, Culture=Neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public abstract class MembershipProvider : ProviderBase
{
	private const string HELPER_TYPE_NAME = "System.Web.Security.MembershipHelper, System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a";

	private static IMembershipHelper helper;

	private static readonly object validatingPasswordEvent;

	private EventHandlerList events = new EventHandlerList();

	internal static IMembershipHelper Helper => helper;

	public abstract string ApplicationName { get; set; }

	public abstract bool EnablePasswordReset { get; }

	public abstract bool EnablePasswordRetrieval { get; }

	public abstract bool RequiresQuestionAndAnswer { get; }

	public abstract int MaxInvalidPasswordAttempts { get; }

	public abstract int MinRequiredNonAlphanumericCharacters { get; }

	public abstract int MinRequiredPasswordLength { get; }

	public abstract int PasswordAttemptWindow { get; }

	public abstract MembershipPasswordFormat PasswordFormat { get; }

	public abstract string PasswordStrengthRegularExpression { get; }

	public abstract bool RequiresUniqueEmail { get; }

	public event MembershipValidatePasswordEventHandler ValidatingPassword
	{
		add
		{
			events.AddHandler(validatingPasswordEvent, value);
		}
		remove
		{
			events.RemoveHandler(validatingPasswordEvent, value);
		}
	}

	static MembershipProvider()
	{
		validatingPasswordEvent = new object();
		Type type = Type.GetType("System.Web.Security.MembershipHelper, System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", throwOnError: false);
		if (type == null)
		{
			return;
		}
		try
		{
			helper = Activator.CreateInstance(type) as IMembershipHelper;
		}
		catch
		{
		}
	}

	public abstract bool ChangePassword(string username, string oldPassword, string newPassword);

	public abstract bool ChangePasswordQuestionAndAnswer(string username, string password, string newPasswordQuestion, string newPasswordAnswer);

	public abstract MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, object providerUserKey, out MembershipCreateStatus status);

	public abstract bool DeleteUser(string username, bool deleteAllRelatedData);

	public abstract MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords);

	public abstract MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords);

	public abstract MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords);

	public abstract int GetNumberOfUsersOnline();

	public abstract string GetPassword(string username, string answer);

	public abstract MembershipUser GetUser(string username, bool userIsOnline);

	public abstract MembershipUser GetUser(object providerUserKey, bool userIsOnline);

	public abstract string GetUserNameByEmail(string email);

	public abstract string ResetPassword(string username, string answer);

	public abstract void UpdateUser(MembershipUser user);

	public abstract bool ValidateUser(string username, string password);

	public abstract bool UnlockUser(string userName);

	protected virtual void OnValidatingPassword(ValidatePasswordEventArgs e)
	{
		if (events[validatingPasswordEvent] is MembershipValidatePasswordEventHandler membershipValidatePasswordEventHandler)
		{
			membershipValidatePasswordEventHandler(this, e);
		}
	}

	protected virtual byte[] DecryptPassword(byte[] encodedPassword)
	{
		if (helper == null)
		{
			throw new PlatformNotSupportedException("This method is not available.");
		}
		return helper.DecryptPassword(encodedPassword);
	}

	protected virtual byte[] EncryptPassword(byte[] password)
	{
		return EncryptPassword(password, MembershipPasswordCompatibilityMode.Framework20);
	}

	[MonoTODO("Discover what actually is 4.0 password compatibility mode.")]
	protected virtual byte[] EncryptPassword(byte[] password, MembershipPasswordCompatibilityMode legacyPasswordCompatibilityMode)
	{
		if (helper == null)
		{
			throw new PlatformNotSupportedException("This method is not available.");
		}
		if (legacyPasswordCompatibilityMode == MembershipPasswordCompatibilityMode.Framework40)
		{
			throw new PlatformNotSupportedException("Framework 4.0 password encryption mode is not supported at this time.");
		}
		return helper.EncryptPassword(password);
	}
}
