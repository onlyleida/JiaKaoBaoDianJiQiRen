using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventProviderTraceListener : TraceListener
{
	public string Delimiter
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public EventProviderTraceListener(string providerId)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventProviderTraceListener(string providerId, string name)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventProviderTraceListener(string providerId, string name, string delimiter)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public sealed override void Write(string message)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public sealed override void WriteLine(string message)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
