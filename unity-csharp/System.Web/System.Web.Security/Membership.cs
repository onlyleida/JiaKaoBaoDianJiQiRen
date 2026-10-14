using System.Security.Cryptography;
using System.Text;
using System.Web.Configuration;

namespace System.Web.Security;

public static class Membership
{
	private static MembershipProviderCollection providers;

	private static MembershipProvider provider;

	private static int onlineTimeWindow;

	private static string hashAlgorithmType;

	public static string ApplicationName
	{
		get
		{
			return Provider.ApplicationName;
		}
		set
		{
			Provider.ApplicationName = value;
		}
	}

	public static bool EnablePasswordReset => Provider.EnablePasswordReset;

	public static bool EnablePasswordRetrieval => Provider.EnablePasswordRetrieval;

	public static string HashAlgorithmType => hashAlgorithmType;

	public static bool RequiresQuestionAndAnswer => Provider.RequiresQuestionAndAnswer;

	public static int MaxInvalidPasswordAttempts => Provider.MaxInvalidPasswordAttempts;

	public static int MinRequiredNonAlphanumericCharacters => Provider.MinRequiredNonAlphanumericCharacters;

	public static int MinRequiredPasswordLength => Provider.MinRequiredPasswordLength;

	public static int PasswordAttemptWindow => Provider.PasswordAttemptWindow;

	public static string PasswordStrengthRegularExpression => Provider.PasswordStrengthRegularExpression;

	public static MembershipProvider Provider => provider;

	public static MembershipProviderCollection Providers => providers;

	public static int UserIsOnlineTimeWindow => onlineTimeWindow;

	public static event MembershipValidatePasswordEventHandler ValidatingPassword
	{
		add
		{
			Provider.ValidatingPassword += value;
		}
		remove
		{
			Provider.ValidatingPassword -= value;
		}
	}

	static Membership()
	{
		MembershipSection membershipSection = (MembershipSection)WebConfigurationManager.GetSection("system.web/membership");
		providers = new MembershipProviderCollection();
		ProvidersHelper.InstantiateProviders(membershipSection.Providers, providers, typeof(MembershipProvider));
		provider = providers[membershipSection.DefaultProvider];
		onlineTimeWindow = (int)membershipSection.UserIsOnlineTimeWindow.TotalMinutes;
		hashAlgorithmType = membershipSection.HashAlgorithmType;
		if (string.IsNullOrEmpty(hashAlgorithmType))
		{
			MachineKeySection machineKeySection = WebConfigurationManager.GetSection("system.web/machineKey") as MachineKeySection;
			hashAlgorithmType = new MachineKeyValidationConverter().ConvertTo(null, null, machineKeySection.Validation, typeof(string)) as string;
		}
		if (string.IsNullOrEmpty(hashAlgorithmType))
		{
			hashAlgorithmType = "SHA1";
		}
	}

	public static MembershipUser CreateUser(string username, string password)
	{
		return CreateUser(username, password, null);
	}

	public static MembershipUser CreateUser(string username, string password, string email)
	{
		MembershipCreateStatus status;
		return CreateUser(username, password, email, null, null, isApproved: true, out status) ?? throw new MembershipCreateUserException(status);
	}

