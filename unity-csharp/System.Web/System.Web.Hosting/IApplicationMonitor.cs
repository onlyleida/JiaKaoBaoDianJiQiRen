namespace System.Web.Hosting;

public interface IApplicationMonitor : IDisposable
{
	void Start();

	void Stop();
}
