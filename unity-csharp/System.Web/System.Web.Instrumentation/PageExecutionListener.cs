using Unity;

namespace System.Web.Instrumentation;

public abstract class PageExecutionListener
{
	protected PageExecutionListener()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract void BeginContext(PageExecutionContext context);

	public abstract void EndContext(PageExecutionContext context);
}
