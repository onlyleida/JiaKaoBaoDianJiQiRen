using System.Collections;
using System.Collections.Specialized;
using System.Configuration;
using System.Configuration.Provider;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace System.Web.Security;

public class SqlRoleProvider : RoleProvider
{
	private string applicationName;

	private bool schemaIsOk;

	private ConnectionStringSettings connectionString;

	private DbProviderFactory factory;

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

	private DbConnection CreateConnection()
	{
		if (!schemaIsOk && !(schemaIsOk = AspNetDBSchemaChecker.CheckMembershipSchemaVersion(factory, connectionString.ConnectionString, "role manager", "1")))
		{
			throw new ProviderException("Incorrect ASP.NET DB Schema Version.");
		}
		DbConnection dbConnection = factory.CreateConnection();
		dbConnection.ConnectionString = connectionString.ConnectionString;
		dbConnection.Open();
		return dbConnection;
	}

	private static void AddParameter(DbCommand command, string parameterName, object parameterValue)
	{
		AddParameter(command, parameterName, ParameterDirection.Input, parameterValue);
	}

	private static DbParameter AddParameter(DbCommand command, string parameterName, ParameterDirection direction, object parameterValue)
	{
		DbParameter dbParameter = command.CreateParameter();
		dbParameter.ParameterName = parameterName;
		dbParameter.Value = parameterValue;
		dbParameter.Direction = direction;
		command.Parameters.Add(dbParameter);
		return dbParameter;
	}

	private static DbParameter AddParameter(DbCommand command, string parameterName, ParameterDirection direction, DbType type, object parameterValue)
	{
		DbParameter dbParameter = command.CreateParameter();
		dbParameter.ParameterName = parameterName;
		dbParameter.Value = parameterValue;
		dbParameter.Direction = direction;
		dbParameter.DbType = type;
		command.Parameters.Add(dbParameter);
		return dbParameter;
	}

