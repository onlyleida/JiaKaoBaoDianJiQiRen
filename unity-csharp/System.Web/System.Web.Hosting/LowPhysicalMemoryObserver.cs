using Unity;

namespace System.Web.Hosting;

public class LowPhysicalMemoryObserver : IObserver<LowPhysicalMemoryInfo>
{
	public LowPhysicalMemoryObserver()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void OnCompleted()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void OnError(Exception error)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void OnNext(LowPhysicalMemoryInfo lowMemoryInfo)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
