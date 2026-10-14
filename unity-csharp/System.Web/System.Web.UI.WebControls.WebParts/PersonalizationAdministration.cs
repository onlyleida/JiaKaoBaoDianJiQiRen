using Unity;

namespace System.Web.UI.WebControls.WebParts;

public static class PersonalizationAdministration
{
	public static string ApplicationName
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

	public static PersonalizationProvider Provider
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public static PersonalizationProviderCollection Providers
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public static PersonalizationStateInfoCollection FindInactiveUserState(string pathToMatch, string usernameToMatch, DateTime userInactiveSinceDate)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static PersonalizationStateInfoCollection FindInactiveUserState(string pathToMatch, string usernameToMatch, DateTime userInactiveSinceDate, int pageIndex, int pageSize, out int totalRecords)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static PersonalizationStateInfoCollection FindSharedState(string pathToMatch)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static PersonalizationStateInfoCollection FindSharedState(string pathToMatch, int pageIndex, int pageSize, out int totalRecords)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static PersonalizationStateInfoCollection FindUserState(string pathToMatch, string usernameToMatch)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static PersonalizationStateInfoCollection FindUserState(string pathToMatch, string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static PersonalizationStateInfoCollection GetAllInactiveUserState(DateTime userInactiveSinceDate)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static PersonalizationStateInfoCollection GetAllInactiveUserState(DateTime userInactiveSinceDate, int pageIndex, int pageSize, out int totalRecords)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static PersonalizationStateInfoCollection GetAllState(PersonalizationScope scope)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static PersonalizationStateInfoCollection GetAllState(PersonalizationScope scope, int pageIndex, int pageSize, out int totalRecords)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public static int GetCountOfInactiveUserState(DateTime userInactiveSinceDate)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static int GetCountOfInactiveUserState(string pathToMatch, DateTime userInactiveSinceDate)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static int GetCountOfState(PersonalizationScope scope)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static int GetCountOfState(PersonalizationScope scope, string pathToMatch)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static int GetCountOfUserState(string usernameToMatch)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static int ResetAllState(PersonalizationScope scope)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static int ResetInactiveUserState(DateTime userInactiveSinceDate)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static int ResetInactiveUserState(string path, DateTime userInactiveSinceDate)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static bool ResetSharedState(string path)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static int ResetSharedState(string[] paths)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static int ResetState(PersonalizationStateInfoCollection data)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static int ResetUserState(string path)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static bool ResetUserState(string path, string username)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static int ResetUserState(string path, string[] usernames)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static int ResetUserState(string[] usernames)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
