namespace System.ComponentModel.DataAnnotations;

public class AssociatedMetadataTypeTypeDescriptionProvider : TypeDescriptionProvider
{
	private Type _associatedMetadataType;

	public AssociatedMetadataTypeTypeDescriptionProvider(Type type)
		: base(TypeDescriptor.GetProvider(type))
	{
	}

	public AssociatedMetadataTypeTypeDescriptionProvider(Type type, Type associatedMetadataType)
		: this(type)
	{
		if (associatedMetadataType == null)
		{
			throw new ArgumentNullException("associatedMetadataType");
		}
		_associatedMetadataType = associatedMetadataType;
	}

	public override ICustomTypeDescriptor GetTypeDescriptor(Type objectType, object instance)
	{
		return new AssociatedMetadataTypeTypeDescriptor(base.GetTypeDescriptor(objectType, instance), objectType, _associatedMetadataType);
	}
}
