namespace System.Web.ModelBinding;

public interface IValueProviderSource
{
	IValueProvider GetValueProvider(ModelBindingExecutionContext modelBindingExecutionContext);
}
