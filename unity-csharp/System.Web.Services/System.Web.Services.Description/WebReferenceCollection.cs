using System.Collections;

namespace System.Web.Services.Description;

public sealed class WebReferenceCollection : CollectionBase
{
	public WebReference this[int index]
	{
		get
		{
			return (WebReference)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public int Add(WebReference webReference)
	{
		return List.Add(webReference);
	}

	public void Insert(int index, WebReference webReference)
	{
		List.Insert(index, webReference);
	}

	public int IndexOf(WebReference webReference)
	{
		return List.IndexOf(webReference);
	}

	public bool Contains(WebReference webReference)
	{
		return List.Contains(webReference);
	}

	public void Remove(WebReference webReference)
	{
		List.Remove(webReference);
	}

	public void CopyTo(WebReference[] array, int index)
	{
		List.CopyTo(array, index);
	}
}
