using System.Diagnostics;
using System.Security.Permissions;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[HostProtection(SecurityAction.LinkDemand, Synchronization = true)]
public sealed class IisTraceListener : TraceListener
{
	public override void TraceData(TraceEventCache eventCache, string source, TraceEventType eventType, int id, object data)
	{
		base.TraceData(eventCache, source, eventType, id, data);
	}

	public override void TraceData(TraceEventCache eventCache, string source, TraceEventType eventType, int id, params object[] data)
	{
		base.TraceData(eventCache, source, eventType, id, data);
	}

	public override void TraceEvent(TraceEventCache eventCache, string source, TraceEventType severity, int id, string message)
	{
		base.TraceEvent(eventCache, source, severity, id, message);
	}

	public override void TraceEvent(TraceEventCache eventCache, string source, TraceEventType severity, int id, string format, params object[] args)
	{
		base.TraceEvent(eventCache, source, severity, id, format, args);
	}

	public override void Write(string message)
	{
		HttpContext.Current.Trace.Write(message);
	}

	public override void Write(string message, string category)
	{
		Write(message);
	}

	public override void WriteLine(string message)
	{
		HttpContext.Current.Trace.Write(message + Environment.NewLine);
	}

	public override void WriteLine(string message, string category)
	{
		WriteLine(message);
	}
}
