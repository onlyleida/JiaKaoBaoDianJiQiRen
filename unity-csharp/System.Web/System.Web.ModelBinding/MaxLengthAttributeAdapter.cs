using System.ComponentModel.DataAnnotations;
using Unity;

namespace System.Web.ModelBinding;

public sealed class MaxLengthAttributeAdapter : DataAnnotationsModelValidator<MaxLengthAttribute>
{
	public MaxLengthAttributeAdapter(ModelMetadata metadata, ModelBindingExecutionContext context, MaxLengthAttribute attribute)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override string GetLocalizedErrorMessage(string errorMessage)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
