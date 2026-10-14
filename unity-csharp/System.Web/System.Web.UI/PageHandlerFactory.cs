namespace System.Web.UI;

public class PageHandlerFactory : IHttpHandlerFactory
{
	protected internal PageHandlerFactory()
	{
	}

	public virtual IHttpHandler GetHandler(HttpContext context, string requestType, string virtualPath, string path)
	{
		return PageParser.GetCompiledPageInstance(virtualPath, path, context);
	}

	public virtual void ReleaseHandler(IHttpHandler handler)
	{
	}
}
