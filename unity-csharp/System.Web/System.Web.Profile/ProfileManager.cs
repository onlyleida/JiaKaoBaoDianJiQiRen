using System.Configuration;
using System.Web.Configuration;
using Unity;

namespace System.Web.Profile;

public static class ProfileManager
{
	private static ProfileSection config;

	private static ProfileProviderCollection providersCollection;

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

	public static bool AutomaticSaveEnabled => config.AutomaticSaveEnabled;

	public static bool Enabled => config.Enabled;

	[MonoTODO("check AspNetHostingPermissionLevel")]
	public static ProfileProvider Provider => Providers[config.DefaultProvider] ?? throw new ConfigurationErrorsException("Provider '" + config.DefaultProvider + "' was not found");

	public static ProfileProviderCollection Providers
	{
		get
		{
			CheckEnabled();
			if (providersCollection == null)
			{
				ProfileProviderCollection providers = new ProfileProviderCollection();
				ProvidersHelper.InstantiateProviders(config.Providers, providers, typeof(ProfileProvider));
				providersCollection = providers;
			}
			return providersCollection;
		}
	}

	static ProfileManager()
	{
		config = (ProfileSection)WebConfigurationManager.GetSection("system.web/profile");
	}

	public static int DeleteInactiveProfiles(ProfileAuthenticationOption authenticationOption, DateTime userInactiveSinceDate)
	{
		return Provider.DeleteInactiveProfiles(authenticationOption, userInactiveSinceDate);
	}

	public static bool DeleteProfile(string username)
	{
		return Provider.DeleteProfiles(new string[1] { username }) > 0;
	}

	public static int DeleteProfiles(string[] usernames)
	{
		return Provider.DeleteProfiles(usernames);
	}

	public static int DeleteProfiles(ProfileInfoCollection profiles)
	{
		return Provider.DeleteProfiles(profiles);
	}

	public static ProfileInfoCollection FindInactiveProfilesByUserName(ProfileAuthenticationOption authenticationOption, string usernameToMatch, DateTime userInactiveSinceDate)
	{
		int totalRecords = 0;
		return Provider.FindInactiveProfilesByUserName(authenticationOption, usernameToMatch, userInactiveSinceDate, 0, int.MaxValue, out totalRecords);
	}

	public static ProfileInfoCollection FindInactiveProfilesByUserName(ProfileAuthenticationOption authenticationOption, string usernameToMatch, DateTime userInactiveSinceDate, int pageIndex, int pageSize, out int totalRecords)
	{
		return Provider.FindInactiveProfilesByUserName(authenticationOption, usernameToMatch, userInactiveSinceDate, pageIndex, pageSize, out totalRecords);
	}

	public static ProfileInfoCollection FindProfilesByUserName(ProfileAuthenticationOption authenticationOption, string usernameToMatch)
	{
		int totalRecords = 0;
		return Provider.FindProfilesByUserName(authenticationOption, usernameToMatch, 0, int.MaxValue, out totalRecords);
	}

	public static ProfileInfoCollection FindProfilesByUserName(ProfileAuthenticationOption authenticationOption, string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
	{
		return Provider.FindProfilesByUserName(authenticationOption, usernameToMatch, pageIndex, pageSize, out totalRecords);
	}

	public static ProfileInfoCollection GetAllInactiveProfiles(ProfileAuthenticationOption authenticationOption, DateTime userInactiveSinceDate)
	{
		int totalRecords = 0;
		return Provider.GetAllInactiveProfiles(authenticationOption, userInactiveSinceDate, 0, int.MaxValue, out totalRecords);
	}

	public static ProfileInfoCollection GetAllInactiveProfiles(ProfileAuthenticationOption authenticationOption, DateTime userInactiveSinceDate, int pageIndex, int pageSize, out int totalRecords)
	{
		return Provider.GetAllInactiveProfiles(authenticationOption, userInactiveSinceDate, pageIndex, pageSize, out totalRecords);
	}

	public static ProfileInfoCollection GetAllProfiles(ProfileAuthenticationOption authenticationOption)
	{
		int totalRecords = 0;
		return Provider.GetAllProfiles(authenticationOption, 0, int.MaxValue, out totalRecords);
	}

	public static ProfileInfoCollection GetAllProfiles(ProfileAuthenticationOption authenticationOption, int pageIndex, int pageSize, out int totalRecords)
	{
		return Provider.GetAllProfiles(authenticationOption, pageIndex, pageSize, out totalRecords);
	}

	public static int GetNumberOfInactiveProfiles(ProfileAuthenticationOption authenticationOption, DateTime userInactiveSinceDate)
	{
		return Provider.GetNumberOfInactiveProfiles(authenticationOption, userInactiveSinceDate);
	}

	public static int GetNumberOfProfiles(ProfileAuthenticationOption authenticationOption)
	{
		int totalRecords = 0;
		Provider.GetAllProfiles(authenticationOption, 0, 1, out totalRecords);
		return totalRecords;
	}

	private static void CheckEnabled()
	{
		if (!Enabled)
		{
			throw new Exception("This feature is not enabled.  To enable it, add <profile enabled=\"true\"> to your configuration file.");
		}
	}

	public static void AddDynamicProfileProperty(ProfilePropertySettings property)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
