using Unity;

namespace System.Web.ModelBinding;

public sealed class ViewStateValueProvider : SimpleValueProvider
{
	public ViewStateValueProvider(ModelBindingExecutionContext modelBindingExecutionContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override object FetchValue(string key)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
