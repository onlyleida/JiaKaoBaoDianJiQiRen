using System.Collections;

namespace System.Web.UI.WebControls.WebParts;

public sealed class WebPartVerbCollection : ReadOnlyCollectionBase
{
	public static readonly WebPartVerbCollection Empty = new WebPartVerbCollection();

	public WebPartVerb this[int index] => (WebPartVerb)InnerList[index];

	public WebPartVerbCollection()
	{
	}

	public WebPartVerbCollection(ICollection verbs)
	{
		InnerList.AddRange(verbs);
	}

	public WebPartVerbCollection(WebPartVerbCollection existingVerbs, ICollection verbs)
	{
		InnerList.AddRange(existingVerbs.InnerList);
		InnerList.AddRange(verbs);
	}

	public bool Contains(WebPartVerb value)
	{
		return InnerList.Contains(value);
	}

	public void CopyTo(WebPartVerb[] array, int index)
	{
		InnerList.CopyTo(0, array, index, Count);
	}

	public int IndexOf(WebPartVerb value)
	{
		return InnerList.IndexOf(value);
	}
}
