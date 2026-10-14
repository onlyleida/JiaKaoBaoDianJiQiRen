using System.Collections.Specialized;
using System.Configuration;
using System.Configuration.Provider;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web.Configuration;

namespace System.Web.Security;

public class SqlMembershipProvider : MembershipProvider
{
	[Flags]
	private enum DeleteUserTableMask
	{
		MembershipUsers = 1,
		UsersInRoles = 2,
		Profiles = 4,
		WebPartStateUser = 8
	}

	private sealed class PasswordInfo
	{
		private string _password;

		private MembershipPasswordFormat _passwordFormat;

		private string _passwordSalt;

		private int _failedPasswordAttemptCount;

		private int _failedPasswordAnswerAttemptCount;

		private bool _isApproved;

		private DateTime _lastLoginDate;

		private DateTime _lastActivityDate;

		public string Password
		{
			get
			{
				return _password;
			}
			set
			{
				_password = value;
			}
		}

		public MembershipPasswordFormat PasswordFormat
		{
			get
			{
				return _passwordFormat;
			}
			set
			{
				_passwordFormat = value;
			}
		}

		public string PasswordSalt
		{
			get
			{
				return _passwordSalt;
			}
			set
			{
				_passwordSalt = value;
			}
		}

		public int FailedPasswordAttemptCount
		{
			get
			{
				return _failedPasswordAttemptCount;
			}
			set
			{
				_failedPasswordAttemptCount = value;
			}
		}

		public int FailedPasswordAnswerAttemptCount
		{
			get
			{
				return _failedPasswordAnswerAttemptCount;
			}
			set
			{
				_failedPasswordAnswerAttemptCount = value;
			}
		}

		public bool IsApproved
		{
			get
			{
				return _isApproved;
			}
			set
			{
				_isApproved = value;
			}
		}

		public DateTime LastLoginDate
		{
			get
			{
				return _lastLoginDate;
			}
			set
			{
				_lastLoginDate = value;
			}
		}

		public DateTime LastActivityDate
		{
			get
			{
				return _lastActivityDate;
			}
			set
			{
				_lastActivityDate = value;
			}
		}

		internal PasswordInfo(string password, MembershipPasswordFormat passwordFormat, string passwordSalt, int failedPasswordAttemptCount, int failedPasswordAnswerAttemptCount, bool isApproved, DateTime lastLoginDate, DateTime lastActivityDate)
		{
			_password = password;
			_passwordFormat = passwordFormat;
			_passwordSalt = passwordSalt;
			_failedPasswordAttemptCount = failedPasswordAttemptCount;
			_failedPasswordAnswerAttemptCount = failedPasswordAnswerAttemptCount;
			_isApproved = isApproved;
			_lastLoginDate = lastLoginDate;
			_lastActivityDate = lastActivityDate;
		}
	}

	private bool enablePasswordReset;

	private bool enablePasswordRetrieval;

	private int maxInvalidPasswordAttempts;

	private MembershipPasswordFormat passwordFormat;

	private bool requiresQuestionAndAnswer;

	private bool requiresUniqueEmail;

	private int minRequiredNonAlphanumericCharacters;

	private int minRequiredPasswordLength;

	private int passwordAttemptWindow;

	private string passwordStrengthRegularExpression;

	private TimeSpan userIsOnlineTimeWindow;

	private ConnectionStringSettings connectionString;

	private DbProviderFactory factory;

	private string applicationName;

	private bool schemaIsOk;

	public override string ApplicationName
	{
		get
		{
			return applicationName;
		}
		set
		{
			applicationName = value;
		}
	}

	public override bool EnablePasswordReset => enablePasswordReset;

	public override bool EnablePasswordRetrieval => enablePasswordRetrieval;

	public override MembershipPasswordFormat PasswordFormat => passwordFormat;

	public override bool RequiresQuestionAndAnswer => requiresQuestionAndAnswer;

	public override bool RequiresUniqueEmail => requiresUniqueEmail;

	public override int MaxInvalidPasswordAttempts => maxInvalidPasswordAttempts;

	public override int MinRequiredNonAlphanumericCharacters => minRequiredNonAlphanumericCharacters;

	public override int MinRequiredPasswordLength => minRequiredPasswordLength;

	public override int PasswordAttemptWindow => passwordAttemptWindow;

	public override string PasswordStrengthRegularExpression => passwordStrengthRegularExpression;

	private DbConnection CreateConnection()
	{
		if (!schemaIsOk && !(schemaIsOk = AspNetDBSchemaChecker.CheckMembershipSchemaVersion(factory, connectionString.ConnectionString, "membership", "1")))
		{
			throw new ProviderException("Incorrect ASP.NET DB Schema Version.");
		}
		if (connectionString == null)
		{
			throw new ProviderException("Connection string for the SQL Membership Provider has not been provided.");
		}
		try
		{
			DbConnection dbConnection = factory.CreateConnection();
			dbConnection.ConnectionString = connectionString.ConnectionString;
			dbConnection.Open();
			return dbConnection;
		}
		catch (Exception innerException)
		{
			throw new ProviderException("Unable to open SQL connection for the SQL Membership Provider.", innerException);
		}
	}

