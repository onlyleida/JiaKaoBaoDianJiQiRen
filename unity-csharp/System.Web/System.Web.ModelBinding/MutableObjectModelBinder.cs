using System.Collections.Generic;
using Unity;

namespace System.Web.ModelBinding;

public class MutableObjectModelBinder : IModelBinder
{
	public MutableObjectModelBinder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual bool BindModel(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected virtual bool CanUpdateProperty(ModelMetadata propertyMetadata)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected virtual object CreateModel(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual void EnsureModel(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual IEnumerable<ModelMetadata> GetMetadataForProperties(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IEnumerable<ModelMetadata>)0;
	}

	protected virtual void SetProperty(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext, ModelMetadata propertyMetadata, ComplexModelResult complexModelResult)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
