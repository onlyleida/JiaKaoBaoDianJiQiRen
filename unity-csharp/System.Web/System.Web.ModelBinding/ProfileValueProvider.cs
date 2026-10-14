using Unity;

namespace System.Web.ModelBinding;

public sealed class ProfileValueProvider : SimpleValueProvider
{
	public ProfileValueProvider(ModelBindingExecutionContext modelBindingExecutionContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override object FetchValue(string key)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
