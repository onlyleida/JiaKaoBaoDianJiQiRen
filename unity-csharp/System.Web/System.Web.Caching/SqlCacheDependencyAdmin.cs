using System.Security.Permissions;

namespace System.Web.Caching;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.High)]
public static class SqlCacheDependencyAdmin
{
	public static string[] GetTablesEnabledForNotifications(string connectionString)
	{
		throw new NotImplementedException();
	}

	public static void DisableNotifications(string connectionString)
	{
		throw new NotImplementedException();
	}

	public static void DisableTableForNotifications(string connectionString, string table)
	{
		throw new NotImplementedException();
	}

	public static void DisableTableForNotifications(string connectionString, string[] tables)
	{
		throw new NotImplementedException();
	}

	public static void EnableNotifications(string connectionString)
	{
		throw new NotImplementedException();
	}

	public static void EnableTableForNotifications(string connectionString, string table)
	{
		throw new NotImplementedException();
	}

	public static void EnableTableForNotifications(string connectionString, string[] tables)
	{
		throw new NotImplementedException();
	}
}
