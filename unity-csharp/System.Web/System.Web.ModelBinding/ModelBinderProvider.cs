using Unity;

namespace System.Web.ModelBinding;

public abstract class ModelBinderProvider
{
	protected ModelBinderProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract IModelBinder GetBinder(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext);
}
