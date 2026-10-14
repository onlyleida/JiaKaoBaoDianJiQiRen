using Unity;

namespace System.Web.ModelBinding;

public sealed class UserProfileValueProvider : SimpleValueProvider
{
	public UserProfileValueProvider(ModelBindingExecutionContext modelBindingExecutionContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override object FetchValue(string key)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
