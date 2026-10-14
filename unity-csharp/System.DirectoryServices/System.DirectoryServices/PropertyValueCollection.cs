using System.Collections;
using Unity;

namespace System.DirectoryServices;

public class PropertyValueCollection : CollectionBase
{
	private bool _Mbit;

	private DirectoryEntry _parent;

	internal bool Mbit
	{
		get
		{
			return _Mbit;
		}
		set
		{
			_Mbit = value;
		}
	}

	public object this[int index]
	{
		get
		{
			return List[index];
		}
		set
		{
			List[index] = value;
			_Mbit = true;
		}
	}

	[MonoTODO]
	public string PropertyName => string.Empty;

	public object Value
	{
		get
		{
			switch (Count)
			{
			case 0:
				return null;
			case 1:
				return List[0];
			default:
			{
				Array array = new object[Count];
				for (int i = array.GetLowerBound(0); i <= array.GetUpperBound(0); i++)
				{
					array.SetValue(List[i], i);
				}
				return array;
			}
			}
		}
		set
		{
			if (value != null || List.Count != 0)
			{
				List.Clear();
				if (value != null)
				{
					Add(value);
				}
				_Mbit = true;
			}
		}
	}

	internal PropertyValueCollection(DirectoryEntry parent)
	{
		_Mbit = false;
		_parent = parent;
	}

	public int Add(object value)
	{
		if (Contains(value))
		{
			return -1;
		}
		_Mbit = true;
		return List.Add(value);
	}

	public void AddRange(object[] value)
	{
		foreach (object value2 in value)
		{
			Add(value2);
		}
	}

	public void AddRange(PropertyValueCollection value)
	{
		foreach (object item in value)
		{
			Add(item);
		}
	}

	public int IndexOf(object value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, object value)
	{
		List.Insert(index, value);
		_Mbit = true;
	}

	public void Remove(object value)
	{
		List.Remove(value);
		_Mbit = true;
	}

	public bool Contains(object value)
	{
		return List.Contains(value);
	}

	internal bool ContainsCaselessStringValue(string value)
	{
		for (int i = 0; i < Count; i++)
		{
			string strB = (string)List[i];
			if (string.Compare(value, strB, ignoreCase: true) == 0)
			{
				return true;
			}
		}
		return false;
	}

	public void CopyTo(object[] array, int index)
	{
		foreach (object item in List)
		{
			array[index++] = item;
		}
	}

	[MonoTODO]
	protected override void OnClearComplete()
	{
		if (_parent != null)
		{
			_parent.CommitDeferred();
		}
	}

	[MonoTODO]
	protected override void OnInsertComplete(int index, object value)
	{
		if (_parent != null)
		{
			_parent.CommitDeferred();
		}
	}

	[MonoTODO]
	protected override void OnRemoveComplete(int index, object value)
	{
		if (_parent != null)
		{
			_parent.CommitDeferred();
		}
	}

	[MonoTODO]
	protected override void OnSetComplete(int index, object oldValue, object newValue)
	{
		if (_parent != null)
		{
			_parent.CommitDeferred();
		}
	}

	internal PropertyValueCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
