using System.Collections.Generic;
using System.ComponentModel;
using Unity;

namespace System.Web.ModelBinding;

public abstract class AssociatedValidatorProvider : ModelValidatorProvider
{
	protected AssociatedValidatorProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual ICustomTypeDescriptor GetTypeDescriptor(Type type)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public sealed override IEnumerable<ModelValidator> GetValidators(ModelMetadata metadata, ModelBindingExecutionContext context)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IEnumerable<ModelValidator>)0;
	}

	protected abstract IEnumerable<ModelValidator> GetValidators(ModelMetadata metadata, ModelBindingExecutionContext context, IEnumerable<Attribute> attributes);
}
