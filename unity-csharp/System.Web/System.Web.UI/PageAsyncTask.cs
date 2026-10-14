using System.Threading;
using System.Threading.Tasks;
using Unity;

namespace System.Web.UI;

public sealed class PageAsyncTask
{
	private BeginEventHandler beginHandler;

	private EndEventHandler endHandler;

	private EndEventHandler timeoutHandler;

	private bool executeInParallel;

	private object state;

	public BeginEventHandler BeginHandler => beginHandler;

	public EndEventHandler EndHandler => endHandler;

	public EndEventHandler TimeoutHandler => timeoutHandler;

	public bool ExecuteInParallel => executeInParallel;

	public object State => state;

	public PageAsyncTask(BeginEventHandler beginHandler, EndEventHandler endHandler, EndEventHandler timeoutHandler, object state)
		: this(beginHandler, endHandler, timeoutHandler, state, executeInParallel: false)
	{
	}

	public PageAsyncTask(BeginEventHandler beginHandler, EndEventHandler endHandler, EndEventHandler timeoutHandler, object state, bool executeInParallel)
	{
		this.beginHandler = beginHandler;
		this.endHandler = endHandler;
		this.timeoutHandler = timeoutHandler;
		this.state = state;
		this.executeInParallel = executeInParallel;
	}

	public PageAsyncTask(Func<CancellationToken, Task> handler)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public PageAsyncTask(Func<Task> handler)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
