namespace System.Web.Configuration;

public interface IConfigMapPath
{
	string GetMachineConfigFilename();

	string GetRootWebConfigFilename();

	void GetPathConfigFilename(string siteID, string path, out string directory, out string baseName);

	void GetDefaultSiteNameAndID(out string siteName, out string siteID);

	void ResolveSiteArgument(string siteArgument, out string siteName, out string siteID);

	string MapPath(string siteID, string path);

	string GetAppPathForPath(string siteID, string path);
}
