using System.Collections.Generic;
using System.IO;
using System.Security;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventLogReader : IDisposable
{
	public int BatchSize
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

	public IList<EventLogStatus> LogStatus
	{
		[SecurityCritical]
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IList<EventLogStatus>)0;
		}
	}

	public EventLogReader(EventLogQuery eventQuery)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityCritical]
	public EventLogReader(EventLogQuery eventQuery, EventBookmark bookmark)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogReader(string path)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public EventLogReader(string path, PathType pathType)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void CancelReading()
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

	public EventRecord ReadEvent()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[SecurityCritical]
	public EventRecord ReadEvent(TimeSpan timeout)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void Seek(EventBookmark bookmark)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityCritical]
	public void Seek(EventBookmark bookmark, long offset)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityCritical]
	public void Seek(SeekOrigin origin, long offset)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
