using System.Collections;

namespace System.Web.UI.WebControls;

public sealed class MenuItemCollection : ICollection, IEnumerable, IStateManager
{
	private ArrayList items = new ArrayList();

	private Menu menu;

	private MenuItem parent;

	private bool marked;

	private bool dirty;

	public MenuItem this[int index] => (MenuItem)items[index];

	public int Count => items.Count;

	public bool IsSynchronized => false;

	public object SyncRoot => items;

	bool IStateManager.IsTrackingViewState => marked;

	public MenuItemCollection()
	{
	}

	public MenuItemCollection(MenuItem owner)
	{
		parent = owner;
		menu = owner.Menu;
	}

	internal MenuItemCollection(Menu menu)
	{
		this.menu = menu;
	}

	internal void SetMenu(Menu menu)
	{
		this.menu = menu;
		foreach (MenuItem item in items)
		{
			item.Menu = menu;
		}
	}

	public void Add(MenuItem child)
	{
		child.Index = items.Add(child);
		child.Menu = menu;
		child.SetParent(parent);
		if (marked)
		{
			((IStateManager)child).TrackViewState();
			SetDirty();
		}
	}

	internal void SetDirty()
	{
		for (int i = 0; i < Count; i++)
		{
			this[i].SetDirty();
		}
		dirty = true;
	}

	public void AddAt(int index, MenuItem child)
	{
		items.Insert(index, child);
		child.Index = index;
		child.Menu = menu;
		child.SetParent(parent);
		for (int i = index + 1; i < items.Count; i++)
		{
			((MenuItem)items[i]).Index = i;
		}
		if (marked)
		{
			((IStateManager)child).TrackViewState();
			SetDirty();
		}
	}

	public void Clear()
	{
		if (menu != null || parent != null)
		{
			foreach (MenuItem item in items)
			{
				item.Menu = null;
				item.SetParent(null);
			}
		}
		items.Clear();
		if (marked)
		{
			SetDirty();
		}
	}

	public bool Contains(MenuItem c)
	{
		return items.Contains(c);
	}

	public void CopyTo(Array array, int index)
	{
		items.CopyTo(array, index);
	}

	public void CopyTo(MenuItem[] array, int index)
	{
		items.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return items.GetEnumerator();
	}

	public int IndexOf(MenuItem value)
	{
		return items.IndexOf(value);
	}

	public void Remove(MenuItem value)
	{
		int num = IndexOf(value);
		if (num != -1)
		{
			items.RemoveAt(num);
			if (menu != null)
			{
				value.Menu = null;
			}
			if (marked)
			{
				SetDirty();
			}
		}
	}

	public void RemoveAt(int index)
	{
		MenuItem menuItem = (MenuItem)items[index];
		items.RemoveAt(index);
		if (menu != null)
		{
			menuItem.Menu = null;
		}
		if (marked)
		{
			SetDirty();
		}
	}

	void ICollection.CopyTo(Array array, int index)
	{
		items.CopyTo(array, index);
	}

	void IStateManager.LoadViewState(object state)
	{
		if (state == null)
		{
			return;
		}
		object[] array = (object[])state;
		dirty = (bool)array[0];
		if (dirty)
		{
			items.Clear();
			for (int i = 1; i < array.Length; i++)
			{
				MenuItem menuItem = new MenuItem();
				Add(menuItem);
				object obj = array[i];
				if (obj != null)
				{
					((IStateManager)menuItem).LoadViewState(obj);
				}
			}
		}
		else
		{
			for (int j = 1; j < array.Length; j++)
			{
				Pair pair = (Pair)array[j];
				int index = (int)pair.First;
				((IStateManager)(MenuItem)items[index]).LoadViewState(pair.Second);
			}
		}
	}

	object IStateManager.SaveViewState()
	{
		object[] array = null;
		bool flag = false;
		if (dirty)
		{
			if (items.Count > 0)
			{
				flag = true;
				array = new object[items.Count + 1];
				array[0] = true;
				for (int i = 0; i < items.Count; i++)
				{
					object obj = ((IStateManager)(items[i] as MenuItem)).SaveViewState();
					array[i + 1] = obj;
				}
			}
		}
		else
		{
			ArrayList arrayList = new ArrayList();
			for (int j = 0; j < items.Count; j++)
			{
				object obj2 = ((IStateManager)(items[j] as MenuItem)).SaveViewState();
				if (obj2 != null)
				{
					flag = true;
					arrayList.Add(new Pair(j, obj2));
				}
			}
			if (flag)
			{
				arrayList.Insert(0, false);
				array = arrayList.ToArray();
			}
		}
		if (flag)
		{
			return array;
		}
		return null;
	}

	void IStateManager.TrackViewState()
	{
		marked = true;
		for (int i = 0; i < items.Count; i++)
		{
			((IStateManager)items[i]).TrackViewState();
		}
	}
}
