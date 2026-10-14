using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.ModelBinding;

public class ComplexModel
{
	public ModelMetadata ModelMetadata
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ReadOnlyCollection<ModelMetadata> PropertyMetadata
	{
		[CompilerGenerated]
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (ReadOnlyCollection<ModelMetadata>)0;
		}
	}

	public IDictionary<ModelMetadata, ComplexModelResult> Results
	{
		[CompilerGenerated]
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (IDictionary<ModelMetadata, ComplexModelResult>)0;
		}
	}

	public ComplexModel(ModelMetadata modelMetadata, IEnumerable<ModelMetadata> propertyMetadata)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
