using System.Collections;

namespace System.Web.UI.WebControls;

public class DetailsViewRowCollection : ICollection, IEnumerable
{
	private ArrayList rows = new ArrayList();

	public DetailsViewRow this[int index] => (DetailsViewRow)rows[index];

	public int Count => rows.Count;

	public bool IsSynchronized => false;

	public object SyncRoot => this;

	public bool IsReadOnly => false;

	public DetailsViewRowCollection(ArrayList rows)
	{
		this.rows = rows;
	}

	public void CopyTo(DetailsViewRow[] array, int index)
	{
		rows.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return rows.GetEnumerator();
	}

	void ICollection.CopyTo(Array array, int index)
	{
		rows.CopyTo(array, index);
	}
}
