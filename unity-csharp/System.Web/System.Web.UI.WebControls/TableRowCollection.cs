using System.Collections;
using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls;

[Editor("System.Web.UI.Design.WebControls.TableRowsCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public sealed class TableRowCollection : IList, ICollection, IEnumerable
{
	private ControlCollection cc;

	private Table owner;

	public int Count => cc.Count;

	public bool IsReadOnly => false;

	public bool IsSynchronized => false;

	public TableRow this[int index] => (TableRow)cc[index];

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

	internal TableRowCollection(Table table)
	{
		if (table == null)
		{
			throw new ArgumentNullException("table");
		}
		cc = table.Controls;
		owner = table;
	}

	public int Add(TableRow row)
	{
		if (row == null)
		{
			throw new NullReferenceException();
		}
		if (row.TableRowSectionSet)
		{
			owner.GenerateTableSections = true;
		}
		row.Container = this;
		int num = cc.IndexOf(row);
		if (num < 0)
		{
			cc.Add(row);
			num = cc.Count;
		}
		return num;
	}

	public void AddAt(int index, TableRow row)
	{
		if (row == null)
		{
			throw new NullReferenceException();
		}
		if (cc.IndexOf(row) < 0)
		{
			if (row.TableRowSectionSet)
			{
				owner.GenerateTableSections = true;
			}
			row.Container = this;
			cc.AddAt(index, row);
		}
	}

	public void AddRange(TableRow[] rows)
	{
		foreach (TableRow tableRow in rows)
		{
			if (tableRow == null)
			{
				throw new NullReferenceException();
			}
			if (cc.IndexOf(tableRow) < 0)
			{
				if (tableRow.TableRowSectionSet)
				{
					owner.GenerateTableSections = true;
				}
				tableRow.Container = this;
				cc.Add(tableRow);
			}
		}
	}

	public void Clear()
	{
		owner.GenerateTableSections = false;
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

	public int GetRowIndex(TableRow row)
	{
		return cc.IndexOf(row);
	}

	internal void RowTableSectionSet()
	{
		owner.GenerateTableSections = true;
	}

	public void Remove(TableRow row)
	{
		if (row != null)
		{
			row.Container = null;
		}
		cc.Remove(row);
	}

	public void RemoveAt(int index)
	{
		TableRow tableRow = this[index];
		if (tableRow != null)
		{
			tableRow.Container = null;
		}
		cc.RemoveAt(index);
	}

	int IList.Add(object value)
	{
		return Add(value as TableRow);
	}

	bool IList.Contains(object value)
	{
		return cc.Contains(value as TableRow);
	}

	int IList.IndexOf(object value)
	{
		return cc.IndexOf(value as TableRow);
	}

	void IList.Insert(int index, object value)
	{
		AddAt(index, value as TableRow);
	}

	void IList.Remove(object value)
	{
		Remove(value as TableRow);
	}

	internal TableRowCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
