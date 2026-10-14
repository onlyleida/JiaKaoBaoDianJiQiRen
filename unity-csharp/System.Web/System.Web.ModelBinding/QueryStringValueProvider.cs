using Unity;

namespace System.Web.ModelBinding;

public sealed class QueryStringValueProvider : NameValueCollectionValueProvider
{
	public QueryStringValueProvider(ModelBindingExecutionContext modelBindingExecutionContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
