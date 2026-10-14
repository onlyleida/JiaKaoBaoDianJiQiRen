using Unity;

namespace System.Web.Hosting;

public sealed class AspNetMemoryMonitor : IDisposable, IObservable<LowPhysicalMemoryInfo>, IObservable<RecycleLimitInfo>, IApplicationMonitor
{
	public IObserver<LowPhysicalMemoryInfo> DefaultLowPhysicalMemoryObserver
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IObserver<LowPhysicalMemoryInfo>)0;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public IObserver<RecycleLimitInfo> DefaultRecycleLimitObserver
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IObserver<RecycleLimitInfo>)0;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	internal AspNetMemoryMonitor()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Dispose()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Start()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Stop()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public IDisposable Subscribe(IObserver<LowPhysicalMemoryInfo> observer)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public IDisposable Subscribe(IObserver<RecycleLimitInfo> observer)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
