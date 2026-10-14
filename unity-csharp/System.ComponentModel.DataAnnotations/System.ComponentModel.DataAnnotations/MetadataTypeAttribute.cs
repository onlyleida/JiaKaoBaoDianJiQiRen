namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Class, AllowMultiple = false)]
public sealed class MetadataTypeAttribute : Attribute
{
	private Type _metadataClassType;

	public Type MetadataClassType
	{
		get
		{
			if (_metadataClassType == null)
			{
				throw new InvalidOperationException("MetadataClassType cannot be null.");
			}
			return _metadataClassType;
		}
	}

	public MetadataTypeAttribute(Type metadataClassType)
	{
		_metadataClassType = metadataClassType;
	}
}
