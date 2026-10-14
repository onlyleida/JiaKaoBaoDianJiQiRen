using System.Collections;

namespace System.CodeDom;

[Serializable]
public class CodeAttributeDeclarationCollection : CollectionBase
{
	public CodeAttributeDeclaration this[int index]
	{
		get
		{
			return (CodeAttributeDeclaration)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public CodeAttributeDeclarationCollection()
	{
	}

	public CodeAttributeDeclarationCollection(CodeAttributeDeclarationCollection value)
	{
		AddRange(value);
	}

	public CodeAttributeDeclarationCollection(CodeAttributeDeclaration[] value)
	{
		AddRange(value);
	}

	public int Add(CodeAttributeDeclaration value)
	{
		return List.Add(value);
	}

	public void AddRange(CodeAttributeDeclaration[] value)
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

	public void AddRange(CodeAttributeDeclarationCollection value)
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

	public bool Contains(CodeAttributeDeclaration value)
	{
		return List.Contains(value);
	}

	public void CopyTo(CodeAttributeDeclaration[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(CodeAttributeDeclaration value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, CodeAttributeDeclaration value)
	{
		List.Insert(index, value);
	}

	public void Remove(CodeAttributeDeclaration value)
	{
		List.Remove(value);
	}
}
