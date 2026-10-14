using System.Diagnostics;
using System.Security.Permissions;
using System.Threading;
using System.Web.Services.Diagnostics;

namespace System.Web.Services.Protocols;

[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
public abstract class ServerProtocolFactory
{
	internal ServerProtocol Create(Type type, HttpContext context, HttpRequest request, HttpResponse response, out bool abortProcessing)
	{
		ServerProtocol serverProtocol = null;
		abortProcessing = false;
		serverProtocol = CreateIfRequestCompatible(request);
		try
		{
			serverProtocol?.SetContext(type, context, request, response);
			return serverProtocol;
		}
		catch (Exception ex)
		{
			abortProcessing = true;
			if (ex is ThreadAbortException || ex is StackOverflowException || ex is OutOfMemoryException)
			{
				throw;
			}
			if (Tracing.On)
			{
				Tracing.ExceptionCatch(TraceEventType.Warning, this, "Create", ex);
			}
			if (serverProtocol != null && !serverProtocol.WriteException(ex, serverProtocol.Response.OutputStream))
			{
				throw new InvalidOperationException(Res.GetString("UnableToHandleRequest0"), ex);
			}
			return null;
		}
	}

	protected abstract ServerProtocol CreateIfRequestCompatible(HttpRequest request);
}
