using Unity;

namespace System.Web.ModelBinding;

[ModelBinderProviderOptions(FrontOfList = true)]
public sealed class TypeMatchModelBinderProvider : ModelBinderProvider
{
	public TypeMatchModelBinderProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override IModelBinder GetBinder(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
