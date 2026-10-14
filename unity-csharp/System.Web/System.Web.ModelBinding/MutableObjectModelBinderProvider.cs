using Unity;

namespace System.Web.ModelBinding;

public sealed class MutableObjectModelBinderProvider : ModelBinderProvider
{
	public MutableObjectModelBinderProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override IModelBinder GetBinder(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
