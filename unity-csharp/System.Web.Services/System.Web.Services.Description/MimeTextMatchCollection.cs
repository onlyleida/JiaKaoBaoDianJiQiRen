using System.Collections;

namespace System.Web.Services.Description;

public sealed class MimeTextMatchCollection : CollectionBase
{
	public MimeTextMatch this[int index]
	{
		get
		{
			return (MimeTextMatch)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public int Add(MimeTextMatch match)
	{
		return List.Add(match);
	}

	public void Insert(int index, MimeTextMatch match)
	{
		List.Insert(index, match);
	}

	public int IndexOf(MimeTextMatch match)
	{
		return List.IndexOf(match);
	}

	public bool Contains(MimeTextMatch match)
	{
		return List.Contains(match);
	}

	public void Remove(MimeTextMatch match)
	{
		List.Remove(match);
	}

	public void CopyTo(MimeTextMatch[] array, int index)
	{
		List.CopyTo(array, index);
	}
}
