using Unity;

namespace System.Web.ModelBinding;

public sealed class KeyValuePairModelBinder<TKey, TValue> : IModelBinder
{
	public KeyValuePairModelBinder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool BindModel(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
