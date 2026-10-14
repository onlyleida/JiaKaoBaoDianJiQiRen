using System.Collections.Generic;
using System.Security;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventLogConfiguration : IDisposable
{
	public bool IsClassicLog
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public bool IsEnabled
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

	public string LogFilePath
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

	public EventLogIsolation LogIsolation
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public EventLogMode LogMode
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

	public string LogName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public EventLogType LogType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public long MaximumSizeInBytes
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

	public string OwningProviderName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int? ProviderBufferSize
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public Guid? ProviderControlGuid
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public long? ProviderKeywords
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

	public int? ProviderLatency
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int? ProviderLevel
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

	public int? ProviderMaximumNumberOfBuffers
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public int? ProviderMinimumNumberOfBuffers
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public IEnumerable<string> ProviderNames
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IEnumerable<string>)0;
		}
	}

	public string SecurityDescriptor
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

	public EventLogConfiguration(string logName)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityCritical]
	public EventLogConfiguration(string logName, EventLogSession session)
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

	public void SaveChanges()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
