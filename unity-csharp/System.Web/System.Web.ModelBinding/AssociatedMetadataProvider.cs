using System.Collections.Generic;
using System.ComponentModel;
using Unity;

namespace System.Web.ModelBinding;

public abstract class AssociatedMetadataProvider : ModelMetadataProvider
{
	protected AssociatedMetadataProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected abstract ModelMetadata CreateMetadata(IEnumerable<Attribute> attributes, Type containerType, Func<object> modelAccessor, Type modelType, string propertyName);

	protected virtual IEnumerable<Attribute> FilterAttributes(Type containerType, PropertyDescriptor propertyDescriptor, IEnumerable<Attribute> attributes)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IEnumerable<Attribute>)0;
	}

	public override IEnumerable<ModelMetadata> GetMetadataForProperties(object container, Type containerType)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IEnumerable<ModelMetadata>)0;
	}

	protected virtual ModelMetadata GetMetadataForProperty(Func<object> modelAccessor, Type containerType, PropertyDescriptor propertyDescriptor)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override ModelMetadata GetMetadataForProperty(Func<object> modelAccessor, Type containerType, string propertyName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override ModelMetadata GetMetadataForType(Func<object> modelAccessor, Type modelType)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected virtual ICustomTypeDescriptor GetTypeDescriptor(Type type)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
