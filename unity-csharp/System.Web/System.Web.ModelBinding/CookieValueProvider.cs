using Unity;

namespace System.Web.ModelBinding;

public sealed class CookieValueProvider : IUnvalidatedValueProvider, IValueProvider
{
	public CookieValueProvider(ModelBindingExecutionContext modelBindingExecutionContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool ContainsPrefix(string prefix)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public ValueProviderResult GetValue(string key)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public ValueProviderResult GetValue(string key, bool skipValidation)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
