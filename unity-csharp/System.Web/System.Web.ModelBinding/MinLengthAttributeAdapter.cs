using System.ComponentModel.DataAnnotations;
using Unity;

namespace System.Web.ModelBinding;

public sealed class MinLengthAttributeAdapter : DataAnnotationsModelValidator<MinLengthAttribute>
{
	public MinLengthAttributeAdapter(ModelMetadata metadata, ModelBindingExecutionContext context, MinLengthAttribute attribute)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override string GetLocalizedErrorMessage(string errorMessage)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
