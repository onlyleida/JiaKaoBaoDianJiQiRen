using System.Collections;
using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls;

[Editor("System.Web.UI.Design.WebControls.TableCellsCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public sealed class TableCellCollection : IList, ICollection, IEnumerable
{
	private ControlCollection cc;

	public int Count => cc.Count;

	public bool IsReadOnly => false;

	public bool IsSynchronized => false;

	public TableCell this[int index] => (TableCell)cc[index];

	public object SyncRoot => this;

	bool IList.IsFixedSize => false;

	object IList.this[int index]
	{
		get
		{
			return cc[index];
		}
		set
		{
			cc.AddAt(index, (TableRow)value);
			cc.RemoveAt(index + 1);
		}
	}

	internal TableCellCollection(TableRow tr)
	{
		cc = tr.Controls;
	}

	public int Add(TableCell cell)
	{
		int num = cc.IndexOf(cell);
		if (num < 0)
		{
			cc.Add(cell);
			num = cc.Count;
		}
		return num;
	}

	public void AddAt(int index, TableCell cell)
	{
		if (cc.IndexOf(cell) < 0)
		{
			cc.AddAt(index, cell);
		}
	}

	public void AddRange(TableCell[] cells)
	{
		foreach (TableCell tableCell in cells)
		{
			if (cc.IndexOf(tableCell) < 0)
			{
				cc.Add(tableCell);
			}
		}
	}

	public void Clear()
	{
		cc.Clear();
	}

	public void CopyTo(Array array, int index)
	{
		cc.CopyTo(array, index);
	}

	public int GetCellIndex(TableCell cell)
	{
		return cc.IndexOf(cell);
	}

	public IEnumerator GetEnumerator()
	{
		return cc.GetEnumerator();
	}

	public void Remove(TableCell cell)
	{
		cc.Remove(cell);
	}

	public void RemoveAt(int index)
	{
		cc.RemoveAt(index);
	}

	int IList.Add(object value)
	{
		cc.Add((TableRow)value);
		return cc.IndexOf((TableRow)value);
	}

	bool IList.Contains(object value)
	{
		return cc.Contains((TableRow)value);
	}

	int IList.IndexOf(object value)
	{
		return cc.IndexOf((TableRow)value);
	}

	void IList.Insert(int index, object value)
	{
		cc.AddAt(index, (TableRow)value);
	}

	void IList.Remove(object value)
	{
		cc.Remove((TableRow)value);
	}

	internal TableCellCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
