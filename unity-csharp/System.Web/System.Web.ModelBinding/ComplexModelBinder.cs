using Unity;

namespace System.Web.ModelBinding;

public sealed class ComplexModelBinder : IModelBinder
{
	public ComplexModelBinder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool BindModel(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
