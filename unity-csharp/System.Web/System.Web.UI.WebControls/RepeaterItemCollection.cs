using System.Collections;

namespace System.Web.UI.WebControls;

public sealed class RepeaterItemCollection : ICollection, IEnumerable
{
	private ArrayList l;

	public int Count => l.Count;

	public bool IsReadOnly => false;

	public bool IsSynchronized => false;

	public RepeaterItem this[int index] => (RepeaterItem)l[index];

	public object SyncRoot => l.SyncRoot;

	public RepeaterItemCollection(ArrayList items)
	{
		l = items;
	}

	public void CopyTo(Array array, int index)
	{
		l.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return l.GetEnumerator();
	}
}
