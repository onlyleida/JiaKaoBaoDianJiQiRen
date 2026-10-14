using Unity;

namespace System.Web.UI.WebControls.WebParts;

public abstract class WebPartTransformer
{
	protected WebPartTransformer()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual Control CreateConfigurationControl()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected internal virtual void LoadConfigurationState(object savedState)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected internal virtual object SaveConfigurationState()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public abstract object Transform(object providerData);
}
