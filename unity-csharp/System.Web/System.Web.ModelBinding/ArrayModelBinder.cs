using System.Collections.Generic;
using Unity;

namespace System.Web.ModelBinding;

public class ArrayModelBinder<TElement> : CollectionModelBinder<TElement>
{
	public ArrayModelBinder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override bool CreateOrReplaceCollection(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext, IList<TElement> newCollection)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
