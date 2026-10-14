using Unity;

namespace System.Web.ModelBinding;

public abstract class ValueProviderSourceAttribute : Attribute, IModelNameProvider, IValueProviderSource
{
	public virtual string GetModelName()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public abstract IValueProvider GetValueProvider(ModelBindingExecutionContext modelBindingExecutionContext);
}
