using Unity;

namespace System.Web.Management;

public sealed class IisTraceWebEventProvider : WebEventProvider
{
	public IisTraceWebEventProvider()
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
