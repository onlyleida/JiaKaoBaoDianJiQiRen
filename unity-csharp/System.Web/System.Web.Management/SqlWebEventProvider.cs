using System.Security.Permissions;
using Unity;

namespace System.Web.Management;

[PermissionSet(SecurityAction.InheritanceDemand, Unrestricted = true)]
public class SqlWebEventProvider : BufferedWebEventProvider
{
	protected internal SqlWebEventProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void EventProcessingComplete(WebBaseEventCollection raisedEvents)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override void ProcessEvent(WebBaseEvent eventRaised)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override void ProcessEventFlush(WebEventBufferFlushInfo flushInfo)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override void Shutdown()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
