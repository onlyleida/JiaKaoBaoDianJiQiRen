namespace System.Xml.Serialization;

internal class ArrayModel : TypeModel
{
	internal TypeModel Element => ModelScope.GetTypeModel(TypeScope.GetArrayElementType(Type, null));

	internal ArrayModel(Type type, TypeDesc typeDesc, ModelScope scope)
		: base(type, typeDesc, scope)
	{
	}
}
