using System.Security;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.PerformanceData;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class CounterSet : IDisposable
{
	[SecuritySafeCritical]
	[PermissionSet(SecurityAction.Demand, Unrestricted = true)]
	public CounterSet(Guid providerGuid, Guid counterSetGuid, CounterSetInstanceType instanceType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void AddCounter(int counterId, CounterType counterType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void AddCounter(int counterId, CounterType counterType, string counterName)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecuritySafeCritical]
	[PermissionSet(SecurityAction.Demand, Unrestricted = true)]
	public CounterSetInstance CreateCounterSetInstance(string instanceName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void Dispose()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecuritySafeCritical]
	protected virtual void Dispose(bool disposing)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
