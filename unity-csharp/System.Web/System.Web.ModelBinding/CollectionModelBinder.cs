using System.Collections.Generic;
using Unity;

namespace System.Web.ModelBinding;

public class CollectionModelBinder<TElement> : IModelBinder
{
	public CollectionModelBinder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual bool BindModel(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected virtual bool CreateOrReplaceCollection(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext, IList<TElement> newCollection)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