	public static MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, out MembershipCreateStatus status)
	{
		return CreateUser(username, password, email, passwordQuestion, passwordAnswer, isApproved, null, out status);
	}

	public static MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, object providerUserKey, out MembershipCreateStatus status)
	{
		if (string.IsNullOrEmpty(username))
		{
			status = MembershipCreateStatus.InvalidUserName;
			return null;
		}
		if (string.IsNullOrEmpty(password))
		{
			status = MembershipCreateStatus.InvalidPassword;
			return null;
		}
		return Provider.CreateUser(username, password, email, passwordQuestion, passwordAnswer, isApproved, providerUserKey, out status);
	}

	public static bool DeleteUser(string username)
	{
		return Provider.DeleteUser(username, deleteAllRelatedData: true);
	}

	public static bool DeleteUser(string username, bool deleteAllRelatedData)
	{
		return Provider.DeleteUser(username, deleteAllRelatedData);
	}

	public static string GeneratePassword(int length, int numberOfNonAlphanumericCharacters)
	{
		RandomNumberGenerator randomNumberGenerator = RandomNumberGenerator.Create();
		byte[] array = new byte[length];
		int num = 0;
		randomNumberGenerator.GetBytes(array);
		for (int i = 0; i < length; i++)
		{
			array[i] = (byte)(array[i] % 93 + 33);
			if ((array[i] >= 33 && array[i] <= 47) || (array[i] >= 58 && array[i] <= 64) || (array[i] >= 91 && array[i] <= 96) || (array[i] >= 123 && array[i] <= 126))
			{
				num++;
			}
			if (array[i] == 34 || array[i] == 39)
			{
				array[i]++;
			}
			else if (array[i] == 96)
			{
				array[i]--;
			}
		}
		if (num < numberOfNonAlphanumericCharacters)
		{
			for (int i = 0; i < length; i++)
			{
				if (num == numberOfNonAlphanumericCharacters)
				{
					break;
				}
				if (array[i] >= 48 && array[i] <= 57)
				{
					array[i] = (byte)(array[i] - 48 + 33);
					num++;
				}
				else if (array[i] >= 65 && array[i] <= 90)
				{
					array[i] = (byte)((array[i] - 65) % 13 + 33);
					num++;
				}
				else if (array[i] >= 97 && array[i] <= 122)
				{
					array[i] = (byte)((array[i] - 97) % 13 + 33);
					num++;
				}
				if (array[i] == 34 || array[i] == 39)
				{
					array[i]++;
				}
				else if (array[i] == 96)
				{
					array[i]--;
				}
			}
		}
		return Encoding.ASCII.GetString(array);
	}

	public static MembershipUserCollection GetAllUsers()
	{
		int totalRecords;
		return GetAllUsers(0, int.MaxValue, out totalRecords);
	}

	public static MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
	{
		return Provider.GetAllUsers(pageIndex, pageSize, out totalRecords);
	}

	public static int GetNumberOfUsersOnline()
	{
		return Provider.GetNumberOfUsersOnline();
	}

	public static MembershipUser GetUser()
	{
		return GetUser(HttpContext.Current.User.Identity.Name, userIsOnline: true);
	}

	public static MembershipUser GetUser(bool userIsOnline)
	{
		return GetUser(HttpContext.Current.User.Identity.Name, userIsOnline);
	}

	public static MembershipUser GetUser(string username)
	{
		return GetUser(username, userIsOnline: false);
	}

	public static MembershipUser GetUser(string username, bool userIsOnline)
	{
		return Provider.GetUser(username, userIsOnline);
	}

	public static MembershipUser GetUser(object providerUserKey)
	{
		return GetUser(providerUserKey, userIsOnline: false);
	}

	public static MembershipUser GetUser(object providerUserKey, bool userIsOnline)
	{
		return Provider.GetUser(providerUserKey, userIsOnline);
	}

	public static string GetUserNameByEmail(string emailToMatch)
	{
		return Provider.GetUserNameByEmail(emailToMatch);
	}

	public static void UpdateUser(MembershipUser user)
	{
		Provider.UpdateUser(user);
	}

	public static bool ValidateUser(string username, string password)
	{
		return Provider.ValidateUser(username, password);
	}

	public static MembershipUserCollection FindUsersByEmail(string emailToMatch)
	{
		int totalRecords;
		return Provider.FindUsersByEmail(emailToMatch, 0, int.MaxValue, out totalRecords);
	}

	public static MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
	{
		return Provider.FindUsersByEmail(emailToMatch, pageIndex, pageSize, out totalRecords);
	}

	public static MembershipUserCollection FindUsersByName(string usernameToMatch)
	{
		int totalRecords;
		return Provider.FindUsersByName(usernameToMatch, 0, int.MaxValue, out totalRecords);
	}

	public static MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
	{
		return Provider.FindUsersByName(usernameToMatch, pageIndex, pageSize, out totalRecords);
	}
}
