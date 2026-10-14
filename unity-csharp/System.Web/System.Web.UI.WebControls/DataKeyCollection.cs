using System.Collections;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class DataKeyCollection : ICollection, IEnumerable
{
	private ArrayList list;

	public int Count => list.Count;

	public bool IsReadOnly => false;

	public bool IsSynchronized => false;

	public object this[int index] => list[index];

	public object SyncRoot => this;

	public DataKeyCollection(ArrayList keys)
	{
		list = keys;
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
