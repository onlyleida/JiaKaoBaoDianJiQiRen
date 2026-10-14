using System.Collections;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.HtmlControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HtmlTableRowCollection : ICollection, IEnumerable
{
	private ControlCollection cc;

	public int Count => cc.Count;

	public bool IsReadOnly => false;

	public bool IsSynchronized => false;

	public HtmlTableRow this[int index] => (HtmlTableRow)cc[index];

	public object SyncRoot => this;

	internal HtmlTableRowCollection(HtmlTable table)
	{
		cc = table.Controls;
	}

	public void Add(HtmlTableRow row)
	{
		cc.Add(row);
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

	public void Insert(int index, HtmlTableRow row)
	{
		cc.AddAt(index, row);
	}

	public void Remove(HtmlTableRow row)
	{
		cc.Remove(row);
	}

	public void RemoveAt(int index)
	{
		cc.RemoveAt(index);
	}

	internal HtmlTableRowCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
