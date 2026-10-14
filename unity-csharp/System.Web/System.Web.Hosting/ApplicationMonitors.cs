using Unity;

namespace System.Web.Hosting;

public sealed class ApplicationMonitors
{
	public IApplicationMonitor MemoryMonitor
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	internal ApplicationMonitors()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
