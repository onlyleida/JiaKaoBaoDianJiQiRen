using System.Collections.Generic;
using Unity;

namespace System.Web.ModelBinding;

public class ValidatableObjectAdapter : ModelValidator
{
	public ValidatableObjectAdapter(ModelMetadata metadata, ModelBindingExecutionContext context)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override IEnumerable<ModelValidationResult> Validate(object container)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IEnumerable<ModelValidationResult>)0;
	}
}
