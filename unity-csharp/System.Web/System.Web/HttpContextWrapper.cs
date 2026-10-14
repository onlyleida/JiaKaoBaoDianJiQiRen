using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.Runtime.CompilerServices;
using System.Security.Permissions;
using System.Security.Principal;
using System.Threading.Tasks;
using System.Web.Caching;
using System.Web.Configuration;
using System.Web.Instrumentation;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.WebSockets;
using Unity;

namespace System.Web;

[TypeForwardedFrom("System.Web.Abstractions, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=31bf3856ad364e35")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HttpContextWrapper : HttpContextBase
{
	private HttpContext w;

	public override Exception[] AllErrors => w.AllErrors;

	public override HttpApplicationStateBase Application => new HttpApplicationStateWrapper(w.Application);

	public override HttpApplication ApplicationInstance
	{
		get
		{
			return w.ApplicationInstance;
		}
		set
		{
			w.ApplicationInstance = value;
		}
	}

	public override Cache Cache => w.Cache;

	public override IHttpHandler CurrentHandler => w.CurrentHandler;

	public override RequestNotification CurrentNotification => w.CurrentNotification;

	public override Exception Error => w.Error;

	public override IHttpHandler Handler
	{
		get
		{
			return w.Handler;
		}
		set
		{
			w.Handler = value;
		}
	}

	public override bool IsCustomErrorEnabled => w.IsCustomErrorEnabled;

	public override bool IsDebuggingEnabled => w.IsDebuggingEnabled;

	public override bool IsPostNotification => w.IsPostNotification;

	public override IDictionary Items => w.Items;

	public override IHttpHandler PreviousHandler => w.PreviousHandler;

	public override ProfileBase Profile => w.Profile;

	public override HttpRequestBase Request => new HttpRequestWrapper(w.Request);

	public override HttpResponseBase Response => new HttpResponseWrapper(w.Response);

	public override HttpServerUtilityBase Server => new HttpServerUtilityWrapper(w.Server);

	public override HttpSessionStateBase Session
	{
		get
		{
			if (w.Session != null)
			{
				return new HttpSessionStateWrapper(w.Session);
			}
			return null;
		}
	}

	public override bool SkipAuthorization
	{
		get
		{
			return w.SkipAuthorization;
		}
		set
		{
			w.SkipAuthorization = value;
		}
	}

	public override DateTime Timestamp => w.Timestamp;

	public override TraceContext Trace => w.Trace;

	public override IPrincipal User
	{
		get
		{
			return w.User;
		}
		set
		{
			w.User = value;
		}
	}

	public override bool AllowAsyncDuringSyncStages
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public override AsyncPreloadModeFlags AsyncPreloadMode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public override bool IsWebSocketRequest
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public override bool IsWebSocketRequestUpgrading
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public override PageInstrumentationService PageInstrumentation
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override bool ThreadAbortOnTimeout
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public override string WebSocketNegotiatedProtocol
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override IList<string> WebSocketRequestedProtocols
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<string>)0;
		}
	}

	public HttpContextWrapper(HttpContext httpContext)
	{
		if (httpContext == null)
		{
			throw new ArgumentNullException("httpContext");
		}
		w = httpContext;
	}

	public override void AddError(Exception errorInfo)
	{
		w.AddError(errorInfo);
	}

	public override void ClearError()
	{
		w.ClearError();
	}

	public override object GetGlobalResourceObject(string classKey, string resourceKey)
	{
		return HttpContext.GetGlobalResourceObject(classKey, resourceKey);
	}

	public override object GetGlobalResourceObject(string classKey, string resourceKey, CultureInfo culture)
	{
		return HttpContext.GetGlobalResourceObject(classKey, resourceKey, culture);
	}

	public override object GetLocalResourceObject(string virtualPath, string resourceKey)
	{
		return HttpContext.GetLocalResourceObject(virtualPath, resourceKey);
	}

	public override object GetLocalResourceObject(string virtualPath, string resourceKey, CultureInfo culture)
	{
		return HttpContext.GetLocalResourceObject(virtualPath, resourceKey, culture);
	}

	public override object GetSection(string sectionName)
	{
		return w.GetSection(sectionName);
	}

	public override object GetService(Type serviceType)
	{
		return ((IServiceProvider)w).GetService(serviceType);
	}

	public override void RemapHandler(IHttpHandler handler)
	{
		w.RemapHandler(handler);
	}

	public override void RewritePath(string path)
	{
		w.RewritePath(path);
	}

	public override void RewritePath(string path, bool rebaseClientPath)
	{
		w.RewritePath(path, rebaseClientPath);
	}

	public override void RewritePath(string filePath, string pathInfo, string queryString)
	{
		w.RewritePath(filePath, pathInfo, queryString);
	}

	public override void RewritePath(string filePath, string pathInfo, string queryString, bool setClientFilePath)
	{
		w.RewritePath(filePath, pathInfo, queryString, setClientFilePath);
	}

	public override void SetSessionStateBehavior(SessionStateBehavior sessionStateBehavior)
	{
		w.SetSessionStateBehavior(sessionStateBehavior);
	}

	public override void AcceptWebSocketRequest(Func<AspNetWebSocketContext, Task> userFunc)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override void AcceptWebSocketRequest(Func<AspNetWebSocketContext, Task> userFunc, AspNetWebSocketOptions options)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override ISubscriptionToken AddOnRequestCompleted(Action<HttpContextBase> callback)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override ISubscriptionToken DisposeOnPipelineCompleted(IDisposable target)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
