using System.Collections.Generic;
using Unity;

namespace System.Web.ModelBinding;

public abstract class ModelMetadataProvider
{
	protected ModelMetadataProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract IEnumerable<ModelMetadata> GetMetadataForProperties(object container, Type containerType);

	public abstract ModelMetadata GetMetadataForProperty(Func<object> modelAccessor, Type containerType, string propertyName);

	public abstract ModelMetadata GetMetadataForType(Func<object> modelAccessor, Type modelType);
}
