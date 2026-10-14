using System.Configuration.Provider;
using Unity;

namespace System.Web.Management;

public abstract class WebEventProvider : ProviderBase
{
	protected WebEventProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract void Flush();

	public abstract void ProcessEvent(WebBaseEvent raisedEvent);

	public abstract void Shutdown();
}
