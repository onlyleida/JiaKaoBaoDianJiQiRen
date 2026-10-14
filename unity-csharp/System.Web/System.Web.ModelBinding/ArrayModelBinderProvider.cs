using Unity;

namespace System.Web.ModelBinding;

public sealed class ArrayModelBinderProvider : ModelBinderProvider
{
	public ArrayModelBinderProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override IModelBinder GetBinder(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
