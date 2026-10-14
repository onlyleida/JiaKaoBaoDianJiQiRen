using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing.Reader;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public sealed class EventLogInformation
{
	public int? Attributes
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public DateTime? CreationTime
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public long? FileSize
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public bool? IsLogFull
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public DateTime? LastAccessTime
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public DateTime? LastWriteTime
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public long? OldestRecordNumber
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public long? RecordCount
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal EventLogInformation()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
