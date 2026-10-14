using System.Collections;
using System.Collections.Generic;

namespace System.Web.UI;

public abstract class StateManagedCollection : IList, ICollection, IEnumerable, IStateManager
{
	private ArrayList items = new ArrayList();

	private bool saveEverything;

	private bool isTrackingViewState;

	bool IStateManager.IsTrackingViewState => isTrackingViewState;

	public int Count => items.Count;

	int ICollection.Count => items.Count;

	bool ICollection.IsSynchronized => false;

	object ICollection.SyncRoot => this;

	bool IList.IsFixedSize => false;

	bool IList.IsReadOnly => false;

	object IList.this[int index]
	{
		get
		{
			return items[index];
		}
		set
		{
			if (index < 0 || index >= Count)
			{
				throw new ArgumentOutOfRangeException("index");
			}
			OnValidate(value);
			if (isTrackingViewState)
			{
				((IStateManager)value).TrackViewState();
				SetDirty();
			}
			items[index] = value;
		}
	}

	protected virtual object CreateKnownType(int index)
	{
		return null;
	}

	public void SetDirty()
	{
		saveEverything = true;
		for (int i = 0; i < items.Count; i++)
		{
			SetDirtyObject(items[i]);
		}
	}

	protected abstract void SetDirtyObject(object o);

	protected virtual Type[] GetKnownTypes()
	{
		return null;
	}

	protected virtual void OnClear()
	{
	}

	protected virtual void OnClearComplete()
	{
	}

	protected virtual void OnInsert(int index, object value)
	{
	}

	protected virtual void OnInsertComplete(int index, object value)
	{
	}

	protected virtual void OnRemove(int index, object value)
	{
	}

	protected virtual void OnRemoveComplete(int index, object value)
	{
	}

	protected virtual void OnValidate(object value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
	}

	void IStateManager.LoadViewState(object savedState)
	{
		if (savedState == null)
		{
			foreach (IStateManager item in items)
			{
				item.LoadViewState(null);
			}
			return;
		}
		Triplet obj = (savedState as Triplet) ?? throw new InvalidOperationException("Internal error.");
		List<int> list = obj.First as List<int>;
		List<object> list2 = obj.Second as List<object>;
		List<object> list3 = obj.Third as List<object>;
		saveEverything = list == null;
		if (saveEverything)
		{
			Clear();
			for (int i = 0; i < list2.Count; i++)
			{
				object obj2 = list3[i];
				IStateManager stateManager;
				if (obj2 is Type)
				{
					stateManager = (IStateManager)Activator.CreateInstance((Type)obj2);
				}
				else
				{
					if (!(obj2 is int))
					{
						continue;
					}
					stateManager = (IStateManager)CreateKnownType((int)obj2);
				}
				stateManager.TrackViewState();
				stateManager.LoadViewState(list2[i]);
				((IList)this).Add((object)stateManager);
			}
			return;
		}
		for (int j = 0; j < list.Count; j++)
		{
			int num = list[j];
			IStateManager stateManager;
			if (num < Count)
			{
				stateManager = ((IList)this)[num] as IStateManager;
				stateManager.TrackViewState();
				stateManager.LoadViewState(list2[j]);
				continue;
			}
			object obj2 = list3[j];
			if (obj2 is Type)
			{
				stateManager = (IStateManager)Activator.CreateInstance((Type)obj2);
			}
			else
			{
				if (!(obj2 is int))
				{
					continue;
				}
				stateManager = (IStateManager)CreateKnownType((int)obj2);
			}
			stateManager.TrackViewState();
			stateManager.LoadViewState(list2[j]);
			((IList)this).Add((object)stateManager);
		}
	}

	private void AddListItem<T>(ref List<T> list, T item)
	{
		if (list == null)
		{
			list = new List<T>();
		}
		list.Add(item);
	}

	object IStateManager.SaveViewState()
	{
		Type[] knownTypes = GetKnownTypes();
		bool flag = false;
		bool flag2 = knownTypes != null && knownTypes.Length != 0;
		int count = items.Count;
		List<int> list = null;
		List<object> list2 = null;
		List<object> list3 = null;
		for (int i = 0; i < count; i++)
		{
			if (!(items[i] is IStateManager stateManager))
			{
				continue;
			}
			stateManager.TrackViewState();
			object obj = stateManager.SaveViewState();
			if (saveEverything || obj != null)
			{
				flag = true;
				Type type = stateManager.GetType();
				int num = (flag2 ? Array.IndexOf(knownTypes, type) : (-1));
				if (!saveEverything)
				{
					AddListItem(ref list, i);
				}
				AddListItem(ref list2, obj);
				if (num == -1)
				{
					AddListItem(ref list3, type);
				}
				else
				{
					AddListItem(ref list3, num);
				}
			}
		}
		if (!flag)
		{
			return null;
		}
		return new Triplet(list, list2, list3);
	}

	void IStateManager.TrackViewState()
	{
		isTrackingViewState = true;
		if (items == null || items.Count <= 0)
		{
			return;
		}
		foreach (object item in items)
		{
			if (item is IStateManager stateManager)
			{
				stateManager.TrackViewState();
			}
		}
	}

	public void Clear()
	{
		OnClear();
		items.Clear();
		OnClearComplete();
		if (isTrackingViewState)
		{
			SetDirty();
		}
	}

	public IEnumerator GetEnumerator()
	{
		return items.GetEnumerator();
	}

	public void CopyTo(Array array, int index)
	{
		items.CopyTo(array, index);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}

	int IList.Add(object value)
	{
		OnValidate(value);
		if (isTrackingViewState)
		{
			((IStateManager)value).TrackViewState();
			SetDirtyObject(value);
		}
		OnInsert(-1, value);
		items.Add(value);
		OnInsertComplete(-1, value);
		return Count - 1;
	}

	void IList.Insert(int index, object value)
	{
		OnValidate(value);
		if (isTrackingViewState)
		{
			((IStateManager)value).TrackViewState();
			SetDirty();
		}
		OnInsert(index, value);
		items.Insert(index, value);
		OnInsertComplete(index, value);
	}

	void IList.Remove(object value)
	{
		if (value != null)
		{
			OnValidate(value);
			int num = ((IList)this).IndexOf(value);
			if (num >= 0)
			{
				((IList)this).RemoveAt(num);
			}
		}
	}

	void IList.RemoveAt(int index)
	{
		object value = items[index];
		OnRemove(index, value);
		items.RemoveAt(index);
		OnRemoveComplete(index, value);
		if (isTrackingViewState)
		{
			SetDirty();
		}
	}

	void IList.Clear()
	{
		Clear();
	}

	bool IList.Contains(object value)
	{
		if (value == null)
		{
			return false;
		}
		OnValidate(value);
		return items.Contains(value);
	}

	int IList.IndexOf(object value)
	{
		if (value == null)
		{
			return -1;
		}
		OnValidate(value);
		return items.IndexOf(value);
	}
}
