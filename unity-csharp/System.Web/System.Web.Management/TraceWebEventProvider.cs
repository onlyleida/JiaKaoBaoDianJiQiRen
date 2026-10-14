using Unity;

namespace System.Web.Management;

public sealed class TraceWebEventProvider : WebEventProvider
{
	internal TraceWebEventProvider()
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
