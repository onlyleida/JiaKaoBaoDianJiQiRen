using System.ComponentModel.DataAnnotations;
using Unity;

namespace System.Web.ModelBinding;

public sealed class RequiredAttributeAdapter : DataAnnotationsModelValidator<RequiredAttribute>
{
	public RequiredAttributeAdapter(ModelMetadata metadata, ModelBindingExecutionContext context, RequiredAttribute attribute)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
