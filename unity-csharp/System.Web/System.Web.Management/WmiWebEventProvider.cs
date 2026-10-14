using Unity;

namespace System.Web.Management;

public class WmiWebEventProvider : WebEventProvider
{
	public WmiWebEventProvider()
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
