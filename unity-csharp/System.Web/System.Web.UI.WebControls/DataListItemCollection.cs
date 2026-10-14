using System.Collections;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class DataListItemCollection : ICollection, IEnumerable
{
	private ArrayList list;

	public int Count => list.Count;

	public bool IsReadOnly => false;

	public bool IsSynchronized => false;

	public DataListItem this[int index] => (DataListItem)list[index];

	public object SyncRoot => this;

	public DataListItemCollection(ArrayList items)
	{
		list = items;
	}

	public void CopyTo(Array array, int index)
	{
		list.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return list.GetEnumerator();
	}
}
