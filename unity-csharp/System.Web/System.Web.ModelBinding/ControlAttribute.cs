using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

[AttributeUsage(AttributeTargets.Parameter, Inherited = false, AllowMultiple = false)]
public sealed class ControlAttribute : ValueProviderSourceAttribute
{
	public string ControlID
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public string PropertyName
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ControlAttribute()
	{
	}

	public ControlAttribute(string controlID)
	{
	}

	public ControlAttribute(string controlID, string propertyName)
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
