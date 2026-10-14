using System.Collections;
using System.Collections.Specialized;

namespace System.Web.UI.WebControls;

public class DataKey : IStateManager, IEquatable<DataKey>
{
	private IOrderedDictionary keyTable;

	private string[] keyNames;

	private bool trackViewState;

	private IOrderedDictionary readonlyKeyTable;

	public virtual object this[int index] => keyTable[index];

	public virtual object this[string name] => keyTable[name];

	public virtual object Value
	{
		get
		{
			if (keyTable.Count == 0)
			{
				return null;
			}
			return keyTable[0];
		}
	}

	public virtual IOrderedDictionary Values
	{
		get
		{
			if (readonlyKeyTable == null)
			{
				if (keyTable is OrderedDictionary)
				{
					readonlyKeyTable = ((OrderedDictionary)keyTable).AsReadOnly();
				}
				else
				{
					readonlyKeyTable = keyTable;
				}
			}
			return readonlyKeyTable;
		}
	}

	protected virtual bool IsTrackingViewState => trackViewState;

	bool IStateManager.IsTrackingViewState => IsTrackingViewState;

	public DataKey(IOrderedDictionary keyTable)
		: this(keyTable, null)
	{
	}

	public DataKey(IOrderedDictionary keyTable, string[] keyNames)
	{
		this.keyTable = keyTable;
		this.keyNames = keyNames;
	}

	public bool Equals(DataKey other)
	{
		if (other == null)
		{
			return false;
		}
		IOrderedDictionary orderedDictionary = other.keyTable;
		if (keyTable != null && orderedDictionary != null)
		{
			if (keyTable.Count != orderedDictionary.Count)
			{
				return false;
			}
			foreach (object key in keyTable.Keys)
			{
				if (!orderedDictionary.Contains(key))
				{
					return false;
				}
				object obj = keyTable[key];
				object obj2 = orderedDictionary[key];
				if ((obj == null) ^ (obj2 == null))
				{
					return false;
				}
				if (!obj.Equals(obj2))
				{
					return false;
				}
			}
		}
		string[] array = other.keyNames;
		if (keyNames != null && array != null)
		{
			int num = keyNames.Length;
			if (num != array.Length)
			{
				return false;
			}
			for (int i = 0; i < num; i++)
			{
				if (string.Compare(keyNames[i], array[i], StringComparison.Ordinal) != 0)
				{
					return false;
				}
			}
		}
		else if ((keyNames == null) ^ (array == null))
		{
			return false;
		}
		return true;
	}

	protected virtual void LoadViewState(object state)
	{
		if (state is Pair)
		{
			Pair pair = (Pair)state;
			object[] array = (object[])pair.First;
			object[] array2 = (object[])pair.Second;
			for (int i = 0; i < array.Length; i++)
			{
				keyTable[array[i]] = array2[i];
			}
		}
		else if (state is object[])
		{
			object[] array3 = (object[])state;
			for (int j = 0; j < array3.Length; j++)
			{
				keyTable[keyNames[j]] = array3[j];
			}
		}
	}

	protected virtual object SaveViewState()
	{
		if (keyTable.Count == 0)
		{
			return null;
		}
		if (keyNames != null)
		{
			object[] array = new object[keyTable.Count];
			int num = 0;
			{
				foreach (object value in keyTable.Values)
				{
					array[num++] = value;
				}
				return array;
			}
		}
		object[] array2 = new object[keyTable.Count];
		object[] array3 = new object[keyTable.Count];
		int num2 = 0;
		foreach (DictionaryEntry item in keyTable)
		{
			array3[num2] = item.Key;
			array2[num2++] = item.Value;
		}
		return new Pair(array3, array2);
	}

	protected virtual void TrackViewState()
	{
		trackViewState = true;
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
}
