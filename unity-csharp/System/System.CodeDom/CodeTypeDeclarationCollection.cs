using System.Collections;

namespace System.CodeDom;

[Serializable]
public class CodeTypeDeclarationCollection : CollectionBase
{
	public CodeTypeDeclaration this[int index]
	{
		get
		{
			return (CodeTypeDeclaration)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public CodeTypeDeclarationCollection()
	{
	}

	public CodeTypeDeclarationCollection(CodeTypeDeclarationCollection value)
	{
		AddRange(value);
	}

	public CodeTypeDeclarationCollection(CodeTypeDeclaration[] value)
	{
		AddRange(value);
	}

	public int Add(CodeTypeDeclaration value)
	{
		return List.Add(value);
	}

	public void AddRange(CodeTypeDeclaration[] value)
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

	public void AddRange(CodeTypeDeclarationCollection value)
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

	public bool Contains(CodeTypeDeclaration value)
	{
		return List.Contains(value);
	}

	public void CopyTo(CodeTypeDeclaration[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(CodeTypeDeclaration value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, CodeTypeDeclaration value)
	{
		List.Insert(index, value);
	}

	public void Remove(CodeTypeDeclaration value)
	{
		List.Remove(value);
	}
}
