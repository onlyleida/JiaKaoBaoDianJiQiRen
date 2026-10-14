using System.Collections;

namespace System.Web.UI.WebControls;

public sealed class DataKeyArray : ICollection, IEnumerable, IStateManager
{
	private IList keys;

	private bool trackViewState;

	public int Count => keys.Count;

	public bool IsReadOnly => false;

	public bool IsSynchronized => false;

	public DataKey this[int index] => (DataKey)keys[index];

	public object SyncRoot => this;

	bool IStateManager.IsTrackingViewState => trackViewState;

	internal DataKeyArray(IList keys)
	{
		this.keys = keys;
	}

	public DataKeyArray(ArrayList keys)
	{
		this.keys = keys;
	}

	public void CopyTo(DataKey[] array, int index)
	{
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				DataKey dataKey = (DataKey)enumerator.Current;
				array[index++] = dataKey;
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

	void ICollection.CopyTo(Array array, int index)
	{
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				object current = enumerator.Current;
				array.SetValue(current, index++);
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

	public IEnumerator GetEnumerator()
	{
		return keys.GetEnumerator();
	}

	void IStateManager.LoadViewState(object savedState)
	{
		if (savedState != null)
		{
			object[] array = (object[])savedState;
			for (int i = 0; i < array.Length && i < keys.Count; i++)
			{
				((IStateManager)keys[i]).LoadViewState(array[i]);
			}
		}
	}

	object IStateManager.SaveViewState()
	{
		if (keys.Count == 0)
		{
			return null;
		}
		object[] array = new object[keys.Count];
		for (int i = 0; i < keys.Count; i++)
		{
			array[i] = ((IStateManager)keys[i]).SaveViewState();
		}
		return array;
	}

	void IStateManager.TrackViewState()
	{
		trackViewState = true;
		foreach (IStateManager key in keys)
		{
			key.TrackViewState();
		}
	}
}
