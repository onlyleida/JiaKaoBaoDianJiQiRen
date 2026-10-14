using System.Diagnostics;
using System.IO;
using System.Net;
using System.Security.Permissions;
using System.Threading;
using System.Web.Services.Diagnostics;
using Unity;

namespace System.Web.Services.Protocols;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
public class WebClientAsyncResult : IAsyncResult
{
	private object userAsyncState;

	private bool completedSynchronously;

	private bool isCompleted;

	private volatile ManualResetEvent manualResetEvent;

	private AsyncCallback userCallback;

	internal WebClientProtocol ClientProtocol;

	internal object InternalAsyncState;

	internal Exception Exception;

	internal WebResponse Response;

	internal WebRequest Request;

	internal Stream ResponseStream;

	internal Stream ResponseBufferedStream;

	internal byte[] Buffer;

	internal bool EndSendCalled;

	public object AsyncState => userAsyncState;

	public WaitHandle AsyncWaitHandle
	{
		get
		{
			bool flag = isCompleted;
			if (manualResetEvent == null)
			{
				lock (this)
				{
					if (manualResetEvent == null)
					{
						manualResetEvent = new ManualResetEvent(flag);
					}
				}
			}
			if (!flag && isCompleted)
			{
				manualResetEvent.Set();
			}
			return manualResetEvent;
		}
	}

	public bool CompletedSynchronously => completedSynchronously;

	public bool IsCompleted => isCompleted;

	internal WebClientAsyncResult(WebClientProtocol clientProtocol, object internalAsyncState, WebRequest request, AsyncCallback userCallback, object userAsyncState)
	{
		ClientProtocol = clientProtocol;
		InternalAsyncState = internalAsyncState;
		this.userAsyncState = userAsyncState;
		this.userCallback = userCallback;
		Request = request;
		completedSynchronously = true;
	}

	public void Abort()
	{
		Request?.Abort();
	}

	internal void Complete()
	{
		try
		{
			if (ResponseStream != null)
			{
				ResponseStream.Close();
				ResponseStream = null;
			}
			if (ResponseBufferedStream != null)
			{
				ResponseBufferedStream.Position = 0L;
			}
		}
		catch (Exception ex)
		{
			if (ex is ThreadAbortException || ex is StackOverflowException || ex is OutOfMemoryException)
			{
				throw;
			}
			if (Exception == null)
			{
				Exception = ex;
			}
			if (Tracing.On)
			{
				Tracing.ExceptionCatch(TraceEventType.Error, this, "Complete", ex);
			}
		}
		isCompleted = true;
		try
		{
			if (manualResetEvent != null)
			{
				manualResetEvent.Set();
			}
		}
		catch (Exception ex2)
		{
			if (ex2 is ThreadAbortException || ex2 is StackOverflowException || ex2 is OutOfMemoryException)
			{
				throw;
			}
			if (Exception == null)
			{
				Exception = ex2;
			}
			if (Tracing.On)
			{
				Tracing.ExceptionCatch(TraceEventType.Error, this, "Complete", ex2);
			}
		}
		if (userCallback != null)
		{
			userCallback(this);
		}
	}

	internal void Complete(Exception e)
	{
		Exception = e;
		Complete();
	}

	internal WebResponse WaitForResponse()
	{
		if (!isCompleted)
		{
			AsyncWaitHandle.WaitOne();
		}
		if (Exception != null)
		{
			throw Exception;
		}
		return Response;
	}

	internal void CombineCompletedSynchronously(bool innerCompletedSynchronously)
	{
		completedSynchronously &= innerCompletedSynchronously;
	}

	internal WebClientAsyncResult()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
