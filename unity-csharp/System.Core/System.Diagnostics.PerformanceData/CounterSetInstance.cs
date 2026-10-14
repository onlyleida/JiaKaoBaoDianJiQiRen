using System.Security;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.PerformanceData;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class CounterSetInstance : IDisposable
{
	public CounterSetInstanceCounterDataSet Counters
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal CounterSetInstance()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityCritical]
	public void Dispose()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
