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
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class HttpContextBase : IServiceProvider
{
	public virtual Exception[] AllErrors
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual HttpApplicationStateBase Application
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual HttpApplication ApplicationInstance
	{
		get
		{
			NotImplemented();
			return null;
		}
		set
		{
			NotImplemented();
		}
	}

	public virtual Cache Cache
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual IHttpHandler CurrentHandler
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual RequestNotification CurrentNotification
	{
		get
		{
			NotImplemented();
			return (RequestNotification)0;
		}
	}

	public virtual Exception Error
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual IHttpHandler Handler
	{
		get
		{
			NotImplemented();
			return null;
		}
		set
		{
			NotImplemented();
		}
	}

	public virtual bool IsCustomErrorEnabled
	{
		get
		{
			NotImplemented();
			return false;
		}
	}

	public virtual bool IsDebuggingEnabled
	{
		get
		{
			NotImplemented();
			return false;
		}
	}

	public virtual bool IsPostNotification
	{
		get
		{
			NotImplemented();
			return false;
		}
	}

	public virtual IDictionary Items
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual IHttpHandler PreviousHandler
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual ProfileBase Profile
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual HttpRequestBase Request
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual HttpResponseBase Response
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual HttpServerUtilityBase Server
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual HttpSessionStateBase Session
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual bool SkipAuthorization
	{
		get
		{
			NotImplemented();
			return false;
		}
		set
		{
			NotImplemented();
		}
	}

	public virtual DateTime Timestamp
	{
		get
		{
			NotImplemented();
			return DateTime.MinValue;
		}
	}

	public virtual TraceContext Trace
	{
		get
		{
			NotImplemented();
			return null;
		}
	}

	public virtual IPrincipal User
	{
		get
		{
			NotImplemented();
			return null;
		}
		set
		{
			NotImplemented();
		}
	}

	public virtual bool AllowAsyncDuringSyncStages
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

	public virtual AsyncPreloadModeFlags AsyncPreloadMode
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

	public virtual bool IsWebSocketRequest
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual bool IsWebSocketRequestUpgrading
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual PageInstrumentationService PageInstrumentation
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual bool ThreadAbortOnTimeout
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

	public virtual string WebSocketNegotiatedProtocol
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual IList<string> WebSocketRequestedProtocols
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<string>)0;
		}
	}

	private void NotImplemented()
	{
		throw new NotImplementedException();
	}

	public virtual void AddError(Exception errorInfo)
	{
		NotImplemented();
	}

	public virtual void ClearError()
	{
		NotImplemented();
	}

	public virtual object GetGlobalResourceObject(string classKey, string resourceKey)
	{
		NotImplemented();
		return null;
	}

	public virtual object GetGlobalResourceObject(string classKey, string resourceKey, CultureInfo culture)
	{
		NotImplemented();
		return null;
	}

	public virtual object GetLocalResourceObject(string virtualPath, string resourceKey)
	{
		NotImplemented();
		return null;
	}

	public virtual object GetLocalResourceObject(string virtualPath, string resourceKey, CultureInfo culture)
	{
		NotImplemented();
		return null;
	}

	public virtual object GetSection(string sectionName)
	{
		NotImplemented();
		return null;
	}

	public virtual object GetService(Type serviceType)
	{
		NotImplemented();
		return null;
	}

	public virtual void RemapHandler(IHttpHandler handler)
	{
		NotImplemented();
	}

	public virtual void RewritePath(string path)
	{
		NotImplemented();
	}

	public virtual void RewritePath(string path, bool rebaseClientPath)
	{
		NotImplemented();
	}

	public virtual void RewritePath(string filePath, string pathInfo, string queryString)
	{
		NotImplemented();
	}

	public virtual void RewritePath(string filePath, string pathInfo, string queryString, bool setClientFilePath)
	{
		NotImplemented();
	}

	public virtual void SetSessionStateBehavior(SessionStateBehavior sessionStateBehavior)
	{
		NotImplemented();
	}

	public virtual void AcceptWebSocketRequest(Func<AspNetWebSocketContext, Task> userFunc)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void AcceptWebSocketRequest(Func<AspNetWebSocketContext, Task> userFunc, AspNetWebSocketOptions options)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual ISubscriptionToken AddOnRequestCompleted(Action<HttpContextBase> callback)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual ISubscriptionToken DisposeOnPipelineCompleted(IDisposable target)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
