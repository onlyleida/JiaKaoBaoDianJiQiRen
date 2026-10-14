using Unity;

namespace System.Web.Configuration;

public sealed class WebContext
{
	private WebApplicationLevel pathLevel;

	private string site;

	private string applicationPath;

	private string path;

	private string locationSubPath;

	public WebApplicationLevel ApplicationLevel => pathLevel;

	public string ApplicationPath => applicationPath;

	public string LocationSubPath => locationSubPath;

	public string Path => path;

	public string Site => site;

	public WebContext(WebApplicationLevel pathLevel, string site, string applicationPath, string path, string locationSubPath)
	{
		this.pathLevel = pathLevel;
		this.site = site;
		this.applicationPath = applicationPath;
		this.path = path;
		this.locationSubPath = locationSubPath;
	}

	public WebContext(WebApplicationLevel pathLevel, string site, string applicationPath, string path, string locationSubPath, string appConfigPath)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
