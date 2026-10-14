using Unity;

namespace System.Web.Hosting;

public class RecycleLimitObserver : IObserver<RecycleLimitInfo>
{
	public RecycleLimitObserver()
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

	public void OnNext(RecycleLimitInfo recycleLimitInfo)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
