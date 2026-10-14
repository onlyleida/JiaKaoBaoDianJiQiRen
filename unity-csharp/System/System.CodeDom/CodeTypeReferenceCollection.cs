using System.Collections;

namespace System.CodeDom;

[Serializable]
public class CodeTypeReferenceCollection : CollectionBase
{
	public CodeTypeReference this[int index]
	{
		get
		{
			return (CodeTypeReference)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public CodeTypeReferenceCollection()
	{
	}

	public CodeTypeReferenceCollection(CodeTypeReferenceCollection value)
	{
		AddRange(value);
	}

	public CodeTypeReferenceCollection(CodeTypeReference[] value)
	{
		AddRange(value);
	}

	public int Add(CodeTypeReference value)
	{
		return List.Add(value);
	}

	public void Add(string value)
	{
		Add(new CodeTypeReference(value));
	}

	public void Add(Type value)
	{
		Add(new CodeTypeReference(value));
	}

	public void AddRange(CodeTypeReference[] value)
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

	public void AddRange(CodeTypeReferenceCollection value)
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

	public bool Contains(CodeTypeReference value)
	{
		return List.Contains(value);
	}

	public void CopyTo(CodeTypeReference[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(CodeTypeReference value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, CodeTypeReference value)
	{
		List.Insert(index, value);
	}

	public void Remove(CodeTypeReference value)
	{
		List.Remove(value);
	}
}
