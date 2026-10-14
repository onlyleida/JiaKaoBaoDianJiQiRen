using System.Collections;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.HtmlControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HtmlTableCellCollection : ICollection, IEnumerable
{
	private ControlCollection cc;

	public int Count => cc.Count;

	public bool IsReadOnly => false;

	public bool IsSynchronized => false;

	public HtmlTableCell this[int index] => (HtmlTableCell)cc[index];

	public object SyncRoot => this;

	internal HtmlTableCellCollection(HtmlTableRow tr)
	{
		cc = tr.Controls;
	}

	public void Add(HtmlTableCell cell)
	{
		cc.Add(cell);
	}

	public void Clear()
	{
		cc.Clear();
	}

	public void CopyTo(Array array, int index)
	{
		cc.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return cc.GetEnumerator();
	}

	public void Insert(int index, HtmlTableCell cell)
	{
		cc.AddAt(index, cell);
	}

	public void Remove(HtmlTableCell cell)
	{
		cc.Remove(cell);
	}

	public void RemoveAt(int index)
	{
		cc.RemoveAt(index);
	}

	internal HtmlTableCellCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
