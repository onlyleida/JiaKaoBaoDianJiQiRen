using System.Configuration.Provider;
using System.Runtime.CompilerServices;

namespace System.Web.Security;

[TypeForwardedFrom("System.Web, Version=2.0.0.0, Culture=Neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public abstract class RoleProvider : ProviderBase
{
	public abstract string ApplicationName { get; set; }

	public abstract void AddUsersToRoles(string[] usernames, string[] roleNames);

	public abstract void CreateRole(string roleName);

	public abstract bool DeleteRole(string roleName, bool throwOnPopulatedRole);

	public abstract string[] FindUsersInRole(string roleName, string usernameToMatch);

	public abstract string[] GetAllRoles();

	public abstract string[] GetRolesForUser(string username);

	public abstract string[] GetUsersInRole(string roleName);

	public abstract bool IsUserInRole(string username, string roleName);

	public abstract void RemoveUsersFromRoles(string[] usernames, string[] roleNames);

	public abstract bool RoleExists(string roleName);
}
