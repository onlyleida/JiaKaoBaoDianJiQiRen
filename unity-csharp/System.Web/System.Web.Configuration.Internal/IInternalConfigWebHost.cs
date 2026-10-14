using System.Runtime.InteropServices;

namespace System.Web.Configuration.Internal;

[ComVisible(false)]
public interface IInternalConfigWebHost
{
	void GetSiteIDAndVPathFromConfigPath(string configPath, out string siteID, out string vpath);

	string GetConfigPathFromSiteIDAndVPath(string siteID, string vpath);
}
