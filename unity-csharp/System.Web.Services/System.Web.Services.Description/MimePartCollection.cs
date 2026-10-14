using System.Collections;

namespace System.Web.Services.Description;

public sealed class MimePartCollection : CollectionBase
{
	public MimePart this[int index]
	{
		get
		{
			return (MimePart)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public int Add(MimePart mimePart)
	{
		return List.Add(mimePart);
	}

	public void Insert(int index, MimePart mimePart)
	{
		List.Insert(index, mimePart);
	}

	public int IndexOf(MimePart mimePart)
	{
		return List.IndexOf(mimePart);
	}

	public bool Contains(MimePart mimePart)
	{
		return List.Contains(mimePart);
	}

	public void Remove(MimePart mimePart)
	{
		List.Remove(mimePart);
	}

	public void CopyTo(MimePart[] array, int index)
	{
		List.CopyTo(array, index);
	}
}
