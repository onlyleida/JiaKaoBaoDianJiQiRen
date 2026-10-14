using System.Globalization;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

public abstract class SimpleValueProvider : IValueProvider
{
	protected ModelBindingExecutionContext ModelBindingExecutionContext
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected SimpleValueProvider(ModelBindingExecutionContext modelBindingExecutionContext)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected SimpleValueProvider(ModelBindingExecutionContext modelBindingExecutionContext, CultureInfo cultureInfo)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual bool ContainsPrefix(string prefix)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected abstract object FetchValue(string key);

	public virtual ValueProviderResult GetValue(string key)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
