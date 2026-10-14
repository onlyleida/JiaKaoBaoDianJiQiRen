using System.Collections;

namespace System.Web.UI.WebControls;

public class GridViewRowCollection : ICollection, IEnumerable
{
	private ArrayList rows = new ArrayList();

	public GridViewRow this[int index] => (GridViewRow)rows[index];

	public int Count => rows.Count;

	public bool IsReadOnly => false;

	public bool IsSynchronized => false;

	public object SyncRoot => this;

	public GridViewRowCollection(ArrayList rows)
	{
		this.rows = rows;
	}

	public void CopyTo(GridViewRow[] array, int index)
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
