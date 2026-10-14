using System.Configuration;
using Unity;

namespace System.Web.Configuration;

public class UserMapPath : IConfigMapPath
{
	public UserMapPath(ConfigurationFileMap fileMap)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public string GetAppPathForPath(string siteID, string path)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void GetDefaultSiteNameAndID(out string siteName, out string siteID)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public string GetMachineConfigFilename()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void GetPathConfigFilename(string siteID, string path, out string directory, out string baseName)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public string GetRootWebConfigFilename()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public string MapPath(string siteID, string path)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void ResolveSiteArgument(string siteArgument, out string siteName, out string siteID)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
