using System.Collections.Generic;
using Unity;

namespace System.Web.ModelBinding;

public class DictionaryModelBinder<TKey, TValue> : CollectionModelBinder<KeyValuePair<TKey, TValue>>
{
	public DictionaryModelBinder()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override bool CreateOrReplaceCollection(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext, IList<KeyValuePair<TKey, TValue>> newCollection)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
