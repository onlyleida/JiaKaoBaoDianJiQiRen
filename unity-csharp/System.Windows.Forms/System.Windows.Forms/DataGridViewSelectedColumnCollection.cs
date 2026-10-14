using System.Collections;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Windows.Forms;

[ListBindable(false)]
public class DataGridViewSelectedColumnCollection : BaseCollection, IList, ICollection, IEnumerable
{
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

	public DataGridViewColumn this[int index] => (DataGridViewColumn)base.List[index];

	protected override ArrayList List => base.List;

	internal DataGridViewSelectedColumnCollection()
	{
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
		return Contains(value as DataGridViewColumn);
	}

	public bool Contains(DataGridViewColumn dataGridViewColumn)
	{
		return base.List.Contains(dataGridViewColumn);
	}

	public void CopyTo(DataGridViewColumn[] array, int index)
	{
		base.List.CopyTo(array, index);
	}

	int IList.IndexOf(object value)
	{
		return base.List.IndexOf(value);
	}

	void IList.Insert(int index, object value)
	{
		Insert(index, value as DataGridViewColumn);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void Insert(int index, DataGridViewColumn dataGridViewColumn)
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

	internal void InternalAdd(DataGridViewColumn dataGridViewColumn)
	{
		base.List.Add(dataGridViewColumn);
	}

	internal void InternalAddRange(DataGridViewSelectedColumnCollection columns)
	{
		if (columns != null)
		{
			for (int num = columns.Count - 1; num >= 0; num--)
			{
				base.List.Add(columns[num]);
			}
		}
	}

	internal void InternalClear()
	{
		List.Clear();
	}

	internal void InternalRemove(DataGridViewColumn dataGridViewColumn)
	{
		base.List.Remove(dataGridViewColumn);
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
