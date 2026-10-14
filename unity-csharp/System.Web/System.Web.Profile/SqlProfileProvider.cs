using System.Collections;
using System.Collections.Specialized;
using System.Configuration;
using System.Configuration.Provider;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.Util;

namespace System.Web.Profile;

public class SqlProfileProvider : ProfileProvider
{
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

	public override int DeleteInactiveProfiles(ProfileAuthenticationOption authenticationOption, DateTime userInactiveSinceDate)
	{
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		dbCommand.CommandText = "aspnet_Profile_DeleteInactiveProfiles";
		AddParameter(dbCommand, "ApplicationName", ApplicationName);
		AddParameter(dbCommand, "ProfileAuthOptions", authenticationOption);
		AddParameter(dbCommand, "InactiveSinceDate", userInactiveSinceDate);
		DbParameter returnValue = AddParameter(dbCommand, null, ParameterDirection.ReturnValue, null);
		dbCommand.ExecuteNonQuery();
		return GetReturnValue(returnValue);
	}

	public override int DeleteProfiles(ProfileInfoCollection profiles)
	{
		if (profiles == null)
		{
			throw new ArgumentNullException("prfoles");
		}
		if (profiles.Count == 0)
		{
			throw new ArgumentException("prfoles");
		}
		string[] array = new string[profiles.Count];
		int num = 0;
		foreach (ProfileInfo profile in profiles)
		{
			if (profile.UserName == null)
			{
				throw new ArgumentNullException("element in profiles collection is null");
			}
			if (profile.UserName.Length == 0 || profile.UserName.Length > 256 || profile.UserName.IndexOf(',') != -1)
			{
				throw new ArgumentException("element in profiles collection in illegal format");
			}
			array[num++] = profile.UserName;
		}
		return DeleteProfilesInternal(array);
	}

	public override int DeleteProfiles(string[] usernames)
	{
		if (usernames == null)
		{
			throw new ArgumentNullException("usernames");
		}
		Hashtable hashtable = new Hashtable();
		foreach (string text in usernames)
		{
			if (text == null)
			{
				throw new ArgumentNullException("element in usernames array is null");
			}
			if (text.Length == 0 || text.Length > 256 || text.IndexOf(',') != -1)
			{
				throw new ArgumentException("element in usernames array in illegal format");
			}
			if (hashtable.ContainsKey(text))
			{
				throw new ArgumentException("duplicate element in usernames array");
			}
			hashtable.Add(text, text);
		}
		return DeleteProfilesInternal(usernames);
	}

	private int DeleteProfilesInternal(string[] usernames)
	{
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		dbCommand.CommandText = "aspnet_Profile_DeleteProfiles";
		AddParameter(dbCommand, "ApplicationName", ApplicationName);
		AddParameter(dbCommand, "UserNames", string.Join(",", usernames));
		DbParameter returnValue = AddParameter(dbCommand, null, ParameterDirection.ReturnValue, null);
		dbCommand.ExecuteNonQuery();
		return GetReturnValue(returnValue);
	}

