using System.Collections;

namespace System.CodeDom;

[Serializable]
public class CodeDirectiveCollection : CollectionBase
{
	public CodeDirective this[int index]
	{
		get
		{
			return (CodeDirective)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public CodeDirectiveCollection()
	{
	}

	public CodeDirectiveCollection(CodeDirectiveCollection value)
	{
		AddRange(value);
	}

	public CodeDirectiveCollection(CodeDirective[] value)
	{
		AddRange(value);
	}

	public int Add(CodeDirective value)
	{
		return List.Add(value);
	}

	public void AddRange(CodeDirective[] value)
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

	public void AddRange(CodeDirectiveCollection value)
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

	public bool Contains(CodeDirective value)
	{
		return List.Contains(value);
	}

	public void CopyTo(CodeDirective[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(CodeDirective value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, CodeDirective value)
	{
		List.Insert(index, value);
	}

	public void Remove(CodeDirective value)
	{
		List.Remove(value);
	}
}
