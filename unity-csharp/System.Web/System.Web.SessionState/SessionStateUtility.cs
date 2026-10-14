using System.Runtime.CompilerServices;
using System.Runtime.Serialization;
using System.Security.Permissions;
using Unity;

namespace System.Web.SessionState;

public static class SessionStateUtility
{
	public static ISurrogateSelector SerializationSurrogateSelector
	{
		[CompilerGenerated]
		[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		[CompilerGenerated]
		[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public static void AddHttpSessionStateToContext(HttpContext context, IHttpSessionState container)
	{
		if (context != null && container != null)
		{
			if (context.Session != null)
			{
				throw new HttpException("An HttpSessionState object for the current session has already been added to the specified context.");
			}
			HttpSessionState session = new HttpSessionState(container);
			context.SetSession(session);
		}
	}

	public static IHttpSessionState GetHttpSessionStateFromContext(HttpContext context)
	{
		HttpSessionState session;
		if (context == null || (session = context.Session) == null)
		{
			return null;
		}
		return session.Container;
	}

	public static HttpStaticObjectsCollection GetSessionStaticObjects(HttpContext context)
	{
		HttpSessionState session;
		if (context == null || (session = context.Session) == null)
		{
			return null;
		}
		return session.Container.StaticObjects;
	}

	public static void RaiseSessionEnd(IHttpSessionState session, object eventSource, EventArgs eventArgs)
	{
		HttpApplicationFactory.InvokeSessionEnd(new HttpSessionState(session), eventSource, eventArgs);
	}

	public static void RemoveHttpSessionStateFromContext(HttpContext context)
	{
		context?.SetSession(null);
	}

	public static bool IsSessionStateReadOnly(HttpContext context)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public static bool IsSessionStateRequired(HttpContext context)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
