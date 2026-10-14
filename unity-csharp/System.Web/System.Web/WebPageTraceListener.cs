using System.Diagnostics;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[HostProtection(SecurityAction.LinkDemand, Synchronization = true)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class WebPageTraceListener : TraceListener
{
	public override void TraceEvent(TraceEventCache eventCache, string source, TraceEventType severity, int id, string message)
	{
		if (HttpContext.Current != null && HttpContext.Current.Trace != null)
		{
			HttpContext.Current.Trace.Write(source, message);
		}
	}

	public override void TraceEvent(TraceEventCache eventCache, string source, TraceEventType severity, int id, string format, params object[] args)
	{
		TraceEvent(eventCache, source, severity, id, string.Format(Helpers.InvariantCulture, format, args));
	}

	public override void Write(string message)
	{
		if (HttpContext.Current != null && HttpContext.Current.Trace != null)
		{
			HttpContext.Current.Trace.Write(message);
		}
	}

	public override void Write(string message, string category)
	{
		if (HttpContext.Current != null && HttpContext.Current.Trace != null)
		{
			HttpContext.Current.Trace.Write(category, message);
		}
	}

	public override void WriteLine(string message)
	{
		if (HttpContext.Current != null && HttpContext.Current.Trace != null)
		{
			HttpContext.Current.Trace.Write(message);
		}
	}

	public override void WriteLine(string message, string category)
	{
		if (HttpContext.Current != null && HttpContext.Current.Trace != null)
		{
			HttpContext.Current.Trace.Write(category, message);
		}
	}
}
