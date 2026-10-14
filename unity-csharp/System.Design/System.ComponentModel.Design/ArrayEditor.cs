namespace System.ComponentModel.Design;

public class ArrayEditor : CollectionEditor
{
	public ArrayEditor(Type type)
		: base(type)
	{
	}

	protected override Type CreateCollectionItemType()
	{
		return CollectionType.GetElementType();
	}

	protected override object[] GetItems(object editValue)
	{
		if (editValue == null)
		{
			return null;
		}
		if (!(editValue is Array))
		{
			return new object[0];
		}
		Array array = (Array)editValue;
		object[] array2 = new object[array.Length];
		array.CopyTo(array2, 0);
		return array2;
	}

	protected override object SetItems(object editValue, object[] value)
	{
		if (editValue == null)
		{
			return null;
		}
		Array array = Array.CreateInstance(CollectionItemType, value.Length);
		value.CopyTo(array, 0);
		return array;
	}
}
