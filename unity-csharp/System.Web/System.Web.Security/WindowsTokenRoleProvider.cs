using System.Security.Principal;
using Unity;

namespace System.Web.Security;

public class WindowsTokenRoleProvider : RoleProvider
{
	public override string ApplicationName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public WindowsTokenRoleProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override void AddUsersToRoles(string[] usernames, string[] roleNames)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override void CreateRole(string roleName)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public override string[] FindUsersInRole(string roleName, string usernameToMatch)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override string[] GetAllRoles()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override string[] GetRolesForUser(string username)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override string[] GetUsersInRole(string roleName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public bool IsUserInRole(string username, WindowsBuiltInRole role)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public override bool IsUserInRole(string username, string roleName)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override bool RoleExists(string roleName)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
