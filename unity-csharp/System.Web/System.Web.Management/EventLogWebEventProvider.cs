using Unity;

namespace System.Web.Management;

public sealed class EventLogWebEventProvider : WebEventProvider
{
	internal EventLogWebEventProvider()
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

	public override void Shutdown()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
