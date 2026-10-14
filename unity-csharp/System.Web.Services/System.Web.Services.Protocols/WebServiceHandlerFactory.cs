using System.Security.Permissions;
using System.Threading;
using System.Web.Services.Configuration;
using System.Web.Services.Diagnostics;
using System.Web.UI;

namespace System.Web.Services.Protocols;

[PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
public class WebServiceHandlerFactory : IHttpHandlerFactory
{
	public IHttpHandler GetHandler(HttpContext context, string verb, string url, string filePath)
	{
		TraceMethod caller = (Tracing.On ? new TraceMethod(this, "GetHandler") : null);
		if (Tracing.On)
		{
			Tracing.Enter("IHttpHandlerFactory.GetHandler", caller, Tracing.Details(context.Request));
		}
		new AspNetHostingPermission(AspNetHostingPermissionLevel.Minimal).Demand();
		Type compiledType = GetCompiledType(url, context);
		IHttpHandler result = CoreGetHandler(compiledType, context, context.Request, context.Response);
		if (Tracing.On)
		{
			Tracing.Exit("IHttpHandlerFactory.GetHandler", caller);
		}
		return result;
	}

	[SecurityPermission(SecurityAction.Assert, Unrestricted = true)]
	private Type GetCompiledType(string url, HttpContext context)
	{
		return WebServiceParser.GetCompiledType(url, context);
	}

	internal IHttpHandler CoreGetHandler(Type type, HttpContext context, HttpRequest request, HttpResponse response)
	{
		TraceMethod method = (Tracing.On ? new TraceMethod(this, "CoreGetHandler") : null);
		ServerProtocolFactory[] serverProtocolFactories = GetServerProtocolFactories();
		ServerProtocol serverProtocol = null;
		bool abortProcessing = false;
		for (int i = 0; i < serverProtocolFactories.Length; i++)
		{
			try
			{
				serverProtocol = serverProtocolFactories[i].Create(type, context, request, response, out abortProcessing);
				if ((serverProtocol != null && serverProtocol.GetType() != typeof(UnsupportedRequestProtocol)) | abortProcessing)
				{
					break;
				}
			}
			catch (Exception ex)
			{
				if (ex is ThreadAbortException || ex is StackOverflowException || ex is OutOfMemoryException)
				{
					throw;
				}
				throw Tracing.ExceptionThrow(method, new InvalidOperationException(Res.GetString("FailedToHandleRequest0"), ex));
			}
		}
		if (abortProcessing)
		{
			return new NopHandler();
		}
		if (serverProtocol == null)
		{
			if (request.PathInfo != null && request.PathInfo.Length != 0)
			{
				throw Tracing.ExceptionThrow(method, new InvalidOperationException(Res.GetString("WebUnrecognizedRequestFormatUrl", request.PathInfo)));
			}
			throw Tracing.ExceptionThrow(method, new InvalidOperationException(Res.GetString("WebUnrecognizedRequestFormat")));
		}
		if (serverProtocol is UnsupportedRequestProtocol)
		{
			throw Tracing.ExceptionThrow(method, new HttpException(((UnsupportedRequestProtocol)serverProtocol).HttpCode, Res.GetString("WebUnrecognizedRequestFormat")));
		}
		bool isAsync = serverProtocol.MethodInfo.IsAsync;
		bool enableSession = serverProtocol.MethodAttribute.EnableSession;
		if (isAsync)
		{
			if (enableSession)
			{
				return new AsyncSessionHandler(serverProtocol);
			}
			return new AsyncSessionlessHandler(serverProtocol);
		}
		if (enableSession)
		{
			return new SyncSessionHandler(serverProtocol);
		}
		return new SyncSessionlessHandler(serverProtocol);
	}

	[PermissionSet(SecurityAction.Assert, Name = "FullTrust")]
	private ServerProtocolFactory[] GetServerProtocolFactories()
	{
		return WebServicesSection.Current.ServerProtocolFactories;
	}

	public void ReleaseHandler(IHttpHandler handler)
	{
	}
}
