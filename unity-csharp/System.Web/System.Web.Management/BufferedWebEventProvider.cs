using Unity;

namespace System.Web.Management;

public abstract class BufferedWebEventProvider : WebEventProvider
{
	public string BufferMode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public bool UseBuffering
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected BufferedWebEventProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override void Flush()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override void ProcessEvent(WebBaseEvent eventRaised)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract void ProcessEventFlush(WebEventBufferFlushInfo flushInfo);

	public override void Shutdown()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
