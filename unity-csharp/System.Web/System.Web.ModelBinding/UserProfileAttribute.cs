using Unity;

namespace System.Web.ModelBinding;

[AttributeUsage(AttributeTargets.Parameter, Inherited = false, AllowMultiple = false)]
public sealed class UserProfileAttribute : Attribute, IValueProviderSource
{
	public IValueProvider GetValueProvider(ModelBindingExecutionContext modelBindingExecutionContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
