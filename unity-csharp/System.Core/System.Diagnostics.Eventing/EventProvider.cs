using System.Security;
using System.Security.Permissions;
using Unity;

namespace System.Diagnostics.Eventing;

[HostProtection(SecurityAction.LinkDemand, MayLeakOnAbort = true)]
public class EventProvider : IDisposable
{
	public enum WriteEventErrorCode
	{
		EventTooBig = 2,
		NoError = 0,
		NoFreeBuffers = 1
	}

	[SecuritySafeCritical]
	[PermissionSet(SecurityAction.Demand, Unrestricted = true)]
	public EventProvider(Guid providerGuid)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void Close()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityCritical]
	public static Guid CreateActivityId()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
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

	public static WriteEventErrorCode GetLastWriteEventError()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool IsEnabled()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool IsEnabled(byte level, long keywords)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[SecurityCritical]
	public static void SetActivityId(ref Guid id)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SecurityCritical]
	protected bool WriteEvent(ref EventDescriptor eventDescriptor, int dataCount, IntPtr data)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool WriteEvent(ref EventDescriptor eventDescriptor, object[] eventPayload)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[SecurityCritical]
	public bool WriteEvent(ref EventDescriptor eventDescriptor, string data)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public bool WriteMessageEvent(string eventMessage)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[SecurityCritical]
	public bool WriteMessageEvent(string eventMessage, byte eventLevel, long eventKeywords)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[SecurityCritical]
	protected bool WriteTransferEvent(ref EventDescriptor eventDescriptor, Guid relatedActivityId, int dataCount, IntPtr data)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[SecurityCritical]
	public bool WriteTransferEvent(ref EventDescriptor eventDescriptor, Guid relatedActivityId, object[] eventPayload)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
