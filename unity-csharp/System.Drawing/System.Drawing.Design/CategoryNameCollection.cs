using System.Collections;

namespace System.Drawing.Design;

public sealed class CategoryNameCollection : ReadOnlyCollectionBase
{
	public string this[int index] => (string)InnerList[index];

	public CategoryNameCollection(CategoryNameCollection value)
	{
		InnerList.AddRange(value);
	}

	public CategoryNameCollection(string[] value)
	{
		InnerList.AddRange(value);
	}

	public bool Contains(string value)
	{
		return InnerList.Contains(value);
	}

	public void CopyTo(string[] array, int index)
	{
		InnerList.CopyTo(array, index);
	}

	public int IndexOf(string value)
	{
		return InnerList.IndexOf(value);
	}
}
