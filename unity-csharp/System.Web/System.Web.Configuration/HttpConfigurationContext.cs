using Unity;

namespace System.Web.Configuration;

public class HttpConfigurationContext
{
	private string virtualPath;

	public string VirtualPath => virtualPath;

	internal HttpConfigurationContext(string virtualPath)
	{
		this.virtualPath = virtualPath;
	}

	internal HttpConfigurationContext()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
