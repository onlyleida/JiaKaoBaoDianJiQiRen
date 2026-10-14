using System.Security;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventLogWatcher : IDisposable
{
	public bool Enabled
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

	public event EventHandler<EventRecordWrittenEventArgs> EventRecordWritten
	{
		add
		{
			ThrowStub.ThrowNotSupportedException();
		}
		remove
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public EventLogWatcher(EventLogQuery eventQuery)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogWatcher(EventLogQuery eventQuery, EventBookmark bookmark)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogWatcher(EventLogQuery eventQuery, EventBookmark bookmark, bool readExistingEvents)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogWatcher(string path)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void Dispose()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecuritySafeCritical]
	protected virtual void Dispose(bool disposing)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
