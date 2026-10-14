using System.Collections;

namespace System.Web;

[Serializable]
public sealed class ParserErrorCollection : CollectionBase
{
	public ParserError this[int index]
	{
		get
		{
			return (ParserError)InnerList[index];
		}
		set
		{
			InnerList[index] = value;
		}
	}

	public ParserErrorCollection()
	{
	}

	public ParserErrorCollection(ParserError[] value)
	{
		InnerList.AddRange(value);
	}

	public int Add(ParserError value)
	{
		return List.Add(value);
	}

	public void AddRange(ParserErrorCollection value)
	{
		InnerList.AddRange(value);
	}

	public void AddRange(ParserError[] value)
	{
		InnerList.AddRange(value);
	}

	public bool Contains(ParserError value)
	{
		return InnerList.Contains(value);
	}

	public void CopyTo(ParserError[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(ParserError value)
	{
		return InnerList.IndexOf(value);
	}

	public void Insert(int index, ParserError value)
	{
		InnerList.Insert(index, value);
	}

	public void Remove(ParserError value)
	{
		InnerList.Remove(value);
	}
}
