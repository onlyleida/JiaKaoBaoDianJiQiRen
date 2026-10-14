using System.Collections;

namespace System.CodeDom;

[Serializable]
public class CodeTypeParameterCollection : CollectionBase
{
	public CodeTypeParameter this[int index]
	{
		get
		{
			return (CodeTypeParameter)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public CodeTypeParameterCollection()
	{
	}

	public CodeTypeParameterCollection(CodeTypeParameterCollection value)
	{
		AddRange(value);
	}

	public CodeTypeParameterCollection(CodeTypeParameter[] value)
	{
		AddRange(value);
	}

	public int Add(CodeTypeParameter value)
	{
		return List.Add(value);
	}

	public void Add(string value)
	{
		Add(new CodeTypeParameter(value));
	}

	public void AddRange(CodeTypeParameter[] value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		for (int i = 0; i < value.Length; i++)
		{
			Add(value[i]);
		}
	}

	public void AddRange(CodeTypeParameterCollection value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		int count = value.Count;
		for (int i = 0; i < count; i++)
		{
			Add(value[i]);
		}
	}

	public bool Contains(CodeTypeParameter value)
	{
		return List.Contains(value);
	}

	public void CopyTo(CodeTypeParameter[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(CodeTypeParameter value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, CodeTypeParameter value)
	{
		List.Insert(index, value);
	}

	public void Remove(CodeTypeParameter value)
	{
		List.Remove(value);
	}
}
