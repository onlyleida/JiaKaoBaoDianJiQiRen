namespace System.Web.Hosting;

public interface IProcessHostPreloadClient
{
	void Preload(string[] parameters);
}
