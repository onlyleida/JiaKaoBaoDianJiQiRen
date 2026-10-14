using System.Collections.Generic;
using Unity;

namespace System.Web.ModelBinding;

public class EmptyModelMetadataProvider : AssociatedMetadataProvider
{
	public EmptyModelMetadataProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override ModelMetadata CreateMetadata(IEnumerable<Attribute> attributes, Type containerType, Func<object> modelAccessor, Type modelType, string propertyName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
