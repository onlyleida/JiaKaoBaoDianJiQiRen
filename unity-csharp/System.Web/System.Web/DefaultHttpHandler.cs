using System.Collections.Specialized;
using System.Threading;

namespace System.Web;

public class DefaultHttpHandler : IHttpAsyncHandler, IHttpHandler
{
	private sealed class DefaultHandlerAsyncResult : IAsyncResult
	{
		public object AsyncState { get; private set; }

		public WaitHandle AsyncWaitHandle => null;

		public bool CompletedSynchronously => true;

		public bool IsCompleted => true;

		public DefaultHandlerAsyncResult(AsyncCallback callback, object state)
		{
			AsyncState = state;
			callback?.Invoke(this);
		}
	}

	private NameValueCollection executeUrlHeaders;

	protected HttpContext Context { get; private set; }

	public virtual bool IsReusable => false;

	protected NameValueCollection ExecuteUrlHeaders
	{
		get
		{
			HttpRequest httpRequest = Context?.Request;
			if (httpRequest != null && executeUrlHeaders != null)
			{
				executeUrlHeaders = new NameValueCollection(httpRequest.Headers);
			}
			return executeUrlHeaders;
		}
	}

	public virtual IAsyncResult BeginProcessRequest(HttpContext context, AsyncCallback callback, object state)
	{
		Context = context;
		HttpRequest httpRequest = context?.Request;
		string text = httpRequest?.FilePath;
		if (!string.IsNullOrEmpty(text) && string.Compare(".asp", VirtualPathUtility.GetExtension(text), StringComparison.OrdinalIgnoreCase) == 0)
		{
			throw new HttpException($"Access to file '{text}' is forbidden.");
		}
		if (httpRequest != null && string.Compare("POST", httpRequest.HttpMethod, StringComparison.OrdinalIgnoreCase) == 0)
		{
			throw new HttpException($"Method '{httpRequest.HttpMethod}' is not allowed when accessing file '{text}'");
		}
		new StaticFileHandler().ProcessRequest(context);
		return new DefaultHandlerAsyncResult(callback, state);
	}

	public virtual void EndProcessRequest(IAsyncResult result)
	{
	}

	public virtual void ProcessRequest(HttpContext context)
	{
		throw new InvalidOperationException("The ProcessRequest cannot be called synchronously.");
	}

	public virtual void OnExecuteUrlPreconditionFailure()
	{
	}

	public virtual string OverrideExecuteUrlPath()
	{
		return null;
	}
}
