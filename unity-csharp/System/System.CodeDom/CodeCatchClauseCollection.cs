using System.Collections;

namespace System.CodeDom;

[Serializable]
public class CodeCatchClauseCollection : CollectionBase
{
	public CodeCatchClause this[int index]
	{
		get
		{
			return (CodeCatchClause)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public CodeCatchClauseCollection()
	{
	}

	public CodeCatchClauseCollection(CodeCatchClauseCollection value)
	{
		AddRange(value);
	}

	public CodeCatchClauseCollection(CodeCatchClause[] value)
	{
		AddRange(value);
	}

	public int Add(CodeCatchClause value)
	{
		return List.Add(value);
	}

	public void AddRange(CodeCatchClause[] value)
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

	public void AddRange(CodeCatchClauseCollection value)
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

	public bool Contains(CodeCatchClause value)
	{
		return List.Contains(value);
	}

	public void CopyTo(CodeCatchClause[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(CodeCatchClause value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, CodeCatchClause value)
	{
		List.Insert(index, value);
	}

	public void Remove(CodeCatchClause value)
	{
		List.Remove(value);
	}
}
