namespace System.Web;

public interface IHttpHandlerFactory
{
	IHttpHandler GetHandler(HttpContext context, string requestType, string url, string pathTranslated);

	void ReleaseHandler(IHttpHandler handler);
}
