using Unity;

namespace System.Web.UI.WebControls.WebParts;

public class WebPartConnectionsEventArgs : EventArgs
{
	public WebPartConnection Connection
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPart Consumer
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ConsumerConnectionPoint ConsumerConnectionPoint
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPart Provider
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ProviderConnectionPoint ProviderConnectionPoint
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public WebPartConnectionsEventArgs(WebPart provider, ProviderConnectionPoint providerConnectionPoint, WebPart consumer, ConsumerConnectionPoint consumerConnectionPoint)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public WebPartConnectionsEventArgs(WebPart provider, ProviderConnectionPoint providerConnectionPoint, WebPart consumer, ConsumerConnectionPoint consumerConnectionPoint, WebPartConnection connection)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
