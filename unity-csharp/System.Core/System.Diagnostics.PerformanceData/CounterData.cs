using System.Security;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.PerformanceData;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class CounterData
{
	public long RawValue
	{
		[SecurityCritical]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[SecurityCritical]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public long Value
	{
		[SecurityCritical]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[SecurityCritical]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	internal CounterData()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityCritical]
	public void Decrement()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityCritical]
	public void Increment()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityCritical]
	public void IncrementBy(long value)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
