using System.Security.Permissions;
using Unity;

namespace System.Web.Management;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.High)]
public static class SqlServices
{
	public static string GenerateApplicationServicesScripts(bool install, SqlFeatures features, string database)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static string GenerateSessionStateScripts(bool install, SessionStateType type, string customDatabase)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static void Install(string server, string user, string password, string database, SqlFeatures features)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void Install(string server, string database, SqlFeatures features)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void Install(string database, SqlFeatures features, string connectionString)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void InstallSessionState(string server, string user, string password, string customDatabase, SessionStateType type)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void InstallSessionState(string server, string customDatabase, SessionStateType type)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void InstallSessionState(string customDatabase, SessionStateType type, string connectionString)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void Uninstall(string server, string user, string password, string database, SqlFeatures features)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void Uninstall(string server, string database, SqlFeatures features)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void Uninstall(string database, SqlFeatures features, string connectionString)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void UninstallSessionState(string server, string user, string password, string customDatabase, SessionStateType type)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void UninstallSessionState(string server, string customDatabase, SessionStateType type)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public static void UninstallSessionState(string customDatabase, SessionStateType type, string connectionString)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
