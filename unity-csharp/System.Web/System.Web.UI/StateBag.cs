using System.Collections;
using System.Collections.Specialized;
using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class StateBag : IDictionary, ICollection, IEnumerable, IStateManager
{
	private HybridDictionary ht;

	private bool track;

	bool IStateManager.IsTrackingViewState => track;

	internal bool IsTrackingViewState => track;

	public int Count => ht.Count;

	public object this[string key]
	{
		get
		{
			if (ht[key] is StateItem stateItem)
			{
				return stateItem.Value;
			}
			return null;
		}
		set
		{
			if (value == null && !IsTrackingViewState)
			{
				Remove(key);
			}
			else
			{
				Add(key, value);
			}
		}
	}

	public ICollection Keys => ht.Keys;

	public ICollection Values => ht.Values;

	bool ICollection.IsSynchronized => false;

	object ICollection.SyncRoot => ht;

	object IDictionary.this[object key]
	{
		get
		{
			return this[(string)key];
		}
		set
		{
			this[(string)key] = value;
		}
	}

	bool IDictionary.IsFixedSize => false;

	bool IDictionary.IsReadOnly => false;

	public StateBag(bool ignoreCase)
	{
		ht = new HybridDictionary(ignoreCase);
	}

	public StateBag()
		: this(ignoreCase: false)
	{
	}

	void IStateManager.LoadViewState(object savedState)
	{
		LoadViewState(savedState);
	}

	object IStateManager.SaveViewState()
	{
		return SaveViewState();
	}

	void IStateManager.TrackViewState()
	{
		TrackViewState();
	}

	internal void LoadViewState(object savedState)
	{
		if (savedState == null)
		{
			return;
		}
		foreach (DictionaryEntry item in (Hashtable)savedState)
		{
			Add((string)item.Key, item.Value);
		}
	}

	internal object SaveViewState()
	{
		Hashtable hashtable = null;
		foreach (DictionaryEntry item in ht)
		{
			StateItem stateItem = (StateItem)item.Value;
			if (stateItem.IsDirty)
			{
				if (hashtable == null)
				{
					hashtable = new Hashtable();
				}
				hashtable.Add(item.Key, stateItem.Value);
			}
		}
		return hashtable;
	}

	internal void TrackViewState()
	{
		track = true;
	}

	public StateItem Add(string key, object value)
	{
		StateItem stateItem = ht[key] as StateItem;
		if (stateItem == null)
		{
			stateItem = (StateItem)(ht[key] = new StateItem(value));
		}
		stateItem.Value = value;
		stateItem.IsDirty |= track;
		return stateItem;
	}

	internal string GetString(string key, string def)
	{
		string text = (string)this[key];
		if (text != null)
		{
			return text;
		}
		return def;
	}

	internal bool GetBool(string key, bool def)
	{
		object obj = this[key];
		if (obj != null)
		{
			return (bool)obj;
		}
		return def;
	}

	internal char GetChar(string key, char def)
	{
		object obj = this[key];
		if (obj != null)
		{
			return (char)obj;
		}
		return def;
	}

	internal int GetInt(string key, int def)
	{
		object obj = this[key];
		if (obj != null)
		{
			return (int)obj;
		}
		return def;
	}

	internal short GetShort(string key, short def)
	{
		object obj = this[key];
		if (obj != null)
		{
			return (short)obj;
		}
		return def;
	}

	public void Clear()
	{
		ht.Clear();
	}

	public IDictionaryEnumerator GetEnumerator()
	{
		return ht.GetEnumerator();
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}

	public bool IsItemDirty(string key)
	{
		if (ht[key] is StateItem stateItem)
		{
			return stateItem.IsDirty;
		}
		return false;
	}

	public void Remove(string key)
	{
		ht.Remove(key);
	}

	public void SetItemDirty(string key, bool dirty)
	{
		StateItem stateItem = (StateItem)ht[key];
		if (stateItem != null)
		{
			stateItem.IsDirty = dirty;
		}
	}

	void IDictionary.Add(object key, object value)
	{
		Add((string)key, value);
	}

	void IDictionary.Remove(object key)
	{
		Remove((string)key);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		ht.CopyTo(array, index);
	}

	bool IDictionary.Contains(object key)
	{
		return ht.Contains(key);
	}

	public void SetDirty(bool dirty)
	{
		foreach (DictionaryEntry item in ht)
		{
			((StateItem)item.Value).IsDirty = dirty;
		}
	}
}
