using Unity;

namespace System.Web.Hosting;

public class RecycleLimitMonitor : MarshalByRefObject
{
	public class RecycleLimitMonitorSingleton : MarshalByRefObject
	{
		internal RecycleLimitMonitorSingleton()
		{
			ThrowStub.ThrowNotSupportedException();
		}

		public void Dispose()
		{
			ThrowStub.ThrowNotSupportedException();
		}

		public static void EnsureCreated()
		{
			ThrowStub.ThrowNotSupportedException();
		}

		public void RegisterProxyAndStart(RecycleLimitMonitor proxy, string applicationID)
		{
			ThrowStub.ThrowNotSupportedException();
		}

		public void UnregisterProxyAndStop(RecycleLimitMonitor proxy)
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	internal RecycleLimitMonitor()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Dispose()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
