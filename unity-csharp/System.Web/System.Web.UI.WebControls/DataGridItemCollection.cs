using System.Collections;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class DataGridItemCollection : ICollection, IEnumerable
{
	private ArrayList array;

	public int Count => array.Count;

	public bool IsReadOnly => array.IsReadOnly;

	public bool IsSynchronized => array.IsSynchronized;

	public object SyncRoot => array.SyncRoot;

	public DataGridItem this[int index] => (DataGridItem)array[index];

	public DataGridItemCollection(ArrayList items)
	{
		array = items;
	}

	public void CopyTo(Array array, int index)
	{
		if (!(array is DataGridItem[]))
		{
			throw new InvalidCastException("Target array must be DataGridItem[]");
		}
		if (index + this.array.Count > array.Length)
		{
			throw new IndexOutOfRangeException("Target array not large enough to hold copied array.");
		}
		this.array.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return array.GetEnumerator();
	}
}
