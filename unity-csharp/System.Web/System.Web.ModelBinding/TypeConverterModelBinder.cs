using Unity;

namespace System.Web.ModelBinding;

public sealed class TypeConverterModelBinder : IModelBinder
{
	public TypeConverterModelBinder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool BindModel(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
