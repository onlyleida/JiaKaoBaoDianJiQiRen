using Unity;

namespace System.Web.ModelBinding;

public sealed class FormValueProvider : NameValueCollectionValueProvider
{
	public FormValueProvider(ModelBindingExecutionContext modelBindingExecutionContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
