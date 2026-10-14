using Unity;

namespace System.Web.UI.WebControls.WebParts;

public sealed class WebPartTracker : IDisposable
{
	public bool IsCircularConnection
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public WebPartTracker(WebPart webPart, ProviderConnectionPoint providerConnectionPoint)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void IDisposable.Dispose()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
