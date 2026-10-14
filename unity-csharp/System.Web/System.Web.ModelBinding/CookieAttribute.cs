using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

[AttributeUsage(AttributeTargets.Parameter, Inherited = false, AllowMultiple = false)]
public sealed class CookieAttribute : ValueProviderSourceAttribute, IUnvalidatedValueProviderSource
{
	public string Name
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public bool ValidateInput
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public CookieAttribute()
	{
	}

	public CookieAttribute(string name)
	{
	}

	public override string GetModelName()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override IValueProvider GetValueProvider(ModelBindingExecutionContext modelBindingExecutionContext)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
