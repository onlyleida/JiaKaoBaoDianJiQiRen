using Unity;

namespace System.Web.Management;

public abstract class MailWebEventProvider : BufferedWebEventProvider
{
	internal MailWebEventProvider()
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
