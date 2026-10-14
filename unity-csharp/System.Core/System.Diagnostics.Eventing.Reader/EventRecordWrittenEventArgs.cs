using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class EventRecordWrittenEventArgs : EventArgs
{
	public Exception EventException
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public EventRecord EventRecord
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal EventRecordWrittenEventArgs()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
