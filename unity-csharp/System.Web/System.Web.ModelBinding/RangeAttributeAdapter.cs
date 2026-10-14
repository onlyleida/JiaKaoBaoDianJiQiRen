using System.ComponentModel.DataAnnotations;
using Unity;

namespace System.Web.ModelBinding;

public sealed class RangeAttributeAdapter : DataAnnotationsModelValidator<RangeAttribute>
{
	public RangeAttributeAdapter(ModelMetadata metadata, ModelBindingExecutionContext context, RangeAttribute attribute)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override string GetLocalizedErrorMessage(string errorMessage)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
