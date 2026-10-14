using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

[AttributeUsage(AttributeTargets.Parameter, Inherited = false, AllowMultiple = false)]
public sealed class QueryStringAttribute : ValueProviderSourceAttribute, IUnvalidatedValueProviderSource
{
	public string Key
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

	public QueryStringAttribute()
	{
	}

	public QueryStringAttribute(string key)
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
