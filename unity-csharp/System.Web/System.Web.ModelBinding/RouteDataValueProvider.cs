using Unity;

namespace System.Web.ModelBinding;

public sealed class RouteDataValueProvider : DictionaryValueProvider<object>
{
	public RouteDataValueProvider(ModelBindingExecutionContext modelBindingExecutionContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
