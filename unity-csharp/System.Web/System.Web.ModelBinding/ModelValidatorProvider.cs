using System.Collections.Generic;
using Unity;

namespace System.Web.ModelBinding;

public abstract class ModelValidatorProvider
{
	protected ModelValidatorProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract IEnumerable<ModelValidator> GetValidators(ModelMetadata metadata, ModelBindingExecutionContext context);
}
