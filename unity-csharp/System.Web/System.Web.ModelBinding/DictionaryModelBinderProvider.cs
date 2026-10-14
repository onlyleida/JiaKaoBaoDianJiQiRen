using Unity;

namespace System.Web.ModelBinding;

public sealed class DictionaryModelBinderProvider : ModelBinderProvider
{
	public DictionaryModelBinderProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override IModelBinder GetBinder(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
