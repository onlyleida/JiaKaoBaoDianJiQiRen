using System.Collections;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Windows.Forms;

[ListBindable(false)]
public class DataGridViewSelectedCellCollection : BaseCollection, IList, ICollection, IEnumerable
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
			throw new NotSupportedException();
		}
	}

	public DataGridViewCell this[int index] => (DataGridViewCell)base.List[index];

	protected override ArrayList List => base.List;

	internal DataGridViewSelectedCellCollection()
	{
	}

	int IList.Add(object value)
	{
		throw new NotSupportedException();
	}

	void IList.Clear()
	{
		Clear();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void Clear()
	{
		throw new NotSupportedException("Cannot clear this base.List");
	}

	bool IList.Contains(object value)
	{
		return Contains(value as DataGridViewCell);
	}

	public bool Contains(DataGridViewCell dataGridViewCell)
	{
		return base.List.Contains(dataGridViewCell);
	}

	public void CopyTo(DataGridViewCell[] array, int index)
	{
		base.List.CopyTo(array, index);
	}

	int IList.IndexOf(object value)
	{
		return base.List.IndexOf(value as DataGridViewCell);
	}

	void IList.Insert(int index, object value)
	{
		Insert(index, value as DataGridViewCell);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void Insert(int index, DataGridViewCell dataGridViewCell)
	{
		throw new NotSupportedException("Can't insert to selected cell base.List");
	}

	void IList.Remove(object value)
	{
		throw new NotSupportedException("Can't remove elements of selected cell base.List.");
	}

	void IList.RemoveAt(int index)
	{
		throw new NotSupportedException("Can't remove elements of selected cell base.List.");
	}

	internal void InternalAdd(DataGridViewCell dataGridViewCell)
	{
		base.List.Add(dataGridViewCell);
	}

	internal void InternalRemove(DataGridViewCell dataGridViewCell)
	{
		base.List.Remove(dataGridViewCell);
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
