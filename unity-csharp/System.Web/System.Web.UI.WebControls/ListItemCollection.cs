using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[Editor("System.Web.UI.Design.WebControls.ListItemsCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class ListItemCollection : IList, ICollection, IEnumerable, IStateManager
{
	private ArrayList items;

	private bool tracking;

	private bool dirty;

	private int lastDirty;

	public int Capacity
	{
		get
		{
			return items.Capacity;
		}
		set
		{
			items.Capacity = value;
		}
	}

	public int Count => items.Count;

	public bool IsReadOnly => items.IsReadOnly;

	public bool IsSynchronized => items.IsSynchronized;

	public object SyncRoot => items.SyncRoot;

	public ListItem this[int index] => (ListItem)items[index];

	bool IList.IsFixedSize => items.IsFixedSize;

	object IList.this[int index]
	{
		get
		{
			return this[index];
		}
		set
		{
			if (index >= 0 && index < items.Count)
			{
				items[index] = (ListItem)value;
				if (tracking)
				{
					((ListItem)value).TrackViewState();
				}
			}
		}
	}

	bool IStateManager.IsTrackingViewState => tracking;

	public ListItemCollection()
	{
		items = new ArrayList();
	}

	public void Add(ListItem item)
	{
		items.Add(item);
		if (tracking)
		{
			item.TrackViewState();
			SetDirty();
		}
	}

	public void Add(string item)
	{
		ListItem listItem = new ListItem(item);
		items.Add(listItem);
		if (tracking)
		{
			listItem.TrackViewState();
			SetDirty();
		}
	}

	public void AddRange(ListItem[] items)
	{
		for (int i = 0; i < items.Length; i++)
		{
			Add(items[i]);
			if (tracking)
			{
				items[i].TrackViewState();
				SetDirty();
			}
		}
	}

	public void Clear()
	{
		items.Clear();
		if (tracking)
		{
			SetDirty();
		}
	}

	public bool Contains(ListItem item)
	{
		return items.Contains(item);
	}

	public void CopyTo(Array array, int index)
	{
		items.CopyTo(array, index);
	}

	public ListItem FindByText(string text)
	{
		for (int i = 0; i < items.Count; i++)
		{
			if (text == this[i].Text)
			{
				return this[i];
			}
		}
		return null;
	}

	public ListItem FindByValue(string value)
	{
		for (int i = 0; i < items.Count; i++)
		{
			if (value == this[i].Value)
			{
				return this[i];
			}
		}
		return null;
	}

	public IEnumerator GetEnumerator()
	{
		return items.GetEnumerator();
	}

	public int IndexOf(ListItem item)
	{
		return items.IndexOf(item);
	}

	internal int IndexOf(string value)
	{
		for (int i = 0; i < items.Count; i++)
		{
			if (value == this[i].Value)
			{
				return i;
			}
		}
		return -1;
	}

	public void Insert(int index, ListItem item)
	{
		items.Insert(index, item);
		if (tracking)
		{
			item.TrackViewState();
			lastDirty = index;
			SetDirty();
		}
	}

	public void Insert(int index, string item)
	{
		ListItem listItem = new ListItem(item);
		items.Insert(index, listItem);
		if (tracking)
		{
			listItem.TrackViewState();
			lastDirty = index;
			SetDirty();
		}
	}

	public void Remove(ListItem item)
	{
		items.Remove(item);
		if (tracking)
		{
			SetDirty();
		}
	}

	public void Remove(string item)
	{
		for (int i = 0; i < items.Count; i++)
		{
			if (item == this[i].Value)
			{
				items.RemoveAt(i);
				if (tracking)
				{
					SetDirty();
				}
			}
		}
	}

	public void RemoveAt(int index)
	{
		items.RemoveAt(index);
		if (tracking)
		{
			SetDirty();
		}
	}

	int IList.Add(object value)
	{
		int result = items.Add((ListItem)value);
		if (tracking)
		{
			((IStateManager)value).TrackViewState();
			SetDirty();
		}
		return result;
	}

	bool IList.Contains(object value)
	{
		return Contains((ListItem)value);
	}

	int IList.IndexOf(object value)
	{
		return IndexOf((ListItem)value);
	}

	void IList.Insert(int index, object value)
	{
		Insert(index, (ListItem)value);
	}

	void IList.Remove(object value)
	{
		Remove((ListItem)value);
	}

	void IStateManager.LoadViewState(object savedState)
	{
		if (!(savedState is Pair pair))
		{
			return;
		}
		bool flag = (bool)pair.First;
		object[] array = (object[])pair.Second;
		int num = array?.Length ?? 0;
		if (flag)
		{
			if (num > 0)
			{
				items = new ArrayList(num);
			}
			else
			{
				items = new ArrayList();
			}
		}
		for (int i = 0; i < num; i++)
		{
			ListItem listItem = new ListItem();
			if (flag)
			{
				listItem.LoadViewState(array[i]);
				listItem.SetDirty();
				Add(listItem);
			}
			else if (array[i] != null)
			{
				listItem.LoadViewState(array[i]);
				listItem.SetDirty();
				items[i] = listItem;
			}
		}
	}

	object IStateManager.SaveViewState()
	{
		bool flag = false;
		int count = items.Count;
		if (count == 0 && !dirty)
		{
			return null;
		}
		object[] array = null;
		if (count > 0)
		{
			array = new object[count];
		}
		for (int i = 0; i < count; i++)
		{
			array[i] = ((IStateManager)items[i]).SaveViewState();
			if (array[i] != null)
			{
				flag = true;
			}
		}
		if (!dirty && !flag)
		{
			return null;
		}
		return new Pair(dirty, array);
	}

	void IStateManager.TrackViewState()
	{
		tracking = true;
		for (int i = 0; i < items.Count; i++)
		{
			((ListItem)items[i]).TrackViewState();
		}
	}

	private void SetDirty()
	{
		dirty = true;
		for (int i = lastDirty; i < items.Count; i++)
		{
			((ListItem)items[i]).SetDirty();
		}
		lastDirty = items.Count - 1;
		if (lastDirty < 0)
		{
			lastDirty = 0;
		}
	}
}
