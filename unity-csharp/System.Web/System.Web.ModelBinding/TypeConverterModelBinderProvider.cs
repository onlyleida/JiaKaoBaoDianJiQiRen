using Unity;

namespace System.Web.ModelBinding;

public sealed class TypeConverterModelBinderProvider : ModelBinderProvider
{
	public TypeConverterModelBinderProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override IModelBinder GetBinder(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
