using System.Configuration;

namespace System.Web.Configuration;

internal class ApplicationSettingsConfigurationFileMap : ConfigurationFileMap
{
	public ApplicationSettingsConfigurationFileMap()
	{
		HttpRequest httpRequest = HttpContext.Current?.Request;
		if (httpRequest != null)
		{
			MachineConfigFilename = WebConfigurationHost.GetWebConfigFileName(httpRequest.MapPath(WebConfigurationManager.FindWebConfig(httpRequest.CurrentExecutionFilePath)));
		}
		else
		{
			MachineConfigFilename = null;
		}
	}
}
