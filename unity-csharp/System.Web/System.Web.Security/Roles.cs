using System.Configuration;
using System.Configuration.Provider;
using System.Threading;
using System.Web.Configuration;

namespace System.Web.Security;

public static class Roles
{
	private static RoleManagerSection config;

	private static RoleProviderCollection providersCollection;

	private static string CurrentUser
	{
		get
		{
			if (HttpContext.Current != null && HttpContext.Current.User != null)
			{
				return HttpContext.Current.User.Identity.Name;
			}
			return Thread.CurrentPrincipal.Identity.Name;
		}
	}

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

	public static bool CacheRolesInCookie => config.CacheRolesInCookie;

	public static string CookieName => config.CookieName;

	public static string CookiePath => config.CookiePath;

	public static CookieProtection CookieProtectionValue => config.CookieProtection;

	public static bool CookieRequireSSL => config.CookieRequireSSL;

	public static bool CookieSlidingExpiration => config.CookieSlidingExpiration;

	public static int CookieTimeout => (int)config.CookieTimeout.TotalMinutes;

	public static bool CreatePersistentCookie => config.CreatePersistentCookie;

	public static string Domain => config.Domain;

	public static bool Enabled
	{
		get
		{
			return config.Enabled;
		}
		set
		{
			config.Enabled = value;
		}
	}

	public static int MaxCachedResults => config.MaxCachedResults;

	public static RoleProvider Provider => Providers[config.DefaultProvider] ?? throw new ConfigurationErrorsException("Default Role Provider could not be found: Cannot instantiate provider: '" + config.DefaultProvider + "'.");

	public static RoleProviderCollection Providers
	{
		get
		{
			CheckEnabled();
			if (providersCollection == null)
			{
				RoleProviderCollection providers = new RoleProviderCollection();
				ProvidersHelper.InstantiateProviders(config.Providers, providers, typeof(RoleProvider));
				providersCollection = providers;
			}
			return providersCollection;
		}
	}

	static Roles()
	{
		config = (RoleManagerSection)WebConfigurationManager.GetSection("system.web/roleManager");
	}

	public static void AddUsersToRole(string[] usernames, string roleName)
	{
		Provider.AddUsersToRoles(usernames, new string[1] { roleName });
	}

	public static void AddUsersToRoles(string[] usernames, string[] roleNames)
	{
		Provider.AddUsersToRoles(usernames, roleNames);
	}

	public static void AddUserToRole(string username, string roleName)
	{
		Provider.AddUsersToRoles(new string[1] { username }, new string[1] { roleName });
	}

	public static void AddUserToRoles(string username, string[] roleNames)
	{
		Provider.AddUsersToRoles(new string[1] { username }, roleNames);
	}

	public static void CreateRole(string roleName)
	{
		Provider.CreateRole(roleName);
	}

	public static void DeleteCookie()
	{
		if (CacheRolesInCookie)
		{
			HttpCookieCollection cookies = ((HttpContext.Current ?? throw new HttpException("Context is null.")).Response ?? throw new HttpException("Response is null.")).Cookies;
			cookies.Remove(CookieName);
			cookies.Add(new HttpCookie(CookieName, "")
			{
				Expires = new DateTime(1999, 10, 12),
				Path = CookiePath
			});
		}
	}

	public static bool DeleteRole(string roleName)
	{
		return Provider.DeleteRole(roleName, throwOnPopulatedRole: true);
	}

	public static bool DeleteRole(string roleName, bool throwOnPopulatedRole)
	{
		return Provider.DeleteRole(roleName, throwOnPopulatedRole);
	}

	public static string[] GetAllRoles()
	{
		return Provider.GetAllRoles();
	}

	public static string[] GetRolesForUser()
	{
		return Provider.GetRolesForUser(CurrentUser);
	}

	public static string[] GetRolesForUser(string username)
	{
		return Provider.GetRolesForUser(username);
	}

	public static string[] GetUsersInRole(string roleName)
	{
		return Provider.GetUsersInRole(roleName);
	}

	public static bool IsUserInRole(string roleName)
	{
		return IsUserInRole(CurrentUser, roleName);
	}

	public static bool IsUserInRole(string username, string roleName)
	{
		if (string.IsNullOrEmpty(username))
		{
			return false;
		}
		return Provider.IsUserInRole(username, roleName);
	}

	public static void RemoveUserFromRole(string username, string roleName)
	{
		Provider.RemoveUsersFromRoles(new string[1] { username }, new string[1] { roleName });
	}

	public static void RemoveUserFromRoles(string username, string[] roleNames)
	{
		Provider.RemoveUsersFromRoles(new string[1] { username }, roleNames);
	}

	public static void RemoveUsersFromRole(string[] usernames, string roleName)
	{
		Provider.RemoveUsersFromRoles(usernames, new string[1] { roleName });
	}

	public static void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
	{
		Provider.RemoveUsersFromRoles(usernames, roleNames);
	}

	public static bool RoleExists(string roleName)
	{
		return Provider.RoleExists(roleName);
	}

	public static string[] FindUsersInRole(string roleName, string usernameToMatch)
	{
		return Provider.FindUsersInRole(roleName, usernameToMatch);
	}

	private static void CheckEnabled()
	{
		if (!Enabled)
		{
			throw new ProviderException("This feature is not enabled.  To enable it, add <roleManager enabled=\"true\"> to your configuration file.");
		}
	}
}
