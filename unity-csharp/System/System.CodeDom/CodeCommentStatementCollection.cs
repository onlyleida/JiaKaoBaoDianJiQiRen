using System.Collections;

namespace System.CodeDom;

[Serializable]
public class CodeCommentStatementCollection : CollectionBase
{
	public CodeCommentStatement this[int index]
	{
		get
		{
			return (CodeCommentStatement)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public CodeCommentStatementCollection()
	{
	}

	public CodeCommentStatementCollection(CodeCommentStatementCollection value)
	{
		AddRange(value);
	}

	public CodeCommentStatementCollection(CodeCommentStatement[] value)
	{
		AddRange(value);
	}

	public int Add(CodeCommentStatement value)
	{
		return List.Add(value);
	}

	public void AddRange(CodeCommentStatement[] value)
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

	public void AddRange(CodeCommentStatementCollection value)
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

	public bool Contains(CodeCommentStatement value)
	{
		return List.Contains(value);
	}

	public void CopyTo(CodeCommentStatement[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(CodeCommentStatement value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, CodeCommentStatement value)
	{
		List.Insert(index, value);
	}

	public void Remove(CodeCommentStatement value)
	{
		List.Remove(value);
	}
}
