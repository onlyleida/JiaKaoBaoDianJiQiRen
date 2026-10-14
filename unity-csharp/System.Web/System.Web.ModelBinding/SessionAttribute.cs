using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

[AttributeUsage(AttributeTargets.Parameter, Inherited = false, AllowMultiple = false)]
public sealed class SessionAttribute : ValueProviderSourceAttribute
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

	public SessionAttribute()
	{
	}

	public SessionAttribute(string name)
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
