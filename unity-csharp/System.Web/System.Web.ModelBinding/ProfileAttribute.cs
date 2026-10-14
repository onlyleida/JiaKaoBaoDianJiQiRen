using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

[AttributeUsage(AttributeTargets.Parameter, Inherited = false, AllowMultiple = false)]
public sealed class ProfileAttribute : ValueProviderSourceAttribute
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

	public ProfileAttribute()
	{
	}

	public ProfileAttribute(string key)
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
