using System.Collections;

namespace System.CodeDom;

[Serializable]
public class CodeParameterDeclarationExpressionCollection : CollectionBase
{
	public CodeParameterDeclarationExpression this[int index]
	{
		get
		{
			return (CodeParameterDeclarationExpression)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public CodeParameterDeclarationExpressionCollection()
	{
	}

	public CodeParameterDeclarationExpressionCollection(CodeParameterDeclarationExpressionCollection value)
	{
		AddRange(value);
	}

	public CodeParameterDeclarationExpressionCollection(CodeParameterDeclarationExpression[] value)
	{
		AddRange(value);
	}

	public int Add(CodeParameterDeclarationExpression value)
	{
		return List.Add(value);
	}

	public void AddRange(CodeParameterDeclarationExpression[] value)
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

	public void AddRange(CodeParameterDeclarationExpressionCollection value)
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

	public bool Contains(CodeParameterDeclarationExpression value)
	{
		return List.Contains(value);
	}

	public void CopyTo(CodeParameterDeclarationExpression[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(CodeParameterDeclarationExpression value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, CodeParameterDeclarationExpression value)
	{
		List.Insert(index, value);
	}

	public void Remove(CodeParameterDeclarationExpression value)
	{
		List.Remove(value);
	}
}
