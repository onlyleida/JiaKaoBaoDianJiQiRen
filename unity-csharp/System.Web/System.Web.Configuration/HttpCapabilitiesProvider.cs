namespace System.Web.Configuration;

public abstract class HttpCapabilitiesProvider
{
	public abstract HttpBrowserCapabilities GetBrowserCapabilities(HttpRequest request);
}