	private DbParameter AddParameter(DbCommand command, string parameterName, object parameterValue)
	{
		return AddParameter(command, parameterName, ParameterDirection.Input, parameterValue);
	}

	private DbParameter AddParameter(DbCommand command, string parameterName, ParameterDirection direction, object parameterValue)
	{
		DbParameter dbParameter = command.CreateParameter();
		dbParameter.ParameterName = parameterName;
		dbParameter.Value = parameterValue;
		dbParameter.Direction = direction;
		command.Parameters.Add(dbParameter);
		return dbParameter;
	}

	private DbParameter AddParameter(DbCommand command, string parameterName, ParameterDirection direction, DbType type, object parameterValue)
	{
		DbParameter dbParameter = command.CreateParameter();
		dbParameter.ParameterName = parameterName;
		dbParameter.Value = parameterValue;
		dbParameter.Direction = direction;
		dbParameter.DbType = type;
		command.Parameters.Add(dbParameter);
		return dbParameter;
	}

	private static int GetReturnValue(DbParameter returnValue)
	{
		object value = returnValue.Value;
		if (!(value is int))
		{
			return -1;
		}
		return (int)value;
	}

	private void CheckParam(string pName, string p, int length)
	{
		if (p == null)
		{
			throw new ArgumentNullException(pName);
		}
		if (p.Length == 0 || p.Length > length || p.IndexOf(',') != -1)
		{
			throw new ArgumentException($"invalid format for {pName}");
		}
	}

	public override bool ChangePassword(string username, string oldPassword, string newPassword)
	{
		if (username != null)
		{
			username = username.Trim();
		}
		if (oldPassword != null)
		{
			oldPassword = oldPassword.Trim();
		}
		if (newPassword != null)
		{
			newPassword = newPassword.Trim();
		}
		CheckParam("username", username, 256);
		CheckParam("oldPassword", oldPassword, 128);
		CheckParam("newPassword", newPassword, 128);
		if (!CheckPassword(newPassword))
		{
			throw new ArgumentException($"New Password invalid. New Password length minimum: {MinRequiredPasswordLength}. Non-alphanumeric characters required: {MinRequiredNonAlphanumericCharacters}.");
		}
		using DbConnection connection = CreateConnection();
		PasswordInfo passwordInfo = ValidateUsingPassword(username, oldPassword);
		if (passwordInfo != null)
		{
			EmitValidatingPassword(username, newPassword, isNewUser: false);
			string parameterValue = EncodePassword(newPassword, passwordInfo.PasswordFormat, passwordInfo.PasswordSalt);
			DbCommand dbCommand = factory.CreateCommand();
			dbCommand.Connection = connection;
			dbCommand.CommandText = "aspnet_Membership_SetPassword";
			dbCommand.CommandType = CommandType.StoredProcedure;
			AddParameter(dbCommand, "@ApplicationName", ApplicationName);
			AddParameter(dbCommand, "@UserName", username);
			AddParameter(dbCommand, "@NewPassword", parameterValue);
			AddParameter(dbCommand, "@PasswordFormat", (int)passwordInfo.PasswordFormat);
			AddParameter(dbCommand, "@PasswordSalt", passwordInfo.PasswordSalt);
			AddParameter(dbCommand, "@CurrentTimeUtc", DateTime.UtcNow);
			DbParameter returnValue = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
			dbCommand.ExecuteNonQuery();
			if (GetReturnValue(returnValue) != 0)
			{
				return false;
			}
			return true;
		}
		return false;
	}

	public override bool ChangePasswordQuestionAndAnswer(string username, string password, string newPasswordQuestion, string newPasswordAnswer)
	{
		if (username != null)
		{
			username = username.Trim();
		}
		if (newPasswordQuestion != null)
		{
			newPasswordQuestion = newPasswordQuestion.Trim();
		}
		if (newPasswordAnswer != null)
		{
			newPasswordAnswer = newPasswordAnswer.Trim();
		}
		CheckParam("username", username, 256);
		if (RequiresQuestionAndAnswer)
		{
			CheckParam("newPasswordQuestion", newPasswordQuestion, 128);
		}
		if (RequiresQuestionAndAnswer)
		{
			CheckParam("newPasswordAnswer", newPasswordAnswer, 128);
		}
		using DbConnection connection = CreateConnection();
		PasswordInfo passwordInfo = ValidateUsingPassword(username, password);
		if (passwordInfo != null)
		{
			string parameterValue = EncodePassword(newPasswordAnswer, passwordInfo.PasswordFormat, passwordInfo.PasswordSalt);
			DbCommand dbCommand = factory.CreateCommand();
			dbCommand.Connection = connection;
			dbCommand.CommandType = CommandType.StoredProcedure;
			dbCommand.CommandText = "aspnet_Membership_ChangePasswordQuestionAndAnswer";
			AddParameter(dbCommand, "@ApplicationName", ApplicationName);
			AddParameter(dbCommand, "@UserName", username);
			AddParameter(dbCommand, "@NewPasswordQuestion", newPasswordQuestion);
			AddParameter(dbCommand, "@NewPasswordAnswer", parameterValue);
			DbParameter returnValue = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
			dbCommand.ExecuteNonQuery();
			if (GetReturnValue(returnValue) != 0)
			{
				return false;
			}
			return true;
		}
		return false;
	}

