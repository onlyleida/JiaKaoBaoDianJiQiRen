using System.Collections;

namespace System.DirectoryServices;

public class ResultPropertyValueCollection : ReadOnlyCollectionBase
{
	public virtual object this[int index] => InnerList[index];

	internal ResultPropertyValueCollection()
	{
	}

	internal void Add(object component)
	{
		InnerList.Add(component);
	}

	internal void AddRange(object[] components)
	{
		InnerList.AddRange(components);
	}

	public bool Contains(object value)
	{
		return InnerList.Contains(value);
	}

	public void CopyTo(object[] values, int index)
	{
		InnerList.CopyTo(values, index);
	}

	public int IndexOf(object value)
	{
		return InnerList.IndexOf(value);
	}
}
