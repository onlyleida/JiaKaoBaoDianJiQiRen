namespace System.Web;

public interface IHttpModule
{
	void Init(HttpApplication context);

	void Dispose();
}
