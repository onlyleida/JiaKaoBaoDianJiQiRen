using System.Collections;

namespace System.Web.UI.WebControls.WebParts;

public class TypeCollection : ReadOnlyCollectionBase
{
	public static readonly TypeCollection Empty = new TypeCollection();

	public Type this[int index] => (Type)InnerList[index];

	public TypeCollection()
	{
	}

	public TypeCollection(ICollection types)
	{
		InnerList.AddRange(types);
	}

	public TypeCollection(TypeCollection existingTypes, ICollection types)
	{
		InnerList.AddRange(existingTypes.InnerList);
		InnerList.AddRange(types);
	}

	public bool Contains(Type value)
	{
		return InnerList.Contains(value);
	}

	public void CopyTo(Type[] array, int index)
	{
		InnerList.CopyTo(0, array, index, Count);
	}

	public int IndexOf(Type value)
	{
		return InnerList.IndexOf(value);
	}
}