	public override MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, object providerUserKey, out MembershipCreateStatus status)
	{
		if (username != null)
		{
			username = username.Trim();
		}
		if (password != null)
		{
			password = password.Trim();
		}
		if (email != null)
		{
			email = email.Trim();
		}
		if (passwordQuestion != null)
		{
			passwordQuestion = passwordQuestion.Trim();
		}
		if (passwordAnswer != null)
		{
			passwordAnswer = passwordAnswer.Trim();
		}
		if (username == null || username.Length == 0 || username.Length > 256 || username.IndexOf(',') != -1)
		{
			status = MembershipCreateStatus.InvalidUserName;
			return null;
		}
		if (password == null || password.Length == 0 || password.Length > 128)
		{
			status = MembershipCreateStatus.InvalidPassword;
			return null;
		}
		if (!CheckPassword(password))
		{
			status = MembershipCreateStatus.InvalidPassword;
			return null;
		}
		EmitValidatingPassword(username, password, isNewUser: true);
		if (RequiresUniqueEmail && (email == null || email.Length == 0))
		{
			status = MembershipCreateStatus.InvalidEmail;
			return null;
		}
		if (RequiresQuestionAndAnswer && (passwordQuestion == null || passwordQuestion.Length == 0 || passwordQuestion.Length > 256))
		{
			status = MembershipCreateStatus.InvalidQuestion;
			return null;
		}
		if (RequiresQuestionAndAnswer && (passwordAnswer == null || passwordAnswer.Length == 0 || passwordAnswer.Length > 128))
		{
			status = MembershipCreateStatus.InvalidAnswer;
			return null;
		}
		if (providerUserKey != null && !(providerUserKey is Guid))
		{
			status = MembershipCreateStatus.InvalidProviderUserKey;
			return null;
		}
		if (providerUserKey == null)
		{
			providerUserKey = Guid.NewGuid();
		}
		string text = "";
		RandomNumberGenerator randomNumberGenerator = RandomNumberGenerator.Create();
		byte[] array = new byte[16];
		randomNumberGenerator.GetBytes(array);
		text = Convert.ToBase64String(array);
		password = EncodePassword(password, PasswordFormat, text);
		if (RequiresQuestionAndAnswer)
		{
			passwordAnswer = EncodePassword(passwordAnswer, PasswordFormat, text);
		}
		if (password.Length > 128)
		{
			status = MembershipCreateStatus.InvalidPassword;
			return null;
		}
		if (RequiresQuestionAndAnswer && passwordAnswer.Length > 128)
		{
			status = MembershipCreateStatus.InvalidAnswer;
			return null;
		}
		status = MembershipCreateStatus.Success;
		using DbConnection connection = CreateConnection();
		try
		{
			DbCommand dbCommand = factory.CreateCommand();
			dbCommand.Connection = connection;
			dbCommand.CommandText = "aspnet_Membership_CreateUser";
			dbCommand.CommandType = CommandType.StoredProcedure;
			DateTime utcNow = DateTime.UtcNow;
			AddParameter(dbCommand, "@ApplicationName", ApplicationName);
			AddParameter(dbCommand, "@UserName", username);
			AddParameter(dbCommand, "@Password", password);
			AddParameter(dbCommand, "@PasswordSalt", text);
			AddParameter(dbCommand, "@Email", email);
			AddParameter(dbCommand, "@PasswordQuestion", passwordQuestion);
			AddParameter(dbCommand, "@PasswordAnswer", passwordAnswer);
			AddParameter(dbCommand, "@IsApproved", isApproved);
			AddParameter(dbCommand, "@CurrentTimeUtc", utcNow);
			AddParameter(dbCommand, "@CreateDate", utcNow);
			AddParameter(dbCommand, "@UniqueEmail", RequiresUniqueEmail);
			AddParameter(dbCommand, "@PasswordFormat", (int)PasswordFormat);
			AddParameter(dbCommand, "@UserId", ParameterDirection.InputOutput, providerUserKey);
			DbParameter returnValue = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
			dbCommand.ExecuteNonQuery();
			switch (GetReturnValue(returnValue))
			{
			case 0:
				return GetUser(username, userIsOnline: false);
			case 6:
				status = MembershipCreateStatus.DuplicateUserName;
				break;
			case 7:
				status = MembershipCreateStatus.DuplicateEmail;
				break;
			case 10:
				status = MembershipCreateStatus.DuplicateProviderUserKey;
				break;
			default:
				status = MembershipCreateStatus.ProviderError;
				break;
			}
			return null;
		}
		catch (Exception)
		{
			status = MembershipCreateStatus.ProviderError;
			return null;
		}
	}

	private bool CheckPassword(string password)
	{
		if (password.Length < MinRequiredPasswordLength)
		{
			return false;
		}
		if (MinRequiredNonAlphanumericCharacters > 0)
		{
			int num = 0;
			for (int i = 0; i < password.Length; i++)
			{
				if (!char.IsLetterOrDigit(password[i]))
				{
					num++;
				}
			}
			return num >= MinRequiredNonAlphanumericCharacters;
		}
		return true;
	}

	public override bool DeleteUser(string username, bool deleteAllRelatedData)
	{
		CheckParam("username", username, 256);
		DeleteUserTableMask deleteUserTableMask = DeleteUserTableMask.MembershipUsers;
		if (deleteAllRelatedData)
		{
			deleteUserTableMask |= DeleteUserTableMask.UsersInRoles | DeleteUserTableMask.Profiles | DeleteUserTableMask.WebPartStateUser;
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandText = "aspnet_Users_DeleteUser";
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@UserName", username);
		AddParameter(dbCommand, "@TablesToDeleteFrom", (int)deleteUserTableMask);
		AddParameter(dbCommand, "@NumTablesDeletedFrom", ParameterDirection.Output, 0);
		DbParameter returnValue = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
		dbCommand.ExecuteNonQuery();
		if ((int)dbCommand.Parameters["@NumTablesDeletedFrom"].Value == 0)
		{
			return false;
		}
		if (GetReturnValue(returnValue) == 0)
		{
			return true;
		}
		return false;
	}

	public virtual string GeneratePassword()
	{
		return Membership.GeneratePassword(MinRequiredPasswordLength, MinRequiredNonAlphanumericCharacters);
	}

	public override MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
	{
		CheckParam("emailToMatch", emailToMatch, 256);
		if (pageIndex < 0)
		{
			throw new ArgumentException("pageIndex must be >= 0");
		}
		if (pageSize < 0)
		{
			throw new ArgumentException("pageSize must be >= 0");
		}
		if (pageIndex * pageSize + pageSize - 1 > int.MaxValue)
		{
			throw new ArgumentException("pageIndex and pageSize are too large");
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandText = "aspnet_Membership_FindUsersByEmail";
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@PageIndex", pageIndex);
		AddParameter(dbCommand, "@PageSize", pageSize);
		AddParameter(dbCommand, "@EmailToMatch", emailToMatch);
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@ReturnValue", ParameterDirection.ReturnValue, null);
		return BuildMembershipUserCollection(dbCommand, pageIndex, pageSize, out totalRecords);
	}

	public override MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
	{
		CheckParam("usernameToMatch", usernameToMatch, 256);
		if (pageIndex < 0)
		{
			throw new ArgumentException("pageIndex must be >= 0");
		}
		if (pageSize < 0)
		{
			throw new ArgumentException("pageSize must be >= 0");
		}
		if (pageIndex * pageSize + pageSize - 1 > int.MaxValue)
		{
			throw new ArgumentException("pageIndex and pageSize are too large");
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandText = "aspnet_Membership_FindUsersByName";
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@PageIndex", pageIndex);
		AddParameter(dbCommand, "@PageSize", pageSize);
		AddParameter(dbCommand, "@UserNameToMatch", usernameToMatch);
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@ReturnValue", ParameterDirection.ReturnValue, null);
		return BuildMembershipUserCollection(dbCommand, pageIndex, pageSize, out totalRecords);
	}

	public override MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
	{
		if (pageIndex < 0)
		{
			throw new ArgumentException("pageIndex must be >= 0");
		}
		if (pageSize < 0)
		{
			throw new ArgumentException("pageSize must be >= 0");
		}
		if (pageIndex * pageSize + pageSize - 1 > int.MaxValue)
		{
			throw new ArgumentException("pageIndex and pageSize are too large");
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandText = "aspnet_Membership_GetAllUsers";
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@PageIndex", pageIndex);
		AddParameter(dbCommand, "@PageSize", pageSize);
		AddParameter(dbCommand, "@ReturnValue", ParameterDirection.ReturnValue, null);
		return BuildMembershipUserCollection(dbCommand, pageIndex, pageSize, out totalRecords);
	}

	private MembershipUserCollection BuildMembershipUserCollection(DbCommand command, int pageIndex, int pageSize, out int totalRecords)
	{
		DbDataReader dbDataReader = null;
		try
		{
			MembershipUserCollection membershipUserCollection = new MembershipUserCollection();
			dbDataReader = command.ExecuteReader();
			while (dbDataReader.Read())
			{
				membershipUserCollection.Add(GetUserFromReader(dbDataReader, null, null));
			}
			totalRecords = Convert.ToInt32(command.Parameters["@ReturnValue"].Value);
			return membershipUserCollection;
		}
		catch (Exception)
		{
			totalRecords = 0;
			return null;
		}
		finally
		{
			dbDataReader?.Close();
		}
	}

	public override int GetNumberOfUsersOnline()
	{
		using DbConnection connection = CreateConnection();
		DateTime utcNow = DateTime.UtcNow;
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandText = "aspnet_Membership_GetNumberOfUsersOnline";
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@CurrentTimeUtc", utcNow.ToString());
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@MinutesSinceLastInActive", userIsOnlineTimeWindow.Minutes);
		DbParameter returnValue = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
		dbCommand.ExecuteScalar();
		return GetReturnValue(returnValue);
	}

	public override string GetPassword(string username, string passwordAnswer)
	{
		if (!EnablePasswordRetrieval)
		{
			throw new NotSupportedException("this provider has not been configured to allow the retrieval of passwords");
		}
		CheckParam("username", username, 256);
		if (RequiresQuestionAndAnswer)
		{
			CheckParam("passwordAnswer", passwordAnswer, 128);
		}
		PasswordInfo passwordInfo = GetPasswordInfo(username);
		if (passwordInfo == null)
		{
			throw new ProviderException("An error occurred while retrieving the password from the database");
		}
		string parameterValue = EncodePassword(passwordAnswer, passwordInfo.PasswordFormat, passwordInfo.PasswordSalt);
		string text = null;
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandText = "aspnet_Membership_GetPassword";
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@UserName", username);
		AddParameter(dbCommand, "@MaxInvalidPasswordAttempts", MaxInvalidPasswordAttempts);
		AddParameter(dbCommand, "@PasswordAttemptWindow", PasswordAttemptWindow);
		AddParameter(dbCommand, "@CurrentTimeUtc", DateTime.UtcNow);
		AddParameter(dbCommand, "@PasswordAnswer", parameterValue);
		DbParameter returnValue = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
		DbDataReader dbDataReader = dbCommand.ExecuteReader();
		switch (GetReturnValue(returnValue))
		{
		case 3:
			throw new MembershipPasswordException("Password Answer is invalid");
		case 99:
			throw new MembershipPasswordException("The user account is currently locked out");
		default:
			if (dbDataReader.Read())
			{
				text = dbDataReader.GetString(0);
				dbDataReader.Close();
			}
			if (passwordInfo.PasswordFormat == MembershipPasswordFormat.Clear)
			{
				return text;
			}
			if (passwordInfo.PasswordFormat == MembershipPasswordFormat.Encrypted)
			{
				return DecodePassword(text, passwordInfo.PasswordFormat);
			}
			return text;
		}
	}

	private MembershipUser GetUserFromReader(DbDataReader reader, string username, object userId)
	{
		int num = 0;
		if (username == null)
		{
			num = 1;
		}
		if (userId != null)
		{
			username = reader.GetString(8);
		}
		return new MembershipUser(Name, (username == null) ? reader.GetString(0) : username, (userId == null) ? ((object)reader.GetGuid(8 + num)) : userId, reader.IsDBNull(num) ? null : reader.GetString(num), reader.IsDBNull(1 + num) ? null : reader.GetString(1 + num), reader.IsDBNull(2 + num) ? null : reader.GetString(2 + num), reader.GetBoolean(3 + num), reader.GetBoolean(9 + num), reader.GetDateTime(4 + num).ToLocalTime(), reader.GetDateTime(5 + num).ToLocalTime(), reader.GetDateTime(6 + num).ToLocalTime(), reader.GetDateTime(7 + num).ToLocalTime(), reader.GetDateTime(10 + num).ToLocalTime());
	}

	private MembershipUser BuildMembershipUser(DbCommand query, string username, object userId)
	{
		try
		{
			using DbConnection connection = CreateConnection();
			query.Connection = connection;
			using DbDataReader dbDataReader = query.ExecuteReader();
			if (!dbDataReader.Read())
			{
				return null;
			}
			return GetUserFromReader(dbDataReader, username, userId);
		}
		catch (Exception)
		{
			return null;
		}
		finally
		{
			query.Connection = null;
		}
	}

	public override MembershipUser GetUser(string username, bool userIsOnline)
	{
		if (username == null)
		{
			throw new ArgumentNullException("username");
		}
		if (username.Length == 0)
		{
			return null;
		}
		CheckParam("username", username, 256);
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = "aspnet_Membership_GetUserByName";
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@UserName", username);
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@CurrentTimeUtc", DateTime.Now);
		AddParameter(dbCommand, "@UpdateLastActivity", userIsOnline);
		return BuildMembershipUser(dbCommand, username, null);
	}

	public override MembershipUser GetUser(object providerUserKey, bool userIsOnline)
	{
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = "aspnet_Membership_GetUserByUserId";
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@UserId", providerUserKey);
		AddParameter(dbCommand, "@CurrentTimeUtc", DateTime.Now);
		AddParameter(dbCommand, "@UpdateLastActivity", userIsOnline);
		return BuildMembershipUser(dbCommand, string.Empty, providerUserKey);
	}

	public override string GetUserNameByEmail(string email)
	{
		CheckParam("email", email, 256);
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandText = "aspnet_Membership_GetUserByEmail";
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@Email", email);
		DbDataReader dbDataReader = dbCommand.ExecuteReader();
		string result = null;
		if (dbDataReader.Read())
		{
			result = dbDataReader.GetString(0);
		}
		dbDataReader.Close();
		return result;
	}

	private bool GetBoolConfigValue(NameValueCollection config, string name, bool def)
	{
		bool result = def;
		string text = config[name];
		if (text != null)
		{
			try
			{
				result = bool.Parse(text);
			}
			catch (Exception innerException)
			{
				throw new ProviderException($"{name} must be true or false", innerException);
			}
		}
		return result;
	}

	private int GetIntConfigValue(NameValueCollection config, string name, int def)
	{
		int result = def;
		string text = config[name];
		if (text != null)
		{
			try
			{
				result = int.Parse(text);
			}
			catch (Exception innerException)
			{
				throw new ProviderException($"{name} must be an integer", innerException);
			}
		}
		return result;
	}

	private int GetEnumConfigValue(NameValueCollection config, string name, Type enumType, int def)
	{
		int result = def;
		string text = config[name];
		if (text != null)
		{
			try
			{
				result = (int)Enum.Parse(enumType, text);
			}
			catch (Exception innerException)
			{
				throw new ProviderException(string.Format("{0} must be one of the following values: {1}", name, string.Join(",", Enum.GetNames(enumType))), innerException);
			}
		}
		return result;
	}

	private string GetStringConfigValue(NameValueCollection config, string name, string def)
	{
		string result = def;
		string text = config[name];
		if (text != null)
		{
			result = text;
		}
		return result;
	}

	private void EmitValidatingPassword(string username, string password, bool isNewUser)
	{
		ValidatePasswordEventArgs e = new ValidatePasswordEventArgs(username, password, isNewUser);
		OnValidatingPassword(e);
		if (e.Cancel)
		{
			if (e.FailureInformation == null)
			{
				throw new ProviderException("Password validation canceled");
			}
			throw e.FailureInformation;
		}
	}

	public override void Initialize(string name, NameValueCollection config)
	{
		if (config == null)
		{
			throw new ArgumentNullException("config");
		}
		base.Initialize(name, config);
		applicationName = GetStringConfigValue(config, "applicationName", "/");
		enablePasswordReset = GetBoolConfigValue(config, "enablePasswordReset", def: true);
		enablePasswordRetrieval = GetBoolConfigValue(config, "enablePasswordRetrieval", def: false);
		requiresQuestionAndAnswer = GetBoolConfigValue(config, "requiresQuestionAndAnswer", def: true);
		requiresUniqueEmail = GetBoolConfigValue(config, "requiresUniqueEmail", def: false);
		passwordFormat = (MembershipPasswordFormat)GetEnumConfigValue(config, "passwordFormat", typeof(MembershipPasswordFormat), 1);
		maxInvalidPasswordAttempts = GetIntConfigValue(config, "maxInvalidPasswordAttempts", 5);
		minRequiredPasswordLength = GetIntConfigValue(config, "minRequiredPasswordLength", 7);
		minRequiredNonAlphanumericCharacters = GetIntConfigValue(config, "minRequiredNonalphanumericCharacters", 1);
		passwordAttemptWindow = GetIntConfigValue(config, "passwordAttemptWindow", 10);
		passwordStrengthRegularExpression = GetStringConfigValue(config, "passwordStrengthRegularExpression", "");
		MembershipSection membershipSection = (MembershipSection)WebConfigurationManager.GetSection("system.web/membership");
		userIsOnlineTimeWindow = membershipSection.UserIsOnlineTimeWindow;
		if (passwordFormat == MembershipPasswordFormat.Hashed && enablePasswordRetrieval)
		{
			throw new ProviderException("password retrieval cannot be used with hashed passwords");
		}
		string text = config["connectionStringName"];
		if (applicationName.Length > 256)
		{
			throw new ProviderException("The ApplicationName attribute must be 256 characters long or less.");
		}
		if (text == null || text.Length == 0)
		{
			throw new ProviderException("The ConnectionStringName attribute must be present and non-zero length.");
		}
		connectionString = WebConfigurationManager.ConnectionStrings[text];
		factory = ((connectionString == null || string.IsNullOrEmpty(connectionString.ProviderName)) ? SqlClientFactory.Instance : ProvidersHelper.GetDbProviderFactory(connectionString.ProviderName));
	}

	public override string ResetPassword(string username, string passwordAnswer)
	{
		if (!EnablePasswordReset)
		{
			throw new NotSupportedException("this provider has not been configured to allow the resetting of passwords");
		}
		CheckParam("username", username, 256);
		if (RequiresQuestionAndAnswer)
		{
			CheckParam("passwordAnswer", passwordAnswer, 128);
		}
		using DbConnection connection = CreateConnection();
		PasswordInfo passwordInfo = GetPasswordInfo(username);
		if (passwordInfo == null)
		{
			throw new ProviderException(username + "is not found in the membership database");
		}
		string text = GeneratePassword();
		EmitValidatingPassword(username, text, isNewUser: false);
		string parameterValue = EncodePassword(text, passwordInfo.PasswordFormat, passwordInfo.PasswordSalt);
		string parameterValue2 = EncodePassword(passwordAnswer, passwordInfo.PasswordFormat, passwordInfo.PasswordSalt);
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandText = "aspnet_Membership_ResetPassword";
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@UserName", username);
		AddParameter(dbCommand, "@NewPassword", parameterValue);
		AddParameter(dbCommand, "@MaxInvalidPasswordAttempts", MaxInvalidPasswordAttempts);
		AddParameter(dbCommand, "@PasswordAttemptWindow", PasswordAttemptWindow);
		AddParameter(dbCommand, "@PasswordSalt", passwordInfo.PasswordSalt);
		AddParameter(dbCommand, "@CurrentTimeUtc", DateTime.UtcNow);
		AddParameter(dbCommand, "@PasswordFormat", (int)passwordInfo.PasswordFormat);
		AddParameter(dbCommand, "@PasswordAnswer", parameterValue2);
		DbParameter returnValue = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
		dbCommand.ExecuteNonQuery();
		return GetReturnValue(returnValue) switch
		{
			0 => text, 
			3 => throw new MembershipPasswordException("Password Answer is invalid"), 
			99 => throw new MembershipPasswordException("The user account is currently locked out"), 
			_ => throw new ProviderException("Failed to reset password"), 
		};
	}

	public override void UpdateUser(MembershipUser user)
	{
		if (user == null)
		{
			throw new ArgumentNullException("user");
		}
		if (user.UserName == null)
		{
			throw new ArgumentNullException("user.UserName");
		}
		if (RequiresUniqueEmail && user.Email == null)
		{
			throw new ArgumentNullException("user.Email");
		}
		CheckParam("user.UserName", user.UserName, 256);
		if (user.Email.Length > 256 || (RequiresUniqueEmail && user.Email.Length == 0))
		{
			throw new ArgumentException("invalid format for user.Email");
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandText = "aspnet_Membership_UpdateUser";
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@UserName", user.UserName);
		AddParameter(dbCommand, "@Email", (user.Email == null) ? ((IConvertible)DBNull.Value) : ((IConvertible)user.Email));
		AddParameter(dbCommand, "@Comment", (user.Comment == null) ? ((IConvertible)DBNull.Value) : ((IConvertible)user.Comment));
		AddParameter(dbCommand, "@IsApproved", user.IsApproved);
		AddParameter(dbCommand, "@LastLoginDate", DateTime.UtcNow);
		AddParameter(dbCommand, "@LastActivityDate", DateTime.UtcNow);
		AddParameter(dbCommand, "@UniqueEmail", RequiresUniqueEmail);
		AddParameter(dbCommand, "@CurrentTimeUtc", DateTime.UtcNow);
		DbParameter returnValue = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
		dbCommand.ExecuteNonQuery();
		switch (GetReturnValue(returnValue))
		{
		case 1:
			throw new ProviderException("The UserName property of user was not found in the database.");
		case 7:
			throw new ProviderException("The Email property of user was equal to an existing e-mail address in the database and RequiresUniqueEmail is set to true.");
		default:
			throw new ProviderException("Failed to update user");
		case 0:
			break;
		}
	}

	public override bool ValidateUser(string username, string password)
	{
		if (username.Length == 0)
		{
			return false;
		}
		CheckParam("username", username, 256);
		EmitValidatingPassword(username, password, isNewUser: false);
		PasswordInfo passwordInfo = ValidateUsingPassword(username, password);
		if (passwordInfo != null)
		{
			passwordInfo.LastLoginDate = DateTime.UtcNow;
			UpdateUserInfo(username, passwordInfo, isPasswordCorrect: true, updateLoginActivity: true);
			return true;
		}
		return false;
	}

	public override bool UnlockUser(string username)
	{
		CheckParam("username", username, 256);
		using (DbConnection connection = CreateConnection())
		{
			try
			{
				DbCommand dbCommand = factory.CreateCommand();
				dbCommand.Connection = connection;
				dbCommand.CommandText = "aspnet_Membership_UnlockUser";
				dbCommand.CommandType = CommandType.StoredProcedure;
				AddParameter(dbCommand, "@ApplicationName", ApplicationName);
				AddParameter(dbCommand, "@UserName", username);
				DbParameter returnValue = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
				dbCommand.ExecuteNonQuery();
				if (GetReturnValue(returnValue) != 0)
				{
					return false;
				}
			}
			catch (Exception innerException)
			{
				throw new ProviderException("Failed to unlock user", innerException);
			}
		}
		return true;
	}

	private void UpdateUserInfo(string username, PasswordInfo pi, bool isPasswordCorrect, bool updateLoginActivity)
	{
		CheckParam("username", username, 256);
		using DbConnection connection = CreateConnection();
		try
		{
			DbCommand dbCommand = factory.CreateCommand();
			dbCommand.Connection = connection;
			dbCommand.CommandText = "aspnet_Membership_UpdateUserInfo";
			dbCommand.CommandType = CommandType.StoredProcedure;
			AddParameter(dbCommand, "@ApplicationName", ApplicationName);
			AddParameter(dbCommand, "@UserName", username);
			AddParameter(dbCommand, "@IsPasswordCorrect", isPasswordCorrect);
			AddParameter(dbCommand, "@UpdateLastLoginActivityDate", updateLoginActivity);
			AddParameter(dbCommand, "@MaxInvalidPasswordAttempts", MaxInvalidPasswordAttempts);
			AddParameter(dbCommand, "@PasswordAttemptWindow", PasswordAttemptWindow);
			AddParameter(dbCommand, "@CurrentTimeUtc", DateTime.UtcNow);
			AddParameter(dbCommand, "@LastLoginDate", pi.LastLoginDate);
			AddParameter(dbCommand, "@LastActivityDate", pi.LastActivityDate);
			DbParameter returnValue = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
			dbCommand.ExecuteNonQuery();
			GetReturnValue(returnValue);
		}
		catch (Exception innerException)
		{
			throw new ProviderException("Failed to update Membership table", innerException);
		}
	}

	private PasswordInfo ValidateUsingPassword(string username, string password)
	{
		MembershipUser user = GetUser(username, userIsOnline: true);
		if (user == null)
		{
			return null;
		}
		if (!user.IsApproved || user.IsLockedOut)
		{
			return null;
		}
		PasswordInfo passwordInfo = GetPasswordInfo(username);
		if (passwordInfo == null)
		{
			return null;
		}
		if (EncodePassword(password, passwordInfo.PasswordFormat, passwordInfo.PasswordSalt) != passwordInfo.Password)
		{
			UpdateUserInfo(username, passwordInfo, isPasswordCorrect: false, updateLoginActivity: false);
			return null;
		}
		return passwordInfo;
	}

	private PasswordInfo GetPasswordInfo(string username)
	{
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		dbCommand.CommandText = "aspnet_Membership_GetPasswordWithFormat";
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@UserName", username);
		AddParameter(dbCommand, "@UpdateLastLoginActivityDate", false);
		AddParameter(dbCommand, "@CurrentTimeUtc", DateTime.Now);
		AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
		DbDataReader dbDataReader = dbCommand.ExecuteReader();
		if (!dbDataReader.Read())
		{
			return null;
		}
		return new PasswordInfo(dbDataReader.GetString(0), (MembershipPasswordFormat)dbDataReader.GetInt32(1), dbDataReader.GetString(2), dbDataReader.GetInt32(3), dbDataReader.GetInt32(4), dbDataReader.GetBoolean(5), dbDataReader.GetDateTime(6), dbDataReader.GetDateTime(7));
	}

	private string EncodePassword(string password, MembershipPasswordFormat passwordFormat, string salt)
	{
		switch (passwordFormat)
		{
		case MembershipPasswordFormat.Clear:
			return password;
		case MembershipPasswordFormat.Hashed:
		{
			byte[] bytes = Encoding.Unicode.GetBytes(password);
			byte[] array = Convert.FromBase64String(salt);
			byte[] array3 = new byte[array.Length + bytes.Length];
			Buffer.BlockCopy(array, 0, array3, 0, array.Length);
			Buffer.BlockCopy(bytes, 0, array3, array.Length, bytes.Length);
			string text = ((MembershipSection)WebConfigurationManager.GetSection("system.web/membership")).HashAlgorithmType;
			if (text.Length == 0)
			{
				text = MachineKeySection.Config.Validation.ToString();
				if (text.StartsWith("alg:"))
				{
					text = text.Substring(4);
				}
			}
			using HashAlgorithm hashAlgorithm = HashAlgorithm.Create(text);
			if (hashAlgorithm is KeyedHashAlgorithm keyedHashAlgorithm)
			{
				keyedHashAlgorithm.Key = MachineKeySection.Config.GetValidationKey();
			}
			hashAlgorithm.TransformFinalBlock(array3, 0, array3.Length);
			return Convert.ToBase64String(hashAlgorithm.Hash);
		}
		case MembershipPasswordFormat.Encrypted:
		{
			byte[] bytes = Encoding.Unicode.GetBytes(password);
			byte[] array = Convert.FromBase64String(salt);
			byte[] array2 = new byte[bytes.Length + array.Length];
			Array.Copy(array, 0, array2, 0, array.Length);
			Array.Copy(bytes, 0, array2, array.Length, bytes.Length);
			return Convert.ToBase64String(EncryptPassword(array2));
		}
		default:
			return null;
		}
	}

	private string DecodePassword(string password, MembershipPasswordFormat passwordFormat)
	{
		return passwordFormat switch
		{
			MembershipPasswordFormat.Clear => password, 
			MembershipPasswordFormat.Hashed => throw new ProviderException("Hashed passwords cannot be decoded."), 
			MembershipPasswordFormat.Encrypted => Encoding.Unicode.GetString(DecryptPassword(Convert.FromBase64String(password))), 
			_ => null, 
		};
	}
}
