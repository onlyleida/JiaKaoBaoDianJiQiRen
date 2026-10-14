using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

public sealed class ControlValueProvider : SimpleValueProvider
{
	public string PropertyName
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ControlValueProvider(ModelBindingExecutionContext modelBindingExecutionContext, string propertyName)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override object FetchValue(string controlId)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
