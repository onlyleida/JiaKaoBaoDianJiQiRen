using System.Collections;

namespace System.ComponentModel.Design.Serialization;

internal class CodeDomSerializationProvider : IDesignerSerializationProvider
{
	private static CodeDomSerializationProvider _instance;

	private CodeDomSerializerBase _componentSerializer;

	private CodeDomSerializerBase _propertySerializer;

	private CodeDomSerializerBase _eventSerializer;

	private CodeDomSerializerBase _primitiveSerializer;

	private CodeDomSerializerBase _collectionSerializer;

	private CodeDomSerializerBase _rootSerializer;

	private CodeDomSerializerBase _enumSerializer;

	private CodeDomSerializerBase _othersSerializer;

	public static CodeDomSerializationProvider Instance
	{
		get
		{
			if (_instance == null)
			{
				_instance = new CodeDomSerializationProvider();
			}
			return _instance;
		}
	}

	public CodeDomSerializationProvider()
	{
		_componentSerializer = new ComponentCodeDomSerializer();
		_propertySerializer = new PropertyCodeDomSerializer();
		_eventSerializer = new EventCodeDomSerializer();
		_collectionSerializer = new CollectionCodeDomSerializer();
		_primitiveSerializer = new PrimitiveCodeDomSerializer();
		_rootSerializer = new RootCodeDomSerializer();
		_enumSerializer = new EnumCodeDomSerializer();
		_othersSerializer = new CodeDomSerializer();
	}

	public object GetSerializer(IDesignerSerializationManager manager, object currentSerializer, Type objectType, Type serializerType)
	{
		CodeDomSerializerBase result = null;
		if (serializerType == typeof(CodeDomSerializer))
		{
			if (objectType == null)
			{
				result = _primitiveSerializer;
			}
			else if (typeof(IComponent).IsAssignableFrom(objectType))
			{
				result = _componentSerializer;
			}
			else if (!objectType.IsEnum && !typeof(Enum).IsAssignableFrom(objectType))
			{
				if (!objectType.IsPrimitive && !(objectType == typeof(string)))
				{
					result = ((!typeof(ICollection).IsAssignableFrom(objectType)) ? _othersSerializer : _collectionSerializer);
				}
				else
				{
					result = _primitiveSerializer;
				}
			}
			else
			{
				result = _enumSerializer;
			}
		}
		else if (serializerType == typeof(MemberCodeDomSerializer))
		{
			if (typeof(PropertyDescriptor).IsAssignableFrom(objectType))
			{
				result = _propertySerializer;
			}
			else if (typeof(EventDescriptor).IsAssignableFrom(objectType))
			{
				result = _eventSerializer;
			}
		}
		else if (serializerType == typeof(RootCodeDomSerializer))
		{
			result = _rootSerializer;
		}
		return result;
	}
}