	public override void AddUsersToRoles(string[] usernames, string[] roleNames)
	{
		Hashtable hashtable = new Hashtable();
		string[] array = usernames;
		foreach (string text in array)
		{
			if (text == null)
			{
				throw new ArgumentNullException("null element in usernames array");
			}
			if (hashtable.ContainsKey(text))
			{
				throw new ArgumentException("duplicate element in usernames array");
			}
			if (text.Length == 0 || text.Length > 256 || text.IndexOf(',') != -1)
			{
				throw new ArgumentException("element in usernames array in illegal format");
			}
			hashtable.Add(text, text);
		}
		hashtable = new Hashtable();
		array = roleNames;
		foreach (string text2 in array)
		{
			if (text2 == null)
			{
				throw new ArgumentNullException("null element in rolenames array");
			}
			if (hashtable.ContainsKey(text2))
			{
				throw new ArgumentException("duplicate element in rolenames array");
			}
			if (text2.Length == 0 || text2.Length > 256 || text2.IndexOf(',') != -1)
			{
				throw new ArgumentException("element in rolenames array in illegal format");
			}
			hashtable.Add(text2, text2);
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = "dbo.aspnet_UsersInRoles_AddUsersToRoles";
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@RoleNames", string.Join(",", roleNames));
		AddParameter(dbCommand, "@UserNames", string.Join(",", usernames));
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@CurrentTimeUtc", DateTime.UtcNow);
		DbParameter dbParameter = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
		dbCommand.ExecuteNonQuery();
		switch ((int)dbParameter.Value)
		{
		case 0:
			break;
		case 2:
			throw new ProviderException("One or more of the specified user/role names was not found.");
		case 3:
			throw new ProviderException("One or more of the specified user names is already associated with one or more of the specified role names.");
		default:
			throw new ProviderException("Failed to create new user/role association.");
		}
	}

	public override void CreateRole(string roleName)
	{
		if (roleName == null)
		{
			throw new ArgumentNullException("roleName");
		}
		if (roleName.Length == 0 || roleName.Length > 256 || roleName.IndexOf(',') != -1)
		{
			throw new ArgumentException("rolename is in invalid format");
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = "dbo.aspnet_Roles_CreateRole";
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@RoleName", roleName);
		DbParameter dbParameter = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
		dbCommand.ExecuteNonQuery();
		if ((int)dbParameter.Value == 1)
		{
			throw new ProviderException(roleName + " already exists in the database");
		}
	}

	public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
	{
		if (roleName == null)
		{
			throw new ArgumentNullException("roleName");
		}
		if (roleName.Length == 0 || roleName.Length > 256 || roleName.IndexOf(',') != -1)
		{
			throw new ArgumentException("rolename is in invalid format");
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = "dbo.aspnet_Roles_DeleteRole";
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@RoleName", roleName);
		AddParameter(dbCommand, "@DeleteOnlyIfRoleIsEmpty", throwOnPopulatedRole);
		DbParameter dbParameter = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
		dbCommand.ExecuteNonQuery();
		int num = (int)dbParameter.Value;
		switch (num)
		{
		case 0:
			return true;
		case 1:
			return false;
		default:
			if ((num == 2) & throwOnPopulatedRole)
			{
				throw new ProviderException(roleName + " is not empty");
			}
			return false;
		}
	}

	public override string[] FindUsersInRole(string roleName, string usernameToMatch)
	{
		if (roleName == null)
		{
			throw new ArgumentNullException("roleName");
		}
		if (usernameToMatch == null)
		{
			throw new ArgumentNullException("usernameToMatch");
		}
		if (roleName.Length == 0 || roleName.Length > 256 || roleName.IndexOf(',') != -1)
		{
			throw new ArgumentException("roleName is in invalid format");
		}
		if (usernameToMatch.Length == 0 || usernameToMatch.Length > 256)
		{
			throw new ArgumentException("usernameToMatch is in invalid format");
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandText = "dbo.aspnet_UsersInRoles_FindUsersInRole";
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@RoleName", roleName);
		AddParameter(dbCommand, "@UsernameToMatch", usernameToMatch);
		DbDataReader dbDataReader = dbCommand.ExecuteReader();
		ArrayList arrayList = new ArrayList();
		while (dbDataReader.Read())
		{
			arrayList.Add(dbDataReader.GetString(0));
		}
		dbDataReader.Close();
		return (string[])arrayList.ToArray(typeof(string));
	}

	public override string[] GetAllRoles()
	{
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = "dbo.aspnet_Roles_GetAllRoles";
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		DbDataReader dbDataReader = dbCommand.ExecuteReader();
		ArrayList arrayList = new ArrayList();
		while (dbDataReader.Read())
		{
			arrayList.Add(dbDataReader.GetString(0));
		}
		dbDataReader.Close();
		return (string[])arrayList.ToArray(typeof(string));
	}

	public override string[] GetRolesForUser(string username)
	{
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = "dbo.aspnet_UsersInRoles_GetRolesForUser";
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@UserName", username);
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		DbDataReader dbDataReader = dbCommand.ExecuteReader();
		ArrayList arrayList = new ArrayList();
		while (dbDataReader.Read())
		{
			arrayList.Add(dbDataReader.GetString(0));
		}
		dbDataReader.Close();
		return (string[])arrayList.ToArray(typeof(string));
	}

	public override string[] GetUsersInRole(string roleName)
	{
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = "dbo.aspnet_UsersInRoles_GetUsersInRoles";
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@RoleName", roleName);
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		DbDataReader dbDataReader = dbCommand.ExecuteReader();
		ArrayList arrayList = new ArrayList();
		while (dbDataReader.Read())
		{
			arrayList.Add(dbDataReader.GetString(0));
		}
		dbDataReader.Close();
		return (string[])arrayList.ToArray(typeof(string));
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

	public override void Initialize(string name, NameValueCollection config)
	{
		if (config == null)
		{
			throw new ArgumentNullException("config");
		}
		base.Initialize(name, config);
		applicationName = GetStringConfigValue(config, "applicationName", "/");
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
		if (connectionString == null)
		{
			throw new ProviderException($"The connection name '{text}' was not found in the applications configuration or the connection string is empty.");
		}
		factory = (string.IsNullOrEmpty(connectionString.ProviderName) ? SqlClientFactory.Instance : ProvidersHelper.GetDbProviderFactory(connectionString.ProviderName));
	}

	public override bool IsUserInRole(string username, string roleName)
	{
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = "dbo.aspnet_UsersInRoles_IsUserInRole";
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@RoleName", roleName);
		AddParameter(dbCommand, "@UserName", username);
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		DbParameter dbParameter = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
		dbCommand.ExecuteNonQuery();
		if ((int)dbParameter.Value == 1)
		{
			return true;
		}
		return false;
	}

	public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
	{
		Hashtable hashtable = new Hashtable();
		string[] array = usernames;
		foreach (string text in array)
		{
			if (text == null)
			{
				throw new ArgumentNullException("null element in usernames array");
			}
			if (hashtable.ContainsKey(text))
			{
				throw new ArgumentException("duplicate element in usernames array");
			}
			if (text.Length == 0 || text.Length > 256 || text.IndexOf(',') != -1)
			{
				throw new ArgumentException("element in usernames array in illegal format");
			}
			hashtable.Add(text, text);
		}
		hashtable = new Hashtable();
		array = roleNames;
		foreach (string text2 in array)
		{
			if (text2 == null)
			{
				throw new ArgumentNullException("null element in rolenames array");
			}
			if (hashtable.ContainsKey(text2))
			{
				throw new ArgumentException("duplicate element in rolenames array");
			}
			if (text2.Length == 0 || text2.Length > 256 || text2.IndexOf(',') != -1)
			{
				throw new ArgumentException("element in rolenames array in illegal format");
			}
			hashtable.Add(text2, text2);
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = "dbo.aspnet_UsersInRoles_RemoveUsersFromRoles";
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@UserNames", string.Join(",", usernames));
		AddParameter(dbCommand, "@RoleNames", string.Join(",", roleNames));
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		DbParameter dbParameter = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
		dbCommand.ExecuteNonQuery();
		switch ((int)dbParameter.Value)
		{
		case 0:
			break;
		case 1:
			throw new ProviderException("One or more of the specified user names was not found.");
		case 2:
			throw new ProviderException("One or more of the specified role names was not found.");
		case 3:
			throw new ProviderException("One or more of the specified user names is not associated with one or more of the specified role names.");
		default:
			throw new ProviderException("Failed to remove users from roles");
		}
	}

	public override bool RoleExists(string roleName)
	{
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = "dbo.aspnet_Roles_RoleExists";
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		AddParameter(dbCommand, "@ApplicationName", ApplicationName);
		AddParameter(dbCommand, "@RoleName", roleName);
		DbParameter dbParameter = AddParameter(dbCommand, "@ReturnVal", ParameterDirection.ReturnValue, DbType.Int32, null);
		dbCommand.ExecuteNonQuery();
		if ((int)dbParameter.Value == 1)
		{
			return true;
		}
		return false;
	}
}
