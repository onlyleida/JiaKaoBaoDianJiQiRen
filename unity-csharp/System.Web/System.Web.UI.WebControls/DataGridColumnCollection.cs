using System.Collections;
using System.ComponentModel;

namespace System.Web.UI.WebControls;

public sealed class DataGridColumnCollection : ICollection, IEnumerable, IStateManager
{
	private DataGrid owner;

	private ArrayList columns;

	private bool track;

	[Browsable(false)]
	public int Count => columns.Count;

	bool IStateManager.IsTrackingViewState => track;

	[Browsable(false)]
	public bool IsReadOnly => columns.IsReadOnly;

	[Browsable(false)]
	public bool IsSynchronized => columns.IsSynchronized;

	[Browsable(false)]
	public DataGridColumn this[int index] => (DataGridColumn)columns[index];

	[Browsable(false)]
	public object SyncRoot => columns.SyncRoot;

	public DataGridColumnCollection(DataGrid owner, ArrayList columns)
	{
		this.owner = owner;
		this.columns = columns;
	}

	public void Add(DataGridColumn column)
	{
		columns.Add(column);
		column.Set_Owner(owner);
		if (track)
		{
			((IStateManager)column).TrackViewState();
		}
	}

	public void AddAt(int index, DataGridColumn column)
	{
		columns.Insert(index, column);
		column.Set_Owner(owner);
		if (track)
		{
			((IStateManager)column).TrackViewState();
		}
	}

	public void Clear()
	{
		columns.Clear();
	}

	public void CopyTo(Array array, int index)
	{
		columns.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return columns.GetEnumerator();
	}

	public int IndexOf(DataGridColumn column)
	{
		return columns.IndexOf(column);
	}

	[Obsolete("figure out what you need with me")]
	internal void OnColumnsChanged()
	{
	}

	public void Remove(DataGridColumn column)
	{
		columns.Remove(column);
	}

	public void RemoveAt(int index)
	{
		columns.RemoveAt(index);
	}

	void IStateManager.LoadViewState(object savedState)
	{
		object[] array = (object[])savedState;
		if (array == null)
		{
			return;
		}
		int num = 0;
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				((IStateManager)enumerator.Current).LoadViewState(array[num++]);
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	object IStateManager.SaveViewState()
	{
		object[] array = new object[Count];
		int num = 0;
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				IStateManager stateManager = (IStateManager)enumerator.Current;
				array[num++] = stateManager.SaveViewState();
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		object[] array2 = array;
		for (int i = 0; i < array2.Length; i++)
		{
			if (array2[i] != null)
			{
				return array;
			}
		}
		return null;
	}

	void IStateManager.TrackViewState()
	{
		track = true;
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				((IStateManager)enumerator.Current).TrackViewState();
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}
}
