using System.Collections.Generic;
using System.Collections.ObjectModel;
using Unity;

namespace System.Web.ModelBinding;

public class ModelValidatorProviderCollection : Collection<ModelValidatorProvider>
{
	public ModelValidatorProviderCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public ModelValidatorProviderCollection(IList<ModelValidatorProvider> list)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public IEnumerable<ModelValidator> GetValidators(ModelMetadata metadata, ModelBindingExecutionContext context)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IEnumerable<ModelValidator>)0;
	}

	protected override void InsertItem(int index, ModelValidatorProvider item)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void SetItem(int index, ModelValidatorProvider item)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
