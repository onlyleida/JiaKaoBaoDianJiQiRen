using Unity;

namespace System.Web.ModelBinding;

public sealed class TypeMatchModelBinder : IModelBinder
{
	public TypeMatchModelBinder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool BindModel(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
