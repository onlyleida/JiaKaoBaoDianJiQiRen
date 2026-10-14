using Unity;

namespace System.Web.ModelBinding;

public sealed class KeyValuePairModelBinderProvider : ModelBinderProvider
{
	public KeyValuePairModelBinderProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override IModelBinder GetBinder(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
