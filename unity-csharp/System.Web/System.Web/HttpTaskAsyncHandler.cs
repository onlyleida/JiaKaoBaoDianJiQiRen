using System.ComponentModel;
using System.Threading.Tasks;

namespace System.Web;

public abstract class HttpTaskAsyncHandler : IHttpAsyncHandler, IHttpHandler
{
	public virtual bool IsReusable => false;

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void ProcessRequest(HttpContext context)
	{
		throw new NotSupportedException("This handler cannot be executed synchronously.");
	}

	public abstract Task ProcessRequestAsync(HttpContext context);

	IAsyncResult IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, object extraData)
	{
		return TaskAsyncResult.GetAsyncResult(ProcessRequestAsync(context), cb, extraData);
	}

	void IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
	{
		TaskAsyncResult.Wait(result);
	}
}