	public override ProfileInfoCollection FindInactiveProfilesByUserName(ProfileAuthenticationOption authenticationOption, string usernameToMatch, DateTime userInactiveSinceDate, int pageIndex, int pageSize, out int totalRecords)
	{
		CheckParam("usernameToMatch", usernameToMatch, 256);
		if (pageIndex < 0)
		{
			throw new ArgumentException("pageIndex is less than zero");
		}
		if (pageSize < 1)
		{
			throw new ArgumentException("pageIndex is less than one");
		}
		if (pageIndex * pageSize + pageSize - 1 > int.MaxValue)
		{
			throw new ArgumentException("pageIndex and pageSize are too large");
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		dbCommand.CommandText = "aspnet_Profile_GetProfiles";
		AddParameter(dbCommand, "ApplicationName", ApplicationName);
		AddParameter(dbCommand, "ProfileAuthOptions", authenticationOption);
		AddParameter(dbCommand, "PageIndex", pageIndex);
		AddParameter(dbCommand, "PageSize", pageSize);
		AddParameter(dbCommand, "UserNameToMatch", usernameToMatch);
		AddParameter(dbCommand, "InactiveSinceDate", userInactiveSinceDate);
		using DbDataReader reader = dbCommand.ExecuteReader();
		return BuildProfileInfoCollection(reader, out totalRecords);
	}

	public override ProfileInfoCollection FindProfilesByUserName(ProfileAuthenticationOption authenticationOption, string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
	{
		CheckParam("usernameToMatch", usernameToMatch, 256);
		if (pageIndex < 0)
		{
			throw new ArgumentException("pageIndex is less than zero");
		}
		if (pageSize < 1)
		{
			throw new ArgumentException("pageIndex is less than one");
		}
		if (pageIndex * pageSize + pageSize - 1 > int.MaxValue)
		{
			throw new ArgumentException("pageIndex and pageSize are too large");
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		dbCommand.CommandText = "aspnet_Profile_GetProfiles";
		AddParameter(dbCommand, "ApplicationName", ApplicationName);
		AddParameter(dbCommand, "ProfileAuthOptions", authenticationOption);
		AddParameter(dbCommand, "PageIndex", pageIndex);
		AddParameter(dbCommand, "PageSize", pageSize);
		AddParameter(dbCommand, "UserNameToMatch", usernameToMatch);
		AddParameter(dbCommand, "InactiveSinceDate", null);
		using DbDataReader reader = dbCommand.ExecuteReader();
		return BuildProfileInfoCollection(reader, out totalRecords);
	}

	public override ProfileInfoCollection GetAllInactiveProfiles(ProfileAuthenticationOption authenticationOption, DateTime userInactiveSinceDate, int pageIndex, int pageSize, out int totalRecords)
	{
		if (pageIndex < 0)
		{
			throw new ArgumentException("pageIndex is less than zero");
		}
		if (pageSize < 1)
		{
			throw new ArgumentException("pageIndex is less than one");
		}
		if (pageIndex * pageSize + pageSize - 1 > int.MaxValue)
		{
			throw new ArgumentException("pageIndex and pageSize are too large");
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		dbCommand.CommandText = "aspnet_Profile_GetProfiles";
		AddParameter(dbCommand, "ApplicationName", ApplicationName);
		AddParameter(dbCommand, "ProfileAuthOptions", authenticationOption);
		AddParameter(dbCommand, "PageIndex", pageIndex);
		AddParameter(dbCommand, "PageSize", pageSize);
		AddParameter(dbCommand, "UserNameToMatch", null);
		AddParameter(dbCommand, "InactiveSinceDate", null);
		using DbDataReader reader = dbCommand.ExecuteReader();
		return BuildProfileInfoCollection(reader, out totalRecords);
	}

	public override ProfileInfoCollection GetAllProfiles(ProfileAuthenticationOption authenticationOption, int pageIndex, int pageSize, out int totalRecords)
	{
		if (pageIndex < 0)
		{
			throw new ArgumentException("pageIndex is less than zero");
		}
		if (pageSize < 1)
		{
			throw new ArgumentException("pageIndex is less than one");
		}
		if (pageIndex * pageSize + pageSize - 1 > int.MaxValue)
		{
			throw new ArgumentException("pageIndex and pageSize are too large");
		}
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		dbCommand.CommandText = "aspnet_Profile_GetProfiles";
		AddParameter(dbCommand, "ApplicationName", ApplicationName);
		AddParameter(dbCommand, "ProfileAuthOptions", authenticationOption);
		AddParameter(dbCommand, "PageIndex", pageIndex);
		AddParameter(dbCommand, "PageSize", pageSize);
		AddParameter(dbCommand, "UserNameToMatch", null);
		AddParameter(dbCommand, "InactiveSinceDate", null);
		using DbDataReader reader = dbCommand.ExecuteReader();
		return BuildProfileInfoCollection(reader, out totalRecords);
	}

	public override int GetNumberOfInactiveProfiles(ProfileAuthenticationOption authenticationOption, DateTime userInactiveSinceDate)
	{
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		dbCommand.CommandText = "aspnet_Profile_GetNumberOfInactiveProfiles";
		AddParameter(dbCommand, "ApplicationName", ApplicationName);
		AddParameter(dbCommand, "ProfileAuthOptions", authenticationOption);
		AddParameter(dbCommand, "InactiveSinceDate", userInactiveSinceDate);
		int result = 0;
		using (DbDataReader dbDataReader = dbCommand.ExecuteReader())
		{
			if (dbDataReader.Read())
			{
				result = dbDataReader.GetInt32(0);
			}
		}
		return result;
	}

	public override SettingsPropertyValueCollection GetPropertyValues(SettingsContext sc, SettingsPropertyCollection properties)
	{
		SettingsPropertyValueCollection settingsPropertyValueCollection = new SettingsPropertyValueCollection();
		if (properties.Count == 0)
		{
			return settingsPropertyValueCollection;
		}
		foreach (SettingsProperty property in properties)
		{
			if (property.SerializeAs == SettingsSerializeAs.ProviderSpecific)
			{
				if (property.PropertyType.IsPrimitive || property.PropertyType == typeof(string))
				{
					property.SerializeAs = SettingsSerializeAs.String;
				}
				else
				{
					property.SerializeAs = SettingsSerializeAs.Xml;
				}
			}
			settingsPropertyValueCollection.Add(new SettingsPropertyValue(property));
		}
		string parameterValue = (string)sc["UserName"];
		using (DbConnection connection = CreateConnection())
		{
			DbCommand dbCommand = factory.CreateCommand();
			dbCommand.Connection = connection;
			dbCommand.CommandType = CommandType.StoredProcedure;
			dbCommand.CommandText = "aspnet_Profile_GetProperties";
			AddParameter(dbCommand, "ApplicationName", ApplicationName);
			AddParameter(dbCommand, "UserName", parameterValue);
			AddParameter(dbCommand, "CurrentTimeUtc", DateTime.UtcNow);
			using DbDataReader dbDataReader = dbCommand.ExecuteReader();
			if (dbDataReader.Read())
			{
				string allnames = dbDataReader.GetString(0);
				string values = dbDataReader.GetString(1);
				int num = (int)dbDataReader.GetBytes(2, 0L, null, 0, 0);
				byte[] array = new byte[num];
				dbDataReader.GetBytes(2, 0L, array, 0, num);
				DecodeProfileData(allnames, values, array, settingsPropertyValueCollection);
			}
		}
		return settingsPropertyValueCollection;
	}

	public override void SetPropertyValues(SettingsContext sc, SettingsPropertyValueCollection properties)
	{
		string parameterValue = (string)sc["UserName"];
		bool flag = !(bool)sc["IsAuthenticated"];
		string allNames = string.Empty;
		string allValues = string.Empty;
		byte[] buf = null;
		EncodeProfileData(ref allNames, ref allValues, ref buf, properties, !flag);
		using DbConnection connection = CreateConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.Connection = connection;
		dbCommand.CommandType = CommandType.StoredProcedure;
		dbCommand.CommandText = "aspnet_Profile_SetProperties";
		AddParameter(dbCommand, "ApplicationName", ApplicationName);
		AddParameter(dbCommand, "PropertyNames", allNames);
		AddParameter(dbCommand, "PropertyValuesString", allValues);
		AddParameter(dbCommand, "PropertyValuesBinary", buf);
		AddParameter(dbCommand, "UserName", parameterValue);
		AddParameter(dbCommand, "IsUserAnonymous", flag);
		AddParameter(dbCommand, "CurrentTimeUtc", DateTime.UtcNow);
		AddParameter(dbCommand, null, ParameterDirection.ReturnValue, null);
		dbCommand.ExecuteNonQuery();
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
		factory = ((connectionString == null || string.IsNullOrEmpty(connectionString.ProviderName)) ? SqlClientFactory.Instance : ProvidersHelper.GetDbProviderFactory(connectionString.ProviderName));
	}

	private DbConnection CreateConnection()
	{
		if (!schemaIsOk && !(schemaIsOk = AspNetDBSchemaChecker.CheckMembershipSchemaVersion(factory, connectionString.ConnectionString, "profile", "1")))
		{
			throw new ProviderException("Incorrect ASP.NET DB Schema Version.");
		}
		DbConnection dbConnection = factory.CreateConnection();
		dbConnection.ConnectionString = connectionString.ConnectionString;
		dbConnection.Open();
		return dbConnection;
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

	private void CheckParam(string pName, string p, int length)
	{
		if (p == null)
		{
			throw new ArgumentNullException(pName);
		}
		if (p.Length == 0 || p.Length > length || p.IndexOf(',') != -1)
		{
			throw new ArgumentException("invalid format for " + pName);
		}
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

	private ProfileInfo ReadProfileInfo(DbDataReader reader)
	{
		ProfileInfo result = null;
		try
		{
			string username = reader.GetString(0);
			bool boolean = reader.GetBoolean(1);
			DateTime dateTime = reader.GetDateTime(2);
			DateTime dateTime2 = reader.GetDateTime(3);
			int @int = reader.GetInt32(4);
			result = new ProfileInfo(username, boolean, dateTime2, dateTime, @int);
		}
		catch
		{
		}
		return result;
	}

	private ProfileInfoCollection BuildProfileInfoCollection(DbDataReader reader, out int totalRecords)
	{
		ProfileInfoCollection profileInfoCollection = new ProfileInfoCollection();
		while (reader.Read())
		{
			ProfileInfo profileInfo = ReadProfileInfo(reader);
			if (profileInfo != null)
			{
				profileInfoCollection.Add(profileInfo);
			}
		}
		totalRecords = 0;
		if (reader.NextResult() && reader.Read())
		{
			totalRecords = reader.GetInt32(0);
		}
		return profileInfoCollection;
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

	private void DecodeProfileData(string allnames, string values, byte[] buf, SettingsPropertyValueCollection properties)
	{
		if (allnames == null || values == null || buf == null || properties == null)
		{
			return;
		}
		string[] array = allnames.Split(':');
		for (int i = 0; i < array.Length; i += 4)
		{
			string name = array[i];
			SettingsPropertyValue settingsPropertyValue = properties[name];
			if (settingsPropertyValue != null)
			{
				int num = int.Parse(array[i + 2], Helpers.InvariantCulture);
				int num2 = int.Parse(array[i + 3], Helpers.InvariantCulture);
				if (num2 == -1 && !settingsPropertyValue.Property.PropertyType.IsValueType)
				{
					settingsPropertyValue.PropertyValue = null;
					settingsPropertyValue.IsDirty = false;
					settingsPropertyValue.Deserialized = true;
				}
				else if (array[i + 1] == "S" && num >= 0 && num2 > 0 && values.Length >= num + num2)
				{
					settingsPropertyValue.SerializedValue = values.Substring(num, num2);
				}
				else if (array[i + 1] == "B" && num >= 0 && num2 > 0 && buf.Length >= num + num2)
				{
					byte[] array2 = new byte[num2];
					Buffer.BlockCopy(buf, num, array2, 0, num2);
					settingsPropertyValue.SerializedValue = array2;
				}
			}
		}
	}

	private void EncodeProfileData(ref string allNames, ref string allValues, ref byte[] buf, SettingsPropertyValueCollection properties, bool userIsAuthenticated)
	{
		StringBuilder stringBuilder = new StringBuilder();
		StringBuilder stringBuilder2 = new StringBuilder();
		MemoryStream memoryStream = new MemoryStream();
		try
		{
			foreach (SettingsPropertyValue property in properties)
			{
				if ((!userIsAuthenticated && !(bool)property.Property.Attributes["AllowAnonymous"]) || (!property.IsDirty && property.UsingDefaultValue))
				{
					continue;
				}
				int num = 0;
				int num2 = 0;
				string text = null;
				if (property.Deserialized && property.PropertyValue == null)
				{
					num = -1;
				}
				else
				{
					object serializedValue = property.SerializedValue;
					if (serializedValue == null)
					{
						num = -1;
					}
					else if (serializedValue is string)
					{
						text = (string)serializedValue;
						num = text.Length;
						num2 = stringBuilder2.Length;
					}
					else
					{
						byte[] array = (byte[])serializedValue;
						num2 = (int)memoryStream.Position;
						memoryStream.Write(array, 0, array.Length);
						memoryStream.Position = num2 + array.Length;
						num = array.Length;
					}
				}
				stringBuilder.Append(property.Name + ":" + ((text != null) ? "S" : "B") + ":" + num2.ToString(Helpers.InvariantCulture) + ":" + num.ToString(Helpers.InvariantCulture) + ":");
				if (text != null)
				{
					stringBuilder2.Append(text);
				}
			}
			buf = memoryStream.ToArray();
		}
		finally
		{
			memoryStream?.Close();
		}
		allNames = stringBuilder.ToString();
		allValues = stringBuilder2.ToString();
	}
}
