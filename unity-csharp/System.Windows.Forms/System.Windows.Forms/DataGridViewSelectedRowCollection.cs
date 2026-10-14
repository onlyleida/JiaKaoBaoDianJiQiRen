using System.Collections;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Windows.Forms;

[ListBindable(false)]
public class DataGridViewSelectedRowCollection : BaseCollection, IList, ICollection, IEnumerable
{
	private DataGridView dataGridView;

	bool IList.IsFixedSize => base.List.IsFixedSize;

	object IList.this[int index]
	{
		get
		{
			return this[index];
		}
		set
		{
			throw new NotSupportedException("Can't insert or modify this collection.");
		}
	}

	public DataGridViewRow this[int index] => (DataGridViewRow)base.List[index];

	protected override ArrayList List => base.List;

	internal DataGridViewSelectedRowCollection(DataGridView dataGridView)
	{
		this.dataGridView = dataGridView;
	}

	int IList.Add(object value)
	{
		throw new NotSupportedException("Can't add elements to this collection.");
	}

	void IList.Clear()
	{
		Clear();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void Clear()
	{
		throw new NotSupportedException("This collection cannot be cleared.");
	}

	bool IList.Contains(object value)
	{
		return Contains(value as DataGridViewRow);
	}

	public bool Contains(DataGridViewRow dataGridViewRow)
	{
		return base.List.Contains(dataGridViewRow);
	}

	public void CopyTo(DataGridViewRow[] array, int index)
	{
		base.List.CopyTo(array, index);
	}

	int IList.IndexOf(object value)
	{
		return base.List.IndexOf(value);
	}

	void IList.Insert(int index, object value)
	{
		Insert(index, value as DataGridViewRow);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void Insert(int index, DataGridViewRow dataGridViewRow)
	{
		throw new NotSupportedException("Insert is not allowed.");
	}

	void IList.Remove(object value)
	{
		throw new NotSupportedException("Can't remove elements of this collection.");
	}

	void IList.RemoveAt(int index)
	{
		throw new NotSupportedException("Can't remove elements of this collection.");
	}

	internal void InternalAdd(DataGridViewRow dataGridViewRow)
	{
		base.List.Add(dataGridViewRow);
	}

	internal void InternalAddRange(DataGridViewSelectedRowCollection rows)
	{
		if (rows == null)
		{
			return;
		}
		DataGridViewRow dataGridViewRow = ((dataGridView != null) ? dataGridView.EditingRow : null);
		for (int num = rows.Count - 1; num >= 0; num--)
		{
			if (rows[num] != dataGridViewRow)
			{
				base.List.Add(rows[num]);
			}
		}
	}

	internal void InternalClear()
	{
		List.Clear();
	}

	internal void InternalRemove(DataGridViewRow dataGridViewRow)
	{
		base.List.Remove(dataGridViewRow);
	}

	internal DataGridViewSelectedRowCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	int ICollection.get_Count()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[SpecialName]
	bool ICollection.get_IsSynchronized()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[SpecialName]
	object ICollection.get_SyncRoot()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[SpecialName]
	bool IList.get_IsReadOnly()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	void ICollection.CopyTo(Array array, int index)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
