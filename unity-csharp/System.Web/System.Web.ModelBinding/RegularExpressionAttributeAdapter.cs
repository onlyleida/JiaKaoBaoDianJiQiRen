using System.ComponentModel.DataAnnotations;
using Unity;

namespace System.Web.ModelBinding;

public sealed class RegularExpressionAttributeAdapter : DataAnnotationsModelValidator<RegularExpressionAttribute>
{
	public RegularExpressionAttributeAdapter(ModelMetadata metadata, ModelBindingExecutionContext context, RegularExpressionAttribute attribute)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override string GetLocalizedErrorMessage(string errorMessage)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
