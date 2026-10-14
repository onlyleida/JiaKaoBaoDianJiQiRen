using System.ComponentModel.DataAnnotations;
using Unity;

namespace System.Web.ModelBinding;

public sealed class StringLengthAttributeAdapter : DataAnnotationsModelValidator<StringLengthAttribute>
{
	public StringLengthAttributeAdapter(ModelMetadata metadata, ModelBindingExecutionContext context, StringLengthAttribute attribute)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override string GetLocalizedErrorMessage(string errorMessage)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
